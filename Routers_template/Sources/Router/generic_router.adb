--
--  Framework: Uwe R. Zimmer, Australia, 2015
--

with Exceptions; use Exceptions;

package body Generic_Router is

   task body Router_Task is

      Connected_Routers : Ids_To_Links;

   begin

      accept Configure (Links : Ids_To_Links) do
         Connected_Routers := Links;
      end Configure;

      declare
         Port_List : constant Connected_Router_Ports := To_Router_Ports (Task_Id, Connected_Routers);
         Routertable : Messages_routertables;

         intermessage : Messages_inter;
         Message_required : Messages_Mailbox;
         Routertable_received : Messages_routertables;

         -- implement a queue to store received information;
         type marker is new Positive range 1 .. 1000;
         type Mailbox is array (marker) of Messages_Mailbox;
         type Queue_type is record
            Top, Free : marker := marker'First;
            intermessages : Mailbox;
            Is_empty : Boolean := True;
         end record;

         function Empty (Queue : Queue_type) return Boolean  is (Queue.Is_empty);

         procedure Enqueue (Message_enqueue : Messages_Mailbox; Queue : in out Queue_type) is
         begin
            Queue.intermessages (Queue.Free) := Message_enqueue;
            Queue.Free := Queue.Free + 1;
            Queue.Is_empty := False;
         end Enqueue;

         procedure Dequeue (Message_dequeue : out Messages_Mailbox; Queue : in out Queue_type)  is
         begin
            Message_dequeue := Queue.intermessages (Queue.Top);
            Queue.Top := Queue.Top + 1;
            Queue.Is_empty := Queue.Top = Queue.Free;
         end Dequeue;

         Queue : Queue_type;

         -- broadcast is used to forward the routing table
         task broadcast;
         task body broadcast is
         begin
            ----initialize its own routertable;
            for Router_id in Router_Range loop
               Routertable (Router_id).Destination := Router_id;
               Routertable (Router_id).Sender := Task_Id;
            end loop;

            for Port_Id in Port_List'Range loop
               for Router_id in Router_Range loop
                  if Routertable (Router_id).Destination = Port_List (Port_Id).Id then
                     Routertable (Router_id).Distance := 1;
                     Routertable (Router_id).Next_Router := Port_List (Port_Id).Id;
                  end if;
                  end loop;
            end loop;


            Routertable_received := Routertable;

            ---it is a useful but inefficient solution to forward the routertable
            ---if the size of Mesh is larger than 5, the time of loop needs to increase.
           for i in Router_Range loop
            for Port_Id in Port_List'Range loop
               Port_List (Port_Id).Link.all.Exchangeroutertable (Routertable_received);
            end loop;
           end loop;
         end broadcast;

      begin
          --- the solution is routing information protocol based on distance vector algorithm
         loop
            select
               accept Exchangeroutertable (Message : Messages_routertables) do  -- when the router receives the routing table from others,
                  for Message_Id in Router_Range loop                     -- if destinations are the same, when distance + 1 less than the distance in myself routing table,
                     if Message (Message_Id).Distance /= Positive'Invalid_Value and  Message (Message_Id).Destination /= Task_Id then  -- the routing table is updated.
                        for Router_id in Router_Range loop
                           if Routertable (Router_id).Destination = Message (Message_Id).Destination then
                              if Routertable (Router_id).Distance = Positive'Invalid_Value then
                                 Routertable (Router_id).Next_Router := Message (Message_Id).Sender;
                                 Routertable (Router_id).Distance := Message (Message_Id).Distance + 1;
                              elsif  Message (Message_Id).Distance + 1 < Routertable (Router_id).Distance then
                                 Routertable (Router_id).Next_Router := Message (Message_Id).Sender;
                                 Routertable (Router_id).Distance := Message (Message_Id).Distance + 1;
                              end if;
                           end if;
                        end loop;
                     end if;
                  end loop;
                  Routertable_received := Routertable;
               end Exchangeroutertable;

           or

               accept Send_Message (Message : in Messages_Client) do
                  intermessage.The_Message := Message.The_Message;
                  intermessage.Destination := Message.Destination;
                  intermessage.Sender := Task_Id;
                  for Router_id in Router_Range loop
                     if Routertable (Router_id).Destination = Message.Destination then
                        intermessage.Hop_Counter := Routertable (Router_id).Distance;
                        for Port_id in Port_List'Range loop
                           if Port_List (Port_id).Id = Routertable (Router_id).Next_Router then
                              Port_List (Port_id).Link.all.Receive_intermessage (intermessage);
                              exit;
                           end if;
                        end loop;
                        exit;
                     end if;
                  end loop;
               end Send_Message;

            or

               accept Receive_intermessage (Message : in Messages_inter) do
                  if Message.Destination /= Task_Id then
                     for Router_id in Router_Range loop
                        if Message.Destination = Routertable (Router_id).Destination then
                           for Port_id in Port_List'Range loop
                              if Routertable (Router_id).Next_Router = Port_List (Port_id).Id then
                                 Port_List (Port_id).Link.all.Receive_intermessage (Message);
                                 exit;
                              end if;
                           end loop;
                        end if;
                     end loop;
                  else
                     Message_required.Sender := Message.Sender;
                     Message_required.Hop_Counter := Message.Hop_Counter;
                     Message_required.The_Message := Message.The_Message;
                     Enqueue (Message_required, Queue);
                  end if;
               end Receive_intermessage;

            or
               ----only when the queue is not empty , it can be called
                  when not Empty (Queue) => accept  Receive_Message (Message : out Messages_Mailbox) do
                     Dequeue (Message, Queue);
                  end Receive_Message;
            or
               delay 0.0;
               -- delay 0.0 is used to check the accept state all the time.

               --  Replace the following accept with the code of your router
               -- (and place this accept somewhere more apporpriate)

               --
            or
               accept Shutdown;
                  exit;
            end select;
         end loop;
      end;

   exception
      when Exception_Id : others => Show_Exception (Exception_Id);
   end Router_Task;

end Generic_Router;
