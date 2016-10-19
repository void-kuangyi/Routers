pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_routers.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_routers.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E082 : Short_Integer; pragma Import (Ada, E082, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "system__fat_flt_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "system__fat_llf_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__io_exceptions_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "ada__strings_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "ada__strings__maps_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "ada__strings__maps__constants_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "ada__tags_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__streams_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "interfaces__c_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "system__file_control_block_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__file_io_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__finalization_root_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "ada__finalization_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "system__storage_pools_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "system__finalization_masters_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__storage_pools__subpools_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "gnat__directory_operations_E");
   E243 : Short_Integer; pragma Import (Ada, E243, "system__pool_global_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "ada__strings__unbounded_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "system__regexp_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "gnat__command_line_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "system__tasking__initialization_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__real_time_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__text_io_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "system__tasking__protected_objects_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "system__tasking__protected_objects__entries_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "system__tasking__queuing_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "system__tasking__stages_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "exceptions_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "generic_router_links_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "id_dispenser_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "topologies_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "routers_configuration_structures_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "generic_router_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "generic_routers_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "topologies__finalize_body");
      begin
         E204 := E204 - 1;
         F1;
      end;
      E194 := E194 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E055 := E055 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E250 := E250 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__regexp__finalize_spec");
      begin
         F4;
      end;
      E234 := E234 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__strings__unbounded__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E076 := E076 - 1;
         F6;
      end;
      E210 := E210 - 1;
      E208 := E208 - 1;
      E243 := E243 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__pool_global__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__storage_pools__subpools__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__finalization_masters__finalize_spec");
      begin
         F9;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, True, False, True, True, False, False, False, 
           False, False, True, True, True, True, False, False, 
           True, True, False, True, True, False, True, True, 
           False, True, True, True, True, False, True, True, 
           False, True, False, True, True, False, True, False, 
           True, True, False, True, False, True, True, False, 
           False, True, False, False, False, False, True, False, 
           True, False, True, True, True, False, False, True, 
           False, False, True, False, True, True, False, True, 
           True, True, False, True, False, False, False, False, 
           True, True, True, False, True, False),
         Count => (0, 0, 0, 0, 6, 6, 1, 0, 2, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      System.Scalar_Values.Initialize ('I', 'N');

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Fat_Flt'Elab_Spec;
      E104 := E104 + 1;
      System.Fat_Llf'Elab_Spec;
      E092 := E092 + 1;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E058 := E058 + 1;
      Ada.Strings'Elab_Spec;
      E156 := E156 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E232 := E232 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E057 := E057 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.File_Control_Block'Elab_Spec;
      E085 := E085 + 1;
      System.Finalization_Root'Elab_Spec;
      E080 := E080 + 1;
      Ada.Finalization'Elab_Spec;
      E078 := E078 + 1;
      System.Storage_Pools'Elab_Spec;
      E214 := E214 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E243 := E243 + 1;
      E208 := E208 + 1;
      System.Finalization_Masters'Elab_Body;
      E210 := E210 + 1;
      System.File_Io'Elab_Body;
      E076 := E076 + 1;
      E047 := E047 + 1;
      Ada.Tags'Elab_Body;
      E060 := E060 + 1;
      E160 := E160 + 1;
      System.Soft_Links'Elab_Body;
      E015 := E015 + 1;
      System.Os_Lib'Elab_Body;
      E082 := E082 + 1;
      System.Secondary_Stack'Elab_Body;
      E019 := E019 + 1;
      Gnat.Directory_Operations'Elab_Body;
      E238 := E238 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E234 := E234 + 1;
      System.Regexp'Elab_Spec;
      E250 := E250 + 1;
      Gnat.Command_Line'Elab_Spec;
      System.Tasking.Initialization'Elab_Body;
      E182 := E182 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E126 := E126 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E055 := E055 + 1;
      Gnat.Command_Line'Elab_Body;
      E229 := E229 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E192 := E192 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E194 := E194 + 1;
      System.Tasking.Queuing'Elab_Body;
      E190 := E190 + 1;
      System.Tasking.Stages'Elab_Body;
      E263 := E263 + 1;
      E174 := E174 + 1;
      E222 := E222 + 1;
      E224 := E224 + 1;
      Topologies'Elab_Spec;
      Topologies'Elab_Body;
      E204 := E204 + 1;
      E202 := E202 + 1;
      E220 := E220 + 1;
      E226 := E226 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_routers");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/exceptions.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/generic_router_links.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/id_dispenser.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/topologies.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/routers_configuration_structures.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/generic_routers_configuration.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/generic_message_structures.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/generic_router.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/generic_routers.o
   --   /Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/test_routers.o
   --   -L/Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/
   --   -L/Users/Jasmine/Desktop/2310/2310assignment/assignment2/Routers_template/Objects/
   --   -L/users/jasmine/downloads/x86_64-darwin/adagpl-2015/gnatgpl/gnat-gpl-2015-x86_64-darwin-bin/lib/gcc/x86_64-apple-darwin13.4.0/4.9.3/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
