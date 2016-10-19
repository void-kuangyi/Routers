--
--  Uwe R. Zimmer, Australia, September 2011
--

with Generic_Router;

generic

   with package Router is new Generic_Router (<>);

package Generic_Routers is

   use Router;
   use Message_Structures;
   use Routers_Configuration;

   Router_Tasks : array (Router_Range) of aliased Router_Task;

   Routers_Configured : Boolean := True; -- potentially set to False if the body does not successfully elaborate

   procedure Global_Shutdown;

end Generic_Routers;
