pragma Ada_95;
with System;
with System.Scalar_Values;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2015 (20150428-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_test_routers" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#f96a1289#;
   pragma Export (C, u00001, "test_routersB");
   u00002 : constant Version_32 := 16#fbff4c67#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#13e2b8e6#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#030467d8#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#46a66b2f#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#649a98f6#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#e67a5d0a#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#2130723f#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#f9d4899e#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#a46739c0#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#3aac8c92#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#100301f7#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#a207fefe#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#4b59d020#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#6e290c88#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#b19b6653#;
   pragma Export (C, u00018, "system__secondary_stackB");
   u00019 : constant Version_32 := 16#bb62ce9e#;
   pragma Export (C, u00019, "system__secondary_stackS");
   u00020 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#3dc04bf3#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#9ebc6a1f#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#393398c1#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#be1a67e2#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#78606c01#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#37d758f1#;
   pragma Export (C, u00028, "system__exceptions__machineS");
   u00029 : constant Version_32 := 16#b895431d#;
   pragma Export (C, u00029, "system__exceptions_debugB");
   u00030 : constant Version_32 := 16#a3e11849#;
   pragma Export (C, u00030, "system__exceptions_debugS");
   u00031 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00031, "system__img_intB");
   u00032 : constant Version_32 := 16#12d8e135#;
   pragma Export (C, u00032, "system__img_intS");
   u00033 : constant Version_32 := 16#b98c3e16#;
   pragma Export (C, u00033, "system__tracebackB");
   u00034 : constant Version_32 := 16#8e3ed82c#;
   pragma Export (C, u00034, "system__tracebackS");
   u00035 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00035, "system__traceback_entriesB");
   u00036 : constant Version_32 := 16#1058f787#;
   pragma Export (C, u00036, "system__traceback_entriesS");
   u00037 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00037, "system__wch_conB");
   u00038 : constant Version_32 := 16#0b7e2325#;
   pragma Export (C, u00038, "system__wch_conS");
   u00039 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00039, "system__wch_stwB");
   u00040 : constant Version_32 := 16#266f0f24#;
   pragma Export (C, u00040, "system__wch_stwS");
   u00041 : constant Version_32 := 16#92b797cb#;
   pragma Export (C, u00041, "system__wch_cnvB");
   u00042 : constant Version_32 := 16#04c999d6#;
   pragma Export (C, u00042, "system__wch_cnvS");
   u00043 : constant Version_32 := 16#6033a23f#;
   pragma Export (C, u00043, "interfacesS");
   u00044 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00044, "system__wch_jisB");
   u00045 : constant Version_32 := 16#84b980f7#;
   pragma Export (C, u00045, "system__wch_jisS");
   u00046 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00046, "interfaces__cB");
   u00047 : constant Version_32 := 16#4a38bedb#;
   pragma Export (C, u00047, "interfaces__cS");
   u00048 : constant Version_32 := 16#820eb304#;
   pragma Export (C, u00048, "system__os_primitivesB");
   u00049 : constant Version_32 := 16#a0d28dde#;
   pragma Export (C, u00049, "system__os_primitivesS");
   u00050 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00050, "system__tracesB");
   u00051 : constant Version_32 := 16#e21e695d#;
   pragma Export (C, u00051, "system__tracesS");
   u00052 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00052, "ada__float_text_ioB");
   u00053 : constant Version_32 := 16#e61b3c6c#;
   pragma Export (C, u00053, "ada__float_text_ioS");
   u00054 : constant Version_32 := 16#28f088c2#;
   pragma Export (C, u00054, "ada__text_ioB");
   u00055 : constant Version_32 := 16#fe568dda#;
   pragma Export (C, u00055, "ada__text_ioS");
   u00056 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00056, "ada__streamsB");
   u00057 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00057, "ada__streamsS");
   u00058 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00058, "ada__io_exceptionsS");
   u00059 : constant Version_32 := 16#12c8cd7d#;
   pragma Export (C, u00059, "ada__tagsB");
   u00060 : constant Version_32 := 16#ce72c228#;
   pragma Export (C, u00060, "ada__tagsS");
   u00061 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00061, "system__htableB");
   u00062 : constant Version_32 := 16#94c1b21d#;
   pragma Export (C, u00062, "system__htableS");
   u00063 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00063, "system__string_hashB");
   u00064 : constant Version_32 := 16#369fd963#;
   pragma Export (C, u00064, "system__string_hashS");
   u00065 : constant Version_32 := 16#8d5ba537#;
   pragma Export (C, u00065, "system__unsigned_typesS");
   u00066 : constant Version_32 := 16#06052bd0#;
   pragma Export (C, u00066, "system__val_lluB");
   u00067 : constant Version_32 := 16#f7a9f245#;
   pragma Export (C, u00067, "system__val_lluS");
   u00068 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00068, "system__val_utilB");
   u00069 : constant Version_32 := 16#bca3b709#;
   pragma Export (C, u00069, "system__val_utilS");
   u00070 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00070, "system__case_utilB");
   u00071 : constant Version_32 := 16#340a6820#;
   pragma Export (C, u00071, "system__case_utilS");
   u00072 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00072, "interfaces__c_streamsB");
   u00073 : constant Version_32 := 16#8bb5f2c0#;
   pragma Export (C, u00073, "interfaces__c_streamsS");
   u00074 : constant Version_32 := 16#6092d7f9#;
   pragma Export (C, u00074, "system__crtlS");
   u00075 : constant Version_32 := 16#431faf3c#;
   pragma Export (C, u00075, "system__file_ioB");
   u00076 : constant Version_32 := 16#b772e092#;
   pragma Export (C, u00076, "system__file_ioS");
   u00077 : constant Version_32 := 16#b7ab275c#;
   pragma Export (C, u00077, "ada__finalizationB");
   u00078 : constant Version_32 := 16#19f764ca#;
   pragma Export (C, u00078, "ada__finalizationS");
   u00079 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00079, "system__finalization_rootB");
   u00080 : constant Version_32 := 16#5ff17267#;
   pragma Export (C, u00080, "system__finalization_rootS");
   u00081 : constant Version_32 := 16#0ac2ab10#;
   pragma Export (C, u00081, "system__os_libB");
   u00082 : constant Version_32 := 16#d7b69782#;
   pragma Export (C, u00082, "system__os_libS");
   u00083 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00083, "system__stringsB");
   u00084 : constant Version_32 := 16#6ebc1091#;
   pragma Export (C, u00084, "system__stringsS");
   u00085 : constant Version_32 := 16#ed9c9b5f#;
   pragma Export (C, u00085, "system__file_control_blockS");
   u00086 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00086, "ada__text_io__float_auxB");
   u00087 : constant Version_32 := 16#f854caf5#;
   pragma Export (C, u00087, "ada__text_io__float_auxS");
   u00088 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00088, "ada__text_io__generic_auxB");
   u00089 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00089, "ada__text_io__generic_auxS");
   u00090 : constant Version_32 := 16#f0df9003#;
   pragma Export (C, u00090, "system__img_realB");
   u00091 : constant Version_32 := 16#d7ab5015#;
   pragma Export (C, u00091, "system__img_realS");
   u00092 : constant Version_32 := 16#1494ba04#;
   pragma Export (C, u00092, "system__fat_llfS");
   u00093 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00093, "system__float_controlB");
   u00094 : constant Version_32 := 16#f0ff42cb#;
   pragma Export (C, u00094, "system__float_controlS");
   u00095 : constant Version_32 := 16#f1f88835#;
   pragma Export (C, u00095, "system__img_lluB");
   u00096 : constant Version_32 := 16#c492a5f4#;
   pragma Export (C, u00096, "system__img_lluS");
   u00097 : constant Version_32 := 16#eef535cd#;
   pragma Export (C, u00097, "system__img_unsB");
   u00098 : constant Version_32 := 16#12af99c0#;
   pragma Export (C, u00098, "system__img_unsS");
   u00099 : constant Version_32 := 16#40736780#;
   pragma Export (C, u00099, "system__powten_tableS");
   u00100 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00100, "system__val_realB");
   u00101 : constant Version_32 := 16#ee2a76e6#;
   pragma Export (C, u00101, "system__val_realS");
   u00102 : constant Version_32 := 16#6c05c057#;
   pragma Export (C, u00102, "system__exn_llfB");
   u00103 : constant Version_32 := 16#ac7dba2b#;
   pragma Export (C, u00103, "system__exn_llfS");
   u00104 : constant Version_32 := 16#48761de3#;
   pragma Export (C, u00104, "system__fat_fltS");
   u00105 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00105, "ada__integer_text_ioB");
   u00106 : constant Version_32 := 16#f1daf268#;
   pragma Export (C, u00106, "ada__integer_text_ioS");
   u00107 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00107, "ada__text_io__integer_auxB");
   u00108 : constant Version_32 := 16#b9793d30#;
   pragma Export (C, u00108, "ada__text_io__integer_auxS");
   u00109 : constant Version_32 := 16#18d57884#;
   pragma Export (C, u00109, "system__img_biuB");
   u00110 : constant Version_32 := 16#4b792d7a#;
   pragma Export (C, u00110, "system__img_biuS");
   u00111 : constant Version_32 := 16#e7d8734f#;
   pragma Export (C, u00111, "system__img_llbB");
   u00112 : constant Version_32 := 16#0abe3d84#;
   pragma Export (C, u00112, "system__img_llbS");
   u00113 : constant Version_32 := 16#9777733a#;
   pragma Export (C, u00113, "system__img_lliB");
   u00114 : constant Version_32 := 16#014c5426#;
   pragma Export (C, u00114, "system__img_lliS");
   u00115 : constant Version_32 := 16#0e8808d4#;
   pragma Export (C, u00115, "system__img_llwB");
   u00116 : constant Version_32 := 16#a3d21e12#;
   pragma Export (C, u00116, "system__img_llwS");
   u00117 : constant Version_32 := 16#428b07f8#;
   pragma Export (C, u00117, "system__img_wiuB");
   u00118 : constant Version_32 := 16#2538aae8#;
   pragma Export (C, u00118, "system__img_wiuS");
   u00119 : constant Version_32 := 16#7ebd8839#;
   pragma Export (C, u00119, "system__val_intB");
   u00120 : constant Version_32 := 16#58a62bc8#;
   pragma Export (C, u00120, "system__val_intS");
   u00121 : constant Version_32 := 16#b44f9ae7#;
   pragma Export (C, u00121, "system__val_unsB");
   u00122 : constant Version_32 := 16#9df3480c#;
   pragma Export (C, u00122, "system__val_unsS");
   u00123 : constant Version_32 := 16#b3aa7b17#;
   pragma Export (C, u00123, "system__val_lliB");
   u00124 : constant Version_32 := 16#8a27e757#;
   pragma Export (C, u00124, "system__val_lliS");
   u00125 : constant Version_32 := 16#306b4691#;
   pragma Export (C, u00125, "ada__real_timeB");
   u00126 : constant Version_32 := 16#87ade2f4#;
   pragma Export (C, u00126, "ada__real_timeS");
   u00127 : constant Version_32 := 16#1f99af62#;
   pragma Export (C, u00127, "system__arith_64B");
   u00128 : constant Version_32 := 16#307d063a#;
   pragma Export (C, u00128, "system__arith_64S");
   u00129 : constant Version_32 := 16#91b1145a#;
   pragma Export (C, u00129, "system__taskingB");
   u00130 : constant Version_32 := 16#0614561b#;
   pragma Export (C, u00130, "system__taskingS");
   u00131 : constant Version_32 := 16#4ef49049#;
   pragma Export (C, u00131, "system__task_primitivesS");
   u00132 : constant Version_32 := 16#b498031e#;
   pragma Export (C, u00132, "system__os_interfaceB");
   u00133 : constant Version_32 := 16#fe105d7f#;
   pragma Export (C, u00133, "system__os_interfaceS");
   u00134 : constant Version_32 := 16#f71cb626#;
   pragma Export (C, u00134, "interfaces__c__extensionsS");
   u00135 : constant Version_32 := 16#434c88e8#;
   pragma Export (C, u00135, "system__os_constantsS");
   u00136 : constant Version_32 := 16#c920fb2e#;
   pragma Export (C, u00136, "system__task_primitives__operationsB");
   u00137 : constant Version_32 := 16#0e983487#;
   pragma Export (C, u00137, "system__task_primitives__operationsS");
   u00138 : constant Version_32 := 16#89b55e64#;
   pragma Export (C, u00138, "system__interrupt_managementB");
   u00139 : constant Version_32 := 16#bec4dbfd#;
   pragma Export (C, u00139, "system__interrupt_managementS");
   u00140 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00140, "system__multiprocessorsB");
   u00141 : constant Version_32 := 16#28af9e84#;
   pragma Export (C, u00141, "system__multiprocessorsS");
   u00142 : constant Version_32 := 16#e0fce7f8#;
   pragma Export (C, u00142, "system__task_infoB");
   u00143 : constant Version_32 := 16#9019bcf6#;
   pragma Export (C, u00143, "system__task_infoS");
   u00144 : constant Version_32 := 16#85267e7e#;
   pragma Export (C, u00144, "system__tasking__debugB");
   u00145 : constant Version_32 := 16#62f5b061#;
   pragma Export (C, u00145, "system__tasking__debugS");
   u00146 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00146, "system__concat_2B");
   u00147 : constant Version_32 := 16#12a3d627#;
   pragma Export (C, u00147, "system__concat_2S");
   u00148 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00148, "system__concat_3B");
   u00149 : constant Version_32 := 16#1b735d52#;
   pragma Export (C, u00149, "system__concat_3S");
   u00150 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00150, "system__img_enum_newB");
   u00151 : constant Version_32 := 16#714f0737#;
   pragma Export (C, u00151, "system__img_enum_newS");
   u00152 : constant Version_32 := 16#118e865d#;
   pragma Export (C, u00152, "system__stack_usageB");
   u00153 : constant Version_32 := 16#00bc3311#;
   pragma Export (C, u00153, "system__stack_usageS");
   u00154 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00154, "system__ioB");
   u00155 : constant Version_32 := 16#8e41f6b8#;
   pragma Export (C, u00155, "system__ioS");
   u00156 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00156, "ada__stringsS");
   u00157 : constant Version_32 := 16#fe1ffede#;
   pragma Export (C, u00157, "ada__strings__boundedB");
   u00158 : constant Version_32 := 16#89c18940#;
   pragma Export (C, u00158, "ada__strings__boundedS");
   u00159 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00159, "ada__strings__mapsB");
   u00160 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00160, "ada__strings__mapsS");
   u00161 : constant Version_32 := 16#a55efc94#;
   pragma Export (C, u00161, "system__bit_opsB");
   u00162 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00162, "system__bit_opsS");
   u00163 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00163, "ada__charactersS");
   u00164 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00164, "ada__characters__latin_1S");
   u00165 : constant Version_32 := 16#cf3b626b#;
   pragma Export (C, u00165, "ada__strings__superboundedB");
   u00166 : constant Version_32 := 16#da6addee#;
   pragma Export (C, u00166, "ada__strings__superboundedS");
   u00167 : constant Version_32 := 16#36ece461#;
   pragma Export (C, u00167, "ada__strings__searchB");
   u00168 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00168, "ada__strings__searchS");
   u00169 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00169, "system__compare_array_unsigned_8B");
   u00170 : constant Version_32 := 16#b900707a#;
   pragma Export (C, u00170, "system__compare_array_unsigned_8S");
   u00171 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00171, "system__address_operationsB");
   u00172 : constant Version_32 := 16#030fbfc4#;
   pragma Export (C, u00172, "system__address_operationsS");
   u00173 : constant Version_32 := 16#6504807a#;
   pragma Export (C, u00173, "exceptionsB");
   u00174 : constant Version_32 := 16#c1a8636e#;
   pragma Export (C, u00174, "exceptionsS");
   u00175 : constant Version_32 := 16#49e07f37#;
   pragma Export (C, u00175, "ada__task_identificationB");
   u00176 : constant Version_32 := 16#86592349#;
   pragma Export (C, u00176, "ada__task_identificationS");
   u00177 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00177, "system__address_imageB");
   u00178 : constant Version_32 := 16#b1ef9ccd#;
   pragma Export (C, u00178, "system__address_imageS");
   u00179 : constant Version_32 := 16#67e431ef#;
   pragma Export (C, u00179, "system__tasking__utilitiesB");
   u00180 : constant Version_32 := 16#65f77ff8#;
   pragma Export (C, u00180, "system__tasking__utilitiesS");
   u00181 : constant Version_32 := 16#bc697275#;
   pragma Export (C, u00181, "system__tasking__initializationB");
   u00182 : constant Version_32 := 16#d9930fa8#;
   pragma Export (C, u00182, "system__tasking__initializationS");
   u00183 : constant Version_32 := 16#a115ede1#;
   pragma Export (C, u00183, "system__soft_links__taskingB");
   u00184 : constant Version_32 := 16#e47ef8be#;
   pragma Export (C, u00184, "system__soft_links__taskingS");
   u00185 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00185, "ada__exceptions__is_null_occurrenceB");
   u00186 : constant Version_32 := 16#9a9e8fd3#;
   pragma Export (C, u00186, "ada__exceptions__is_null_occurrenceS");
   u00187 : constant Version_32 := 16#7995e1aa#;
   pragma Export (C, u00187, "system__tasking__task_attributesB");
   u00188 : constant Version_32 := 16#952bcf5e#;
   pragma Export (C, u00188, "system__tasking__task_attributesS");
   u00189 : constant Version_32 := 16#35ce8314#;
   pragma Export (C, u00189, "system__tasking__queuingB");
   u00190 : constant Version_32 := 16#3117b7f1#;
   pragma Export (C, u00190, "system__tasking__queuingS");
   u00191 : constant Version_32 := 16#f83990e5#;
   pragma Export (C, u00191, "system__tasking__protected_objectsB");
   u00192 : constant Version_32 := 16#63b50013#;
   pragma Export (C, u00192, "system__tasking__protected_objectsS");
   u00193 : constant Version_32 := 16#9fa349e0#;
   pragma Export (C, u00193, "system__tasking__protected_objects__entriesB");
   u00194 : constant Version_32 := 16#7671a6ef#;
   pragma Export (C, u00194, "system__tasking__protected_objects__entriesS");
   u00195 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00195, "system__restrictionsB");
   u00196 : constant Version_32 := 16#0b6b8ab9#;
   pragma Export (C, u00196, "system__restrictionsS");
   u00197 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00197, "system__traces__taskingB");
   u00198 : constant Version_32 := 16#3fb127e5#;
   pragma Export (C, u00198, "system__traces__taskingS");
   u00199 : constant Version_32 := 16#99af9abd#;
   pragma Export (C, u00199, "generic_message_structuresS");
   u00200 : constant Version_32 := 16#c3a2015c#;
   pragma Export (C, u00200, "generic_routers_configurationS");
   u00201 : constant Version_32 := 16#3a72804f#;
   pragma Export (C, u00201, "routers_configuration_structuresB");
   u00202 : constant Version_32 := 16#9c1b9b6e#;
   pragma Export (C, u00202, "routers_configuration_structuresS");
   u00203 : constant Version_32 := 16#80fb7ec4#;
   pragma Export (C, u00203, "topologiesB");
   u00204 : constant Version_32 := 16#35583929#;
   pragma Export (C, u00204, "topologiesS");
   u00205 : constant Version_32 := 16#dde34de3#;
   pragma Export (C, u00205, "system__exp_intB");
   u00206 : constant Version_32 := 16#0920370b#;
   pragma Export (C, u00206, "system__exp_intS");
   u00207 : constant Version_32 := 16#6a859064#;
   pragma Export (C, u00207, "system__storage_pools__subpoolsB");
   u00208 : constant Version_32 := 16#e3b008dc#;
   pragma Export (C, u00208, "system__storage_pools__subpoolsS");
   u00209 : constant Version_32 := 16#b5b2aca1#;
   pragma Export (C, u00209, "system__finalization_mastersB");
   u00210 : constant Version_32 := 16#641528b7#;
   pragma Export (C, u00210, "system__finalization_mastersS");
   u00211 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00211, "system__img_boolB");
   u00212 : constant Version_32 := 16#e5da701c#;
   pragma Export (C, u00212, "system__img_boolS");
   u00213 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00213, "system__storage_poolsB");
   u00214 : constant Version_32 := 16#e5588673#;
   pragma Export (C, u00214, "system__storage_poolsS");
   u00215 : constant Version_32 := 16#63f11652#;
   pragma Export (C, u00215, "system__storage_pools__subpools__finalizationB");
   u00216 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00216, "system__storage_pools__subpools__finalizationS");
   u00217 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00217, "system__stream_attributesB");
   u00218 : constant Version_32 := 16#221dd20d#;
   pragma Export (C, u00218, "system__stream_attributesS");
   u00219 : constant Version_32 := 16#41f8a988#;
   pragma Export (C, u00219, "generic_routerB");
   u00220 : constant Version_32 := 16#44adfbea#;
   pragma Export (C, u00220, "generic_routerS");
   u00221 : constant Version_32 := 16#0abb5837#;
   pragma Export (C, u00221, "generic_router_linksB");
   u00222 : constant Version_32 := 16#267d71e6#;
   pragma Export (C, u00222, "generic_router_linksS");
   u00223 : constant Version_32 := 16#7095fec5#;
   pragma Export (C, u00223, "id_dispenserB");
   u00224 : constant Version_32 := 16#a411273f#;
   pragma Export (C, u00224, "id_dispenserS");
   u00225 : constant Version_32 := 16#075886ad#;
   pragma Export (C, u00225, "generic_routersB");
   u00226 : constant Version_32 := 16#19fd3812#;
   pragma Export (C, u00226, "generic_routersS");
   u00227 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00227, "gnatS");
   u00228 : constant Version_32 := 16#a8b4ea59#;
   pragma Export (C, u00228, "gnat__command_lineB");
   u00229 : constant Version_32 := 16#c4427fe3#;
   pragma Export (C, u00229, "gnat__command_lineS");
   u00230 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00230, "ada__characters__handlingB");
   u00231 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00231, "ada__characters__handlingS");
   u00232 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00232, "ada__strings__maps__constantsS");
   u00233 : constant Version_32 := 16#f78329ae#;
   pragma Export (C, u00233, "ada__strings__unboundedB");
   u00234 : constant Version_32 := 16#e303cf90#;
   pragma Export (C, u00234, "ada__strings__unboundedS");
   u00235 : constant Version_32 := 16#afc64758#;
   pragma Export (C, u00235, "system__atomic_countersB");
   u00236 : constant Version_32 := 16#dd7f953d#;
   pragma Export (C, u00236, "system__atomic_countersS");
   u00237 : constant Version_32 := 16#bfcb6e33#;
   pragma Export (C, u00237, "gnat__directory_operationsB");
   u00238 : constant Version_32 := 16#919ee674#;
   pragma Export (C, u00238, "gnat__directory_operationsS");
   u00239 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00239, "ada__strings__fixedB");
   u00240 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00240, "ada__strings__fixedS");
   u00241 : constant Version_32 := 16#a8ce4fe7#;
   pragma Export (C, u00241, "gnat__os_libS");
   u00242 : constant Version_32 := 16#e34550ca#;
   pragma Export (C, u00242, "system__pool_globalB");
   u00243 : constant Version_32 := 16#c88d2d16#;
   pragma Export (C, u00243, "system__pool_globalS");
   u00244 : constant Version_32 := 16#9d39c675#;
   pragma Export (C, u00244, "system__memoryB");
   u00245 : constant Version_32 := 16#497e67c3#;
   pragma Export (C, u00245, "system__memoryS");
   u00246 : constant Version_32 := 16#9630f6da#;
   pragma Export (C, u00246, "ada__command_lineB");
   u00247 : constant Version_32 := 16#d59e21a4#;
   pragma Export (C, u00247, "ada__command_lineS");
   u00248 : constant Version_32 := 16#084c16d0#;
   pragma Export (C, u00248, "gnat__regexpS");
   u00249 : constant Version_32 := 16#933fac2f#;
   pragma Export (C, u00249, "system__regexpB");
   u00250 : constant Version_32 := 16#e587bf12#;
   pragma Export (C, u00250, "system__regexpS");
   u00251 : constant Version_32 := 16#b4645806#;
   pragma Export (C, u00251, "gnat__stringsS");
   u00252 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00252, "system__concat_4B");
   u00253 : constant Version_32 := 16#6e672ad7#;
   pragma Export (C, u00253, "system__concat_4S");
   u00254 : constant Version_32 := 16#dfb02f8b#;
   pragma Export (C, u00254, "system__scalar_valuesB");
   u00255 : constant Version_32 := 16#aea706a0#;
   pragma Export (C, u00255, "system__scalar_valuesS");
   u00256 : constant Version_32 := 16#9dcd4743#;
   pragma Export (C, u00256, "system__tasking__rendezvousB");
   u00257 : constant Version_32 := 16#71fce298#;
   pragma Export (C, u00257, "system__tasking__rendezvousS");
   u00258 : constant Version_32 := 16#d3d9b1ce#;
   pragma Export (C, u00258, "system__tasking__entry_callsB");
   u00259 : constant Version_32 := 16#e903595c#;
   pragma Export (C, u00259, "system__tasking__entry_callsS");
   u00260 : constant Version_32 := 16#ce83633b#;
   pragma Export (C, u00260, "system__tasking__protected_objects__operationsB");
   u00261 : constant Version_32 := 16#eb67f071#;
   pragma Export (C, u00261, "system__tasking__protected_objects__operationsS");
   u00262 : constant Version_32 := 16#f8477235#;
   pragma Export (C, u00262, "system__tasking__stagesB");
   u00263 : constant Version_32 := 16#18a554d7#;
   pragma Export (C, u00263, "system__tasking__stagesS");
   u00264 : constant Version_32 := 16#f89f7823#;
   pragma Export (C, u00264, "system__val_boolB");
   u00265 : constant Version_32 := 16#ea916de9#;
   pragma Export (C, u00265, "system__val_boolS");
   u00266 : constant Version_32 := 16#4b37b589#;
   pragma Export (C, u00266, "system__val_enumB");
   u00267 : constant Version_32 := 16#ab194362#;
   pragma Export (C, u00267, "system__val_enumS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.arith_64%s
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.exp_int%s
   --  system.exp_int%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  gnat.strings%s
   --  system.os_lib%s
   --  gnat.os_lib%s
   --  system.task_info%s
   --  system.task_info%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.val_bool%s
   --  system.val_enum%s
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_real%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
   --  system.val_enum%b
   --  system.val_bool%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.superbounded%s
   --  ada.strings.bounded%s
   --  ada.strings.bounded%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.extensions%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  ada.task_identification%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  gnat.directory_operations%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.scalar_values%s
   --  system.scalar_values%b
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.superbounded%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.command_line%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  gnat.directory_operations%b
   --  system.address_image%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.regexp%s
   --  system.regexp%b
   --  gnat.regexp%s
   --  gnat.command_line%s
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.utilities%s
   --  ada.task_identification%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  system.tasking.initialization%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  gnat.command_line%b
   --  ada.text_io.float_aux%s
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  exceptions%s
   --  exceptions%b
   --  generic_router_links%s
   --  generic_router_links%b
   --  id_dispenser%s
   --  id_dispenser%b
   --  topologies%s
   --  topologies%b
   --  routers_configuration_structures%s
   --  routers_configuration_structures%b
   --  generic_routers_configuration%s
   --  generic_message_structures%s
   --  generic_router%s
   --  generic_router%b
   --  generic_routers%s
   --  generic_routers%b
   --  test_routers%b
   --  END ELABORATION ORDER


end ada_main;
