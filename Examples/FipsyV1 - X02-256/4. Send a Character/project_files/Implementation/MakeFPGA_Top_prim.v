// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Aug 20 23:44:42 2024
//
// Verilog Description of module MakeFPGA_Top
//

module MakeFPGA_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, 
            PIN14, PIN17, PIN18, PIN19, PIN20, LEDn) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(45[8:20])
    output PIN7 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[7:11])
    output PIN8;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(52[8:12])
    output PIN9 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[13:17])
    input PIN10 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[19:24])
    output PIN11 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    output PIN12 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[33:38])
    output PIN13 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[40:45])
    output PIN14 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[47:52])
    output PIN17 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[54:59])
    output PIN18 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[61:66])
    output PIN19 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[68:73])
    output PIN20 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[75:80])
    output LEDn;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(52[14:18])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    wire clk_N_99 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(125[11:21])
    
    wire GND_net, VCC_net, PIN8_c, PIN10_c, PIN20_c_19;
    wire [18:0]counting;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(176[12:20])
    
    wire resetline, n491, resetline_N_20, n490, n489, n488, n28, 
        n487, n486, n485, n484, clk_baud;
    wire [4:0]bitc;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(41[11:15])
    
    wire load, n483, n14, n600, n36, n34, n24, n82, n83, n84, 
        n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, 
        n95, n96, n97, n98, n99, n100, n32, n23, n30, PIN11_c_enable_23, 
        n626;
    
    VHI i2 (.Z(VCC_net));
    INV i452 (.A(PIN11_c), .Z(clk_N_99));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(PIN11_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "12.09";
    CCU2D counting_96_add_4_15 (.A0(counting[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n489), .COUT(n490), .S0(n87), .S1(n86));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_15.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_15.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_15.INJECT1_0 = "NO";
    defparam counting_96_add_4_15.INJECT1_1 = "NO";
    CCU2D counting_96_add_4_13 (.A0(counting[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n488), .COUT(n489), .S0(n89), .S1(n88));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_13.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_13.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_13.INJECT1_0 = "NO";
    defparam counting_96_add_4_13.INJECT1_1 = "NO";
    LUT4 i68_1_lut_rep_8 (.A(resetline), .Z(n600)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(179[8] 186[5])
    defparam i68_1_lut_rep_8.init = 16'h5555;
    CCU2D counting_96_add_4_11 (.A0(counting[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n487), .COUT(n488), .S0(n91), .S1(n90));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_11.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_11.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_11.INJECT1_0 = "NO";
    defparam counting_96_add_4_11.INJECT1_1 = "NO";
    OB PIN8_pad (.I(PIN8_c), .O(PIN8));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(52[8:12])
    CCU2D counting_96_add_4_9 (.A0(counting[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n486), .COUT(n487), .S0(n93), .S1(n92));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_9.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_9.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_9.INJECT1_0 = "NO";
    defparam counting_96_add_4_9.INJECT1_1 = "NO";
    LUT4 i5_2_lut (.A(counting[15]), .B(counting[16]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i15_4_lut (.A(counting[14]), .B(n30), .C(counting[11]), .D(counting[7]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i15_4_lut.init = 16'hfffe;
    CCU2D counting_96_add_4_7 (.A0(counting[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n485), .COUT(n486), .S0(n95), .S1(n94));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_7.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_7.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_7.INJECT1_0 = "NO";
    defparam counting_96_add_4_7.INJECT1_1 = "NO";
    LUT4 i9_2_lut (.A(counting[2]), .B(counting[9]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i11_4_lut (.A(counting[3]), .B(counting[10]), .C(counting[6]), 
         .D(counting[18]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i11_4_lut.init = 16'hfffe;
    CCU2D counting_96_add_4_5 (.A0(counting[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n484), .COUT(n485), .S0(n97), .S1(n96));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_5.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_5.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_5.INJECT1_0 = "NO";
    defparam counting_96_add_4_5.INJECT1_1 = "NO";
    CCU2D counting_96_add_4_3 (.A0(counting[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n483), .COUT(n484), .S0(n99), .S1(n98));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_3.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_3.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_3.INJECT1_0 = "NO";
    defparam counting_96_add_4_3.INJECT1_1 = "NO";
    CCU2D counting_96_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n483), .S1(n100));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_1.INIT0 = 16'hF000;
    defparam counting_96_add_4_1.INIT1 = 16'h0555;
    defparam counting_96_add_4_1.INJECT1_0 = "NO";
    defparam counting_96_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_4_3_lut (.A(resetline), .B(clk_baud), .C(load), 
         .Z(PIN11_c_enable_23)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(179[8] 186[5])
    defparam i2_3_lut_rep_4_3_lut.init = 16'hfdfd;
    LUT4 i197_2_lut_4_lut_4_lut (.A(resetline), .B(bitc[0]), .C(clk_baud), 
         .D(load), .Z(n14)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(179[8] 186[5])
    defparam i197_2_lut_4_lut_4_lut.init = 16'h3339;
    OB PIN7_pad (.I(GND_net), .O(PIN7));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[7:11])
    CCU2D counting_96_add_4_17 (.A0(counting[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n490), .COUT(n491), .S0(n85), .S1(n84));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_17.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_17.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_17.INJECT1_0 = "NO";
    defparam counting_96_add_4_17.INJECT1_1 = "NO";
    FD1S3AX counting_96__i0 (.D(n100), .CK(PIN11_c), .Q(counting[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i0.GSR = "ENABLED";
    FD1S3AX counting_96__i18 (.D(n82), .CK(PIN11_c), .Q(counting[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i18.GSR = "ENABLED";
    FD1S3AX counting_96__i17 (.D(n83), .CK(PIN11_c), .Q(counting[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i17.GSR = "ENABLED";
    FD1S3AX counting_96__i16 (.D(n84), .CK(PIN11_c), .Q(counting[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i16.GSR = "ENABLED";
    FD1S3AX counting_96__i15 (.D(n85), .CK(PIN11_c), .Q(counting[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i15.GSR = "ENABLED";
    FD1S3AX counting_96__i14 (.D(n86), .CK(PIN11_c), .Q(counting[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i14.GSR = "ENABLED";
    OB PIN9_pad (.I(GND_net), .O(PIN9));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[13:17])
    FD1S3AX counting_96__i13 (.D(n87), .CK(PIN11_c), .Q(counting[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i13.GSR = "ENABLED";
    FD1S3AX counting_96__i12 (.D(n88), .CK(PIN11_c), .Q(counting[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i12.GSR = "ENABLED";
    FD1S3AX counting_96__i11 (.D(n89), .CK(PIN11_c), .Q(counting[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i11.GSR = "ENABLED";
    FD1S3AX counting_96__i10 (.D(n90), .CK(PIN11_c), .Q(counting[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i10.GSR = "ENABLED";
    FD1S3AX counting_96__i9 (.D(n91), .CK(PIN11_c), .Q(counting[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i9.GSR = "ENABLED";
    FD1S3AX counting_96__i8 (.D(n92), .CK(PIN11_c), .Q(counting[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i8.GSR = "ENABLED";
    FD1S3AX counting_96__i7 (.D(n93), .CK(PIN11_c), .Q(counting[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i7.GSR = "ENABLED";
    FD1S3AX counting_96__i6 (.D(n94), .CK(PIN11_c), .Q(counting[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i6.GSR = "ENABLED";
    FD1S3AX counting_96__i5 (.D(n95), .CK(PIN11_c), .Q(counting[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i5.GSR = "ENABLED";
    FD1S3AX counting_96__i4 (.D(n96), .CK(PIN11_c), .Q(counting[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i4.GSR = "ENABLED";
    FD1S3AX counting_96__i3 (.D(n97), .CK(PIN11_c), .Q(counting[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i3.GSR = "ENABLED";
    FD1S3AX counting_96__i2 (.D(n98), .CK(PIN11_c), .Q(counting[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i2.GSR = "ENABLED";
    FD1S3AX counting_96__i1 (.D(n99), .CK(PIN11_c), .Q(counting[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96__i1.GSR = "ENABLED";
    LUT4 i13_4_lut (.A(counting[5]), .B(counting[0]), .C(counting[4]), 
         .D(counting[8]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(n23), .B(n36), .C(n32), .D(n24), .Z(resetline_N_20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i18_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3AX resetline_10 (.D(resetline_N_20), .CK(PIN11_c), .Q(resetline));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(179[8] 186[5])
    defparam resetline_10.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i17_4_lut (.A(counting[12]), .B(n34), .C(n28), .D(counting[1]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(counting[13]), .B(counting[17]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(182[7:18])
    defparam i4_2_lut.init = 16'heeee;
    FreqDiv20Bit FreqDiv20Bit_inst (.PIN11_c(PIN11_c), .PIN10_c(PIN10_c), 
            .PIN20_c_19(PIN20_c_19), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(152[14] 156[32])
    txchar TX0 (.\bitc[0] (bitc[0]), .PIN11_c(PIN11_c), .n14(n14), .PIN11_c_enable_23(PIN11_c_enable_23), 
           .clk_N_99(clk_N_99), .PIN8_c(PIN8_c), .load(load), .n600(n600), 
           .n626(n626), .n73({clk_baud}), .resetline(resetline)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(188[8] 192[2])
    LUT4 m1_lut (.Z(n626)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    OB PIN12_pad (.I(GND_net), .O(PIN12));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[33:38])
    OB PIN13_pad (.I(GND_net), .O(PIN13));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[40:45])
    OB PIN14_pad (.I(GND_net), .O(PIN14));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[47:52])
    OB PIN17_pad (.I(GND_net), .O(PIN17));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[54:59])
    OB PIN18_pad (.I(GND_net), .O(PIN18));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[61:66])
    OB PIN19_pad (.I(GND_net), .O(PIN19));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[68:73])
    OB PIN20_pad (.I(PIN20_c_19), .O(PIN20));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[75:80])
    OB LEDn_pad (.I(GND_net), .O(LEDn));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(52[14:18])
    IB PIN10_pad (.I(PIN10), .O(PIN10_c));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[19:24])
    CCU2D counting_96_add_4_19 (.A0(counting[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n491), .S0(n83), .S1(n82));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(181[15:28])
    defparam counting_96_add_4_19.INIT0 = 16'hfaaa;
    defparam counting_96_add_4_19.INIT1 = 16'hfaaa;
    defparam counting_96_add_4_19.INJECT1_0 = "NO";
    defparam counting_96_add_4_19.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module FreqDiv20Bit
//

module FreqDiv20Bit (PIN11_c, PIN10_c, PIN20_c_19, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input PIN10_c;
    output PIN20_c_19;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    wire [19:0]n149;
    wire [19:0]n85;
    
    wire n482, n481, n480, n479, n478, n477, n476, n475, n474, 
        n473;
    
    FD1S3IX count_97__i0 (.D(n85[0]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i0.GSR = "ENABLED";
    CCU2D count_97_add_4_21 (.A0(PIN20_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n482), .S0(n85[19]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_21.INIT0 = 16'hfaaa;
    defparam count_97_add_4_21.INIT1 = 16'h0000;
    defparam count_97_add_4_21.INJECT1_0 = "NO";
    defparam count_97_add_4_21.INJECT1_1 = "NO";
    CCU2D count_97_add_4_19 (.A0(n149[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n481), .COUT(n482), .S0(n85[17]), .S1(n85[18]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_19.INIT0 = 16'hfaaa;
    defparam count_97_add_4_19.INIT1 = 16'hfaaa;
    defparam count_97_add_4_19.INJECT1_0 = "NO";
    defparam count_97_add_4_19.INJECT1_1 = "NO";
    FD1S3IX count_97__i19 (.D(n85[19]), .CK(PIN11_c), .CD(PIN10_c), .Q(PIN20_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i19.GSR = "ENABLED";
    FD1S3IX count_97__i18 (.D(n85[18]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i18.GSR = "ENABLED";
    FD1S3IX count_97__i17 (.D(n85[17]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i17.GSR = "ENABLED";
    FD1S3IX count_97__i16 (.D(n85[16]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i16.GSR = "ENABLED";
    FD1S3IX count_97__i15 (.D(n85[15]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i15.GSR = "ENABLED";
    FD1S3IX count_97__i14 (.D(n85[14]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i14.GSR = "ENABLED";
    FD1S3IX count_97__i13 (.D(n85[13]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i13.GSR = "ENABLED";
    FD1S3IX count_97__i12 (.D(n85[12]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i12.GSR = "ENABLED";
    FD1S3IX count_97__i11 (.D(n85[11]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i11.GSR = "ENABLED";
    FD1S3IX count_97__i10 (.D(n85[10]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i10.GSR = "ENABLED";
    FD1S3IX count_97__i9 (.D(n85[9]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i9.GSR = "ENABLED";
    FD1S3IX count_97__i8 (.D(n85[8]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i8.GSR = "ENABLED";
    FD1S3IX count_97__i7 (.D(n85[7]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i7.GSR = "ENABLED";
    FD1S3IX count_97__i6 (.D(n85[6]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i6.GSR = "ENABLED";
    FD1S3IX count_97__i5 (.D(n85[5]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i5.GSR = "ENABLED";
    FD1S3IX count_97__i4 (.D(n85[4]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i4.GSR = "ENABLED";
    FD1S3IX count_97__i3 (.D(n85[3]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i3.GSR = "ENABLED";
    FD1S3IX count_97__i2 (.D(n85[2]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i2.GSR = "ENABLED";
    FD1S3IX count_97__i1 (.D(n85[1]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97__i1.GSR = "ENABLED";
    CCU2D count_97_add_4_17 (.A0(n149[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n480), .COUT(n481), .S0(n85[15]), .S1(n85[16]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_17.INIT0 = 16'hfaaa;
    defparam count_97_add_4_17.INIT1 = 16'hfaaa;
    defparam count_97_add_4_17.INJECT1_0 = "NO";
    defparam count_97_add_4_17.INJECT1_1 = "NO";
    CCU2D count_97_add_4_15 (.A0(n149[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n479), .COUT(n480), .S0(n85[13]), .S1(n85[14]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_15.INIT0 = 16'hfaaa;
    defparam count_97_add_4_15.INIT1 = 16'hfaaa;
    defparam count_97_add_4_15.INJECT1_0 = "NO";
    defparam count_97_add_4_15.INJECT1_1 = "NO";
    CCU2D count_97_add_4_13 (.A0(n149[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n478), .COUT(n479), .S0(n85[11]), .S1(n85[12]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_13.INIT0 = 16'hfaaa;
    defparam count_97_add_4_13.INIT1 = 16'hfaaa;
    defparam count_97_add_4_13.INJECT1_0 = "NO";
    defparam count_97_add_4_13.INJECT1_1 = "NO";
    CCU2D count_97_add_4_11 (.A0(n149[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n477), .COUT(n478), .S0(n85[9]), .S1(n85[10]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_11.INIT0 = 16'hfaaa;
    defparam count_97_add_4_11.INIT1 = 16'hfaaa;
    defparam count_97_add_4_11.INJECT1_0 = "NO";
    defparam count_97_add_4_11.INJECT1_1 = "NO";
    CCU2D count_97_add_4_9 (.A0(n149[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n476), .COUT(n477), .S0(n85[7]), .S1(n85[8]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_9.INIT0 = 16'hfaaa;
    defparam count_97_add_4_9.INIT1 = 16'hfaaa;
    defparam count_97_add_4_9.INJECT1_0 = "NO";
    defparam count_97_add_4_9.INJECT1_1 = "NO";
    CCU2D count_97_add_4_7 (.A0(n149[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n475), .COUT(n476), .S0(n85[5]), .S1(n85[6]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_7.INIT0 = 16'hfaaa;
    defparam count_97_add_4_7.INIT1 = 16'hfaaa;
    defparam count_97_add_4_7.INJECT1_0 = "NO";
    defparam count_97_add_4_7.INJECT1_1 = "NO";
    CCU2D count_97_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n474), .COUT(n475), .S0(n85[3]), .S1(n85[4]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_5.INIT0 = 16'hfaaa;
    defparam count_97_add_4_5.INIT1 = 16'hfaaa;
    defparam count_97_add_4_5.INJECT1_0 = "NO";
    defparam count_97_add_4_5.INJECT1_1 = "NO";
    CCU2D count_97_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n473), .COUT(n474), .S0(n85[1]), .S1(n85[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_3.INIT0 = 16'hfaaa;
    defparam count_97_add_4_3.INIT1 = 16'hfaaa;
    defparam count_97_add_4_3.INJECT1_0 = "NO";
    defparam count_97_add_4_3.INJECT1_1 = "NO";
    CCU2D count_97_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n473), .S1(n85[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_97_add_4_1.INIT0 = 16'hF000;
    defparam count_97_add_4_1.INIT1 = 16'h0555;
    defparam count_97_add_4_1.INJECT1_0 = "NO";
    defparam count_97_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module txchar
//

module txchar (\bitc[0] , PIN11_c, n14, PIN11_c_enable_23, clk_N_99, 
            PIN8_c, load, n600, n626, n73, resetline) /* synthesis syn_module_defined=1 */ ;
    output \bitc[0] ;
    input PIN11_c;
    input n14;
    input PIN11_c_enable_23;
    input clk_N_99;
    output PIN8_c;
    output load;
    input n600;
    input n626;
    output [0:0]n73;
    input resetline;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    wire clk_N_99 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(125[11:21])
    
    uart_tx TX0 (.bitc({Open_0, Open_1, Open_2, Open_3, \bitc[0] }), 
            .PIN11_c(PIN11_c), .n14(n14), .PIN11_c_enable_23(PIN11_c_enable_23), 
            .clk_N_99(clk_N_99), .PIN8_c(PIN8_c), .n75({Open_4, load}), 
            .n600(n600), .n626(n626), .n73({n73}), .resetline(resetline)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/txchar.v(26[5] 32[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (bitc, PIN11_c, n14, PIN11_c_enable_23, clk_N_99, PIN8_c, 
            n75, n600, n626, n73, resetline) /* synthesis syn_module_defined=1 */ ;
    output [4:0]bitc;
    input PIN11_c;
    input n14;
    input PIN11_c_enable_23;
    input clk_N_99;
    output PIN8_c;
    output [1:0]n75;
    input n600;
    input n626;
    output [0:0]n73;
    input resetline;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    wire clk_N_99 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(125[11:21])
    
    wire n150;
    wire [4:0]bitc_c;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(41[11:15])
    wire [4:0]n249;
    wire [18:0]shifter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(64[12:19])
    wire [1:0]next_state;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(125[11:21])
    wire [1:0]next_state_1__N_96;
    wire [1:0]state;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(124[11:16])
    
    wire n560, n4, n599;
    wire [1:0]n74;
    wire [1:0]n75_c;
    
    wire PIN11_c_enable_19;
    wire [18:0]shifter_18__N_103;
    
    FD1S3IX bitc__i0 (.D(n14), .CK(PIN11_c), .CD(n150), .Q(bitc[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i0.GSR = "ENABLED";
    LUT4 i117_2_lut_3_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[2]), 
         .Z(n249[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(93[13:21])
    defparam i117_2_lut_3_lut.init = 16'h7878;
    FD1P3JX shifter_i4 (.D(shifter[5]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i4.GSR = "ENABLED";
    FD1S3AX next_state_i0 (.D(next_state_1__N_96[0]), .CK(clk_N_99), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(135[8] 176[4])
    defparam next_state_i0.GSR = "ENABLED";
    FD1S3AX tx_48 (.D(shifter[0]), .CK(PIN11_c), .Q(PIN8_c)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(99[8] 102[5])
    defparam tx_48.GSR = "ENABLED";
    FD1S3IX baud_en_52_i0 (.D(state[0]), .CK(clk_N_99), .CD(state[1]), 
            .Q(n75[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(142[3] 175[10])
    defparam baud_en_52_i0.GSR = "ENABLED";
    FD1S3IX state__i0 (.D(next_state[0]), .CK(PIN11_c), .CD(n600), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(128[8] 132[25])
    defparam state__i0.GSR = "ENABLED";
    FD1P3JX shifter_i3 (.D(shifter[4]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i3.GSR = "ENABLED";
    FD1P3JX shifter_i2 (.D(shifter[3]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i2.GSR = "ENABLED";
    LUT4 i430_3_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[3]), .Z(n560)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i430_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut (.A(bitc_c[2]), .B(bitc_c[4]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i112_2_lut_rep_7 (.A(bitc_c[1]), .B(bitc[0]), .Z(n599)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(93[13:21])
    defparam i112_2_lut_rep_7.init = 16'h8888;
    LUT4 i434_2_lut (.A(state[0]), .B(state[1]), .Z(next_state_1__N_96[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i434_2_lut.init = 16'h9999;
    LUT4 i195_2_lut (.A(state[0]), .B(state[1]), .Z(n74[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i195_2_lut.init = 16'h6666;
    FD1S3IX state__i1 (.D(next_state[1]), .CK(PIN11_c), .CD(n600), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(128[8] 132[25])
    defparam state__i1.GSR = "ENABLED";
    LUT4 i124_2_lut_3_lut_4_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[3]), 
         .D(bitc_c[2]), .Z(n249[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(93[13:21])
    defparam i124_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i110_2_lut (.A(bitc_c[1]), .B(bitc[0]), .Z(n249[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(93[13:21])
    defparam i110_2_lut.init = 16'h6666;
    FD1S3AX baud_en_52_i1 (.D(n74[1]), .CK(clk_N_99), .Q(n75_c[1]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(142[3] 175[10])
    defparam baud_en_52_i1.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_96[1]), .CK(clk_N_99), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(135[8] 176[4])
    defparam next_state_i1.GSR = "ENABLED";
    FD1P3IX shifter_i18 (.D(n626), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[18])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i18.GSR = "ENABLED";
    LUT4 i131_3_lut_4_lut (.A(bitc_c[2]), .B(n599), .C(bitc_c[3]), .D(bitc_c[4]), 
         .Z(n249[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(93[13:21])
    defparam i131_3_lut_4_lut.init = 16'h7f80;
    LUT4 i13_2_lut (.A(n75[0]), .B(n73[0]), .Z(PIN11_c_enable_19)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(80[12:38])
    defparam i13_2_lut.init = 16'h4444;
    LUT4 i334_2_lut (.A(shifter[12]), .B(n75[0]), .Z(shifter_18__N_103[11])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(80[8] 81[38])
    defparam i334_2_lut.init = 16'heeee;
    LUT4 i333_2_lut (.A(shifter[18]), .B(n75[0]), .Z(shifter_18__N_103[17])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(80[8] 81[38])
    defparam i333_2_lut.init = 16'heeee;
    LUT4 i442_4_lut (.A(state[0]), .B(state[1]), .C(n560), .D(n4), .Z(next_state_1__N_96[1])) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i442_4_lut.init = 16'heaee;
    FD1P3JX shifter_i1 (.D(shifter[2]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i1.GSR = "ENABLED";
    FD1P3JX shifter_i5 (.D(shifter[6]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[5])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i5.GSR = "ENABLED";
    FD1P3JX shifter_i6 (.D(shifter[7]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[6])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i6.GSR = "ENABLED";
    FD1P3JX shifter_i7 (.D(shifter[8]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[7])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i7.GSR = "ENABLED";
    FD1P3JX shifter_i8 (.D(shifter[9]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[8])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i8.GSR = "ENABLED";
    FD1P3JX shifter_i9 (.D(shifter[10]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[9])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i9.GSR = "ENABLED";
    FD1P3IX shifter_i11 (.D(shifter_18__N_103[11]), .SP(PIN11_c_enable_23), 
            .CD(n600), .CK(PIN11_c), .Q(shifter[11])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i11.GSR = "ENABLED";
    FD1P3IX shifter_i17 (.D(shifter_18__N_103[17]), .SP(PIN11_c_enable_23), 
            .CD(n600), .CK(PIN11_c), .Q(shifter[17])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i17.GSR = "ENABLED";
    FD1P3JX shifter_i0 (.D(shifter[1]), .SP(PIN11_c_enable_23), .PD(n150), 
            .CK(PIN11_c), .Q(shifter[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i0.GSR = "ENABLED";
    FD1P3IX shifter_i16 (.D(shifter[17]), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[16])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i16.GSR = "ENABLED";
    FD1P3IX shifter_i15 (.D(shifter[16]), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[15])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i15.GSR = "ENABLED";
    FD1P3IX shifter_i14 (.D(shifter[15]), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[14])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i14.GSR = "ENABLED";
    FD1P3IX shifter_i13 (.D(shifter[14]), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[13])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i13.GSR = "ENABLED";
    FD1P3IX shifter_i12 (.D(shifter[13]), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[12])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i12.GSR = "ENABLED";
    FD1P3IX shifter_i10 (.D(shifter[11]), .SP(PIN11_c_enable_19), .CD(n150), 
            .CK(PIN11_c), .Q(shifter[10])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i10.GSR = "ENABLED";
    FD1P3IX bitc__i4 (.D(n249[4]), .SP(PIN11_c_enable_23), .CD(n150), 
            .CK(PIN11_c), .Q(bitc_c[4])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i4.GSR = "ENABLED";
    FD1P3IX bitc__i3 (.D(n249[3]), .SP(PIN11_c_enable_23), .CD(n150), 
            .CK(PIN11_c), .Q(bitc_c[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n249[2]), .SP(PIN11_c_enable_23), .CD(n150), 
            .CK(PIN11_c), .Q(bitc_c[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i1 (.D(n249[1]), .SP(PIN11_c_enable_23), .CD(n150), 
            .CK(PIN11_c), .Q(bitc_c[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i1.GSR = "ENABLED";
    LUT4 i213_2_lut (.A(n75[0]), .B(resetline), .Z(n150)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(76[8] 81[38])
    defparam i213_2_lut.init = 16'hbbbb;
    baudgen_tx BAUD0 (.PIN11_c(PIN11_c), .n600(n600), .baud_en(n75_c[1]), 
            .resetline(resetline), .n73({n73})) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/uart_tx.v(106[1] 112[4])
    
endmodule
//
// Verilog Description of module baudgen_tx
//

module baudgen_tx (PIN11_c, n600, baud_en, resetline, n73) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input n600;
    input baud_en;
    input resetline;
    output [0:0]n73;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/send_character.v(50[26:31])
    wire [6:0]divcounter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(45[13:23])
    wire [6:0]divcounter_6__N_144;
    
    wire n558, n597;
    wire [6:0]n114;
    
    wire n552, n13, n229, n598, n544, n595, n493;
    
    FD1S3IX divcounter__i0 (.D(divcounter_6__N_144[0]), .CK(PIN11_c), .CD(n600), 
            .Q(divcounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i0.GSR = "ENABLED";
    LUT4 i428_4_lut (.A(divcounter[0]), .B(divcounter[1]), .C(divcounter[5]), 
         .D(divcounter[2]), .Z(n558)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i428_4_lut.init = 16'hfffe;
    LUT4 i155_2_lut_rep_5_3_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[2]), 
         .Z(n597)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i155_2_lut_rep_5_3_lut.init = 16'h8080;
    LUT4 i445_3_lut_4_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[2]), 
         .D(baud_en), .Z(divcounter_6__N_144[2])) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i445_3_lut_4_lut.init = 16'h78ff;
    LUT4 i160_2_lut_3_lut_4_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[3]), 
         .D(divcounter[2]), .Z(n114[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i160_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i422_2_lut (.A(divcounter[4]), .B(divcounter[3]), .Z(n552)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i422_2_lut.init = 16'heeee;
    LUT4 i325_4_lut (.A(divcounter[6]), .B(baud_en), .C(n13), .D(n229), 
         .Z(divcounter_6__N_144[6])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(66[5:32])
    defparam i325_4_lut.init = 16'h73b3;
    LUT4 i449_2_lut (.A(divcounter[0]), .B(baud_en), .Z(divcounter_6__N_144[0])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i449_2_lut.init = 16'h7777;
    LUT4 i5_4_lut (.A(divcounter[6]), .B(n552), .C(n598), .D(n544), 
         .Z(n13)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i5_4_lut.init = 16'hdfff;
    LUT4 i414_2_lut (.A(divcounter[2]), .B(divcounter[5]), .Z(n544)) /* synthesis lut_function=(A (B)) */ ;
    defparam i414_2_lut.init = 16'h8888;
    LUT4 i326_4_lut (.A(divcounter[5]), .B(baud_en), .C(n13), .D(n595), 
         .Z(divcounter_6__N_144[5])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(66[5:32])
    defparam i326_4_lut.init = 16'h73b3;
    LUT4 i176_2_lut_3_lut_4_lut (.A(divcounter[3]), .B(n597), .C(divcounter[5]), 
         .D(divcounter[4]), .Z(n229)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i176_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i440_3_lut (.A(resetline), .B(baud_en), .C(n13), .Z(n493)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam i440_3_lut.init = 16'h7f7f;
    LUT4 i167_2_lut_3_lut_4_lut (.A(divcounter[2]), .B(n598), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n114[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i167_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i169_2_lut_rep_3_3_lut_4_lut (.A(divcounter[2]), .B(n598), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n595)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i169_2_lut_rep_3_3_lut_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(n552), .B(n558), .C(baud_en), .D(divcounter[6]), 
         .Z(n73[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i6_4_lut.init = 16'h0010;
    LUT4 i437_3_lut (.A(baud_en), .B(divcounter[0]), .C(divcounter[1]), 
         .Z(divcounter_6__N_144[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(66[5:32])
    defparam i437_3_lut.init = 16'h7d7d;
    FD1S3IX divcounter__i6 (.D(divcounter_6__N_144[6]), .CK(PIN11_c), .CD(n600), 
            .Q(divcounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i6.GSR = "ENABLED";
    FD1S3IX divcounter__i5 (.D(divcounter_6__N_144[5]), .CK(PIN11_c), .CD(n600), 
            .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i5.GSR = "ENABLED";
    FD1S3IX divcounter__i3 (.D(n114[3]), .CK(PIN11_c), .CD(n493), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i3.GSR = "ENABLED";
    FD1S3IX divcounter__i2 (.D(divcounter_6__N_144[2]), .CK(PIN11_c), .CD(n600), 
            .Q(divcounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i2.GSR = "ENABLED";
    FD1S3IX divcounter__i1 (.D(divcounter_6__N_144[1]), .CK(PIN11_c), .CD(n600), 
            .Q(divcounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i1.GSR = "ENABLED";
    FD1S3IX divcounter__i4 (.D(n114[4]), .CK(PIN11_c), .CD(n493), .Q(divcounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i4.GSR = "ENABLED";
    LUT4 i148_2_lut_rep_6 (.A(divcounter[1]), .B(divcounter[0]), .Z(n598)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/4. send a character/project_files/source/baudgen_tx.v(61[17:31])
    defparam i148_2_lut_rep_6.init = 16'h8888;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

