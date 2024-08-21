// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Aug 20 23:45:12 2024
//
// Verilog Description of module MakeFPGA_Top
//

module MakeFPGA_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, 
            PIN14, PIN17, PIN18, PIN19, PIN20, LEDn) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(45[8:20])
    output PIN7 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[7:11])
    output PIN8;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(52[8:12])
    output PIN9 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[13:17])
    input PIN10 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[19:24])
    output PIN11 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    output PIN12 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[33:38])
    output PIN13 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[40:45])
    output PIN14 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[47:52])
    output PIN17 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[54:59])
    output PIN18 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[61:66])
    output PIN19 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[68:73])
    output PIN20 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[75:80])
    output LEDn;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(52[14:18])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    wire clk_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(125[11:21])
    
    wire GND_net, VCC_net, PIN8_c, PIN10_c, PIN20_c_19;
    wire [18:0]counting;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(176[12:20])
    
    wire resetline, resetline_N_20, n663, n662, n661, n660;
    wire [2:0]char_count;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(61[11:21])
    
    wire cena, n659, n658, clk_baud;
    wire [4:0]bitc;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(41[11:15])
    
    wire load;
    wire [1:0]state_adj_172;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(124[11:16])
    
    wire n657, n656, n664, n240, n14, n457, n36, n34, n786, 
        n8, n32, n30, n28, n809, n188, PIN11_c_enable_9, n24, 
        n23, PIN11_c_enable_31, n82, n83, n84, n85, n86, n87, 
        n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
        n98, n99, n100;
    
    VHI i2 (.Z(VCC_net));
    INV i612 (.A(PIN11_c), .Z(clk_N_114));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(PIN11_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "12.09";
    CCU2D counting_159_add_4_13 (.A0(counting[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n661), .COUT(n662), .S0(n89), .S1(n88));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_13.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_13.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_13.INJECT1_0 = "NO";
    defparam counting_159_add_4_13.INJECT1_1 = "NO";
    CCU2D counting_159_add_4_11 (.A0(counting[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n660), .COUT(n661), .S0(n91), .S1(n90));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_11.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_11.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_11.INJECT1_0 = "NO";
    defparam counting_159_add_4_11.INJECT1_1 = "NO";
    OB PIN8_pad (.I(PIN8_c), .O(PIN8));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(52[8:12])
    LUT4 i129_3_lut (.A(state_adj_172[0]), .B(n457), .C(state_adj_172[1]), 
         .Z(n188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(124[11:16])
    defparam i129_3_lut.init = 16'hcaca;
    CCU2D counting_159_add_4_9 (.A0(counting[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n659), .COUT(n660), .S0(n93), .S1(n92));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_9.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_9.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_9.INJECT1_0 = "NO";
    defparam counting_159_add_4_9.INJECT1_1 = "NO";
    OB PIN7_pad (.I(GND_net), .O(PIN7));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[7:11])
    CCU2D counting_159_add_4_7 (.A0(counting[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n658), .COUT(n659), .S0(n95), .S1(n94));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_7.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_7.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_7.INJECT1_0 = "NO";
    defparam counting_159_add_4_7.INJECT1_1 = "NO";
    LUT4 i18_4_lut (.A(n23), .B(n36), .C(n32), .D(n24), .Z(resetline_N_20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i18_4_lut.init = 16'hfffe;
    CCU2D counting_159_add_4_5 (.A0(counting[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n657), .COUT(n658), .S0(n97), .S1(n96));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_5.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_5.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_5.INJECT1_0 = "NO";
    defparam counting_159_add_4_5.INJECT1_1 = "NO";
    FD1S3AX counting_159__i0 (.D(n100), .CK(PIN11_c), .Q(counting[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i0.GSR = "ENABLED";
    CCU2D counting_159_add_4_3 (.A0(counting[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n656), .COUT(n657), .S0(n99), .S1(n98));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_3.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_3.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_3.INJECT1_0 = "NO";
    defparam counting_159_add_4_3.INJECT1_1 = "NO";
    CCU2D counting_159_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n656), .S1(n100));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_1.INIT0 = 16'hF000;
    defparam counting_159_add_4_1.INIT1 = 16'h0555;
    defparam counting_159_add_4_1.INJECT1_0 = "NO";
    defparam counting_159_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(counting[13]), .B(counting[17]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(counting[12]), .B(n34), .C(n28), .D(counting[1]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(counting[5]), .B(counting[0]), .C(counting[4]), 
         .D(counting[8]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(counting[15]), .B(counting[16]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i15_4_lut (.A(counting[14]), .B(n30), .C(counting[11]), .D(counting[7]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i88_1_lut_rep_13 (.A(resetline), .Z(n786)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i88_1_lut_rep_13.init = 16'h5555;
    LUT4 i2_3_lut_rep_6_3_lut (.A(resetline), .B(load), .C(clk_baud), 
         .Z(PIN11_c_enable_31)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i2_3_lut_rep_6_3_lut.init = 16'hfdfd;
    OB PIN9_pad (.I(GND_net), .O(PIN9));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[13:17])
    FD1S3AX counting_159__i18 (.D(n82), .CK(PIN11_c), .Q(counting[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i18.GSR = "ENABLED";
    LUT4 i9_2_lut (.A(counting[2]), .B(counting[9]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i285_2_lut_2_lut (.A(resetline), .B(load), .Z(n240)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i285_2_lut_2_lut.init = 16'hdddd;
    LUT4 i162_2_lut_rep_7_2_lut (.A(resetline), .B(cena), .Z(PIN11_c_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i162_2_lut_rep_7_2_lut.init = 16'hdddd;
    LUT4 i11_4_lut (.A(counting[3]), .B(counting[10]), .C(counting[6]), 
         .D(counting[18]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i11_4_lut.init = 16'hfffe;
    FD1S3AX counting_159__i17 (.D(n83), .CK(PIN11_c), .Q(counting[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i17.GSR = "ENABLED";
    FD1S3AX counting_159__i16 (.D(n84), .CK(PIN11_c), .Q(counting[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i16.GSR = "ENABLED";
    FD1S3AX counting_159__i15 (.D(n85), .CK(PIN11_c), .Q(counting[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i15.GSR = "ENABLED";
    FD1S3AX counting_159__i14 (.D(n86), .CK(PIN11_c), .Q(counting[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i14.GSR = "ENABLED";
    FD1S3AX counting_159__i13 (.D(n87), .CK(PIN11_c), .Q(counting[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i13.GSR = "ENABLED";
    FD1S3AX counting_159__i12 (.D(n88), .CK(PIN11_c), .Q(counting[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i12.GSR = "ENABLED";
    FD1S3AX counting_159__i11 (.D(n89), .CK(PIN11_c), .Q(counting[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i11.GSR = "ENABLED";
    FD1S3AX counting_159__i10 (.D(n90), .CK(PIN11_c), .Q(counting[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i10.GSR = "ENABLED";
    FD1S3AX counting_159__i9 (.D(n91), .CK(PIN11_c), .Q(counting[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i9.GSR = "ENABLED";
    FD1S3AX counting_159__i8 (.D(n92), .CK(PIN11_c), .Q(counting[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i8.GSR = "ENABLED";
    FD1S3AX counting_159__i7 (.D(n93), .CK(PIN11_c), .Q(counting[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i7.GSR = "ENABLED";
    FD1S3AX counting_159__i6 (.D(n94), .CK(PIN11_c), .Q(counting[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i6.GSR = "ENABLED";
    FD1S3AX counting_159__i5 (.D(n95), .CK(PIN11_c), .Q(counting[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i5.GSR = "ENABLED";
    FD1S3AX counting_159__i4 (.D(n96), .CK(PIN11_c), .Q(counting[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i4.GSR = "ENABLED";
    FD1S3AX counting_159__i3 (.D(n97), .CK(PIN11_c), .Q(counting[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i3.GSR = "ENABLED";
    FD1S3AX counting_159__i2 (.D(n98), .CK(PIN11_c), .Q(counting[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i2.GSR = "ENABLED";
    FD1S3AX counting_159__i1 (.D(n99), .CK(PIN11_c), .Q(counting[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159__i1.GSR = "ENABLED";
    LUT4 i266_2_lut_4_lut_4_lut (.A(resetline), .B(bitc[0]), .C(load), 
         .D(clk_baud), .Z(n14)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i266_2_lut_4_lut_4_lut.init = 16'h3339;
    LUT4 i15_2_lut_3_lut_3_lut (.A(resetline), .B(char_count[0]), .C(cena), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i15_2_lut_3_lut_3_lut.init = 16'h3939;
    FD1S3AX resetline_10 (.D(resetline_N_20), .CK(PIN11_c), .Q(resetline));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam resetline_10.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D counting_159_add_4_19 (.A0(counting[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n664), .S0(n83), .S1(n82));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_19.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_19.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_19.INJECT1_0 = "NO";
    defparam counting_159_add_4_19.INJECT1_1 = "NO";
    CCU2D counting_159_add_4_17 (.A0(counting[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n663), .COUT(n664), .S0(n85), .S1(n84));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_17.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_17.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_17.INJECT1_0 = "NO";
    defparam counting_159_add_4_17.INJECT1_1 = "NO";
    CCU2D counting_159_add_4_15 (.A0(counting[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n662), .COUT(n663), .S0(n87), .S1(n86));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_159_add_4_15.INIT0 = 16'hfaaa;
    defparam counting_159_add_4_15.INIT1 = 16'hfaaa;
    defparam counting_159_add_4_15.INJECT1_0 = "NO";
    defparam counting_159_add_4_15.INJECT1_1 = "NO";
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    OB PIN12_pad (.I(GND_net), .O(PIN12));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[33:38])
    OB PIN13_pad (.I(GND_net), .O(PIN13));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[40:45])
    OB PIN14_pad (.I(GND_net), .O(PIN14));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[47:52])
    OB PIN17_pad (.I(GND_net), .O(PIN17));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[54:59])
    OB PIN18_pad (.I(GND_net), .O(PIN18));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[61:66])
    OB PIN19_pad (.I(GND_net), .O(PIN19));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[68:73])
    OB PIN20_pad (.I(PIN20_c_19), .O(PIN20));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[75:80])
    OB LEDn_pad (.I(GND_net), .O(LEDn));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(52[14:18])
    IB PIN10_pad (.I(PIN10), .O(PIN10_c));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[19:24])
    txstr TX0 (.char_count({Open_0, Open_1, char_count[0]}), .PIN11_c(PIN11_c), 
          .n786(n786), .n8(n8), .cena(cena), .PIN11_c_enable_9(PIN11_c_enable_9), 
          .\bitc[0] (bitc[0]), .PIN11_c_enable_31(PIN11_c_enable_31), .n240(n240), 
          .state({state_adj_172}), .n457(n457), .PIN8_c(PIN8_c), .clk_N_114(clk_N_114), 
          .n188(n188), .load(load), .n74({clk_baud}), .n14(n14), .n809(n809), 
          .resetline(resetline)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(188[7] 193[2])
    LUT4 m1_lut (.Z(n809)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    FreqDiv20Bit FreqDiv20Bit_inst (.PIN11_c(PIN11_c), .PIN10_c(PIN10_c), 
            .PIN20_c_19(PIN20_c_19), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(152[14] 156[32])
    
endmodule
//
// Verilog Description of module txstr
//

module txstr (char_count, PIN11_c, n786, n8, cena, PIN11_c_enable_9, 
            \bitc[0] , PIN11_c_enable_31, n240, state, n457, PIN8_c, 
            clk_N_114, n188, load, n74, n14, n809, resetline) /* synthesis syn_module_defined=1 */ ;
    output [2:0]char_count;
    input PIN11_c;
    input n786;
    input n8;
    output cena;
    input PIN11_c_enable_9;
    output \bitc[0] ;
    input PIN11_c_enable_31;
    input n240;
    output [1:0]state;
    output n457;
    output PIN8_c;
    input clk_N_114;
    input n188;
    output load;
    output [0:0]n74;
    input n14;
    input n809;
    input resetline;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    wire clk_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(125[11:21])
    wire [2:0]char_count_c;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(61[11:21])
    
    wire n549, n5;
    wire [3:0]n91;
    
    wire start;
    wire [2:0]n119;
    
    wire n405, n16;
    wire [7:0]data;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(43[11:15])
    
    wire n106, n135, n784, n1, n3;
    
    LUT4 i1_2_lut (.A(char_count[0]), .B(char_count_c[2]), .Z(n549)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX char_count__i0 (.D(n8), .CK(PIN11_c), .CD(n786), .Q(char_count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=193 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam char_count__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_5 (.A(char_count_c[1]), .B(char_count[0]), .Z(n5)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam i1_2_lut_adj_5.init = 16'hbbbb;
    LUT4 i270_3_lut (.A(n91[1]), .B(start), .C(n119[2]), .Z(n405)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam i270_3_lut.init = 16'hcece;
    FD1S3JX state_FSM_i1 (.D(n16), .CK(PIN11_c), .PD(n786), .Q(start));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(char_count_c[2]), .B(char_count[0]), .C(char_count_c[1]), 
         .Z(data[2])) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i1_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i44_2_lut (.A(n119[2]), .B(n91[1]), .Z(n106)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam i44_2_lut.init = 16'h8888;
    LUT4 i424_3_lut_3_lut (.A(char_count_c[2]), .B(char_count[0]), .C(char_count_c[1]), 
         .Z(n135)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i424_3_lut_3_lut.init = 16'h6a6a;
    LUT4 i1_4_lut (.A(char_count[0]), .B(cena), .C(char_count_c[2]), .D(char_count_c[1]), 
         .Z(n16)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i1_4_lut.init = 16'h4ccc;
    LUT4 i606_2_lut_rep_11 (.A(char_count_c[1]), .B(char_count[0]), .Z(n784)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i606_2_lut_rep_11.init = 16'h1111;
    LUT4 i2_2_lut_3_lut (.A(char_count_c[1]), .B(char_count[0]), .C(char_count_c[2]), 
         .Z(data[5])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_1_lut (.A(char_count[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(47[3] 57[10])
    defparam i1_1_lut.init = 16'h5555;
    FD1P3IX char_count__i1 (.D(n3), .SP(PIN11_c_enable_9), .CD(n786), 
            .CK(PIN11_c), .Q(char_count_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=193 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam char_count__i1.GSR = "ENABLED";
    FD1P3IX char_count__i2 (.D(n135), .SP(PIN11_c_enable_9), .CD(n786), 
            .CK(PIN11_c), .Q(char_count_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=193 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam char_count__i2.GSR = "ENABLED";
    LUT4 i10_2_lut (.A(char_count[0]), .B(char_count_c[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i10_2_lut.init = 16'h6666;
    FD1S3IX state_FSM_i3 (.D(n106), .CK(PIN11_c), .CD(n786), .Q(cena));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i2 (.D(n405), .CK(PIN11_c), .CD(n786), .Q(n91[1]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    uart_tx TX0 (.\bitc[0] (\bitc[0] ), .PIN11_c(PIN11_c), .PIN11_c_enable_31(PIN11_c_enable_31), 
            .n240(n240), .state({state}), .n457(n457), .PIN8_c(PIN8_c), 
            .clk_N_114(clk_N_114), .n188(n188), .n119({n119[2], Open_2, 
            load}), .n74({n74}), .\data[5] (data[5]), .\data[2] (data[2]), 
            .start(start), .\char_count[1] (char_count_c[1]), .\char_count[2] (char_count_c[2]), 
            .n786(n786), .n14(n14), .n809(n809), .n549(n549), .n5(n5), 
            .n1(n1), .n784(n784), .resetline(resetline)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/txstr.v(30[5] 38[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (\bitc[0] , PIN11_c, PIN11_c_enable_31, n240, state, 
            n457, PIN8_c, clk_N_114, n188, n119, n74, \data[5] , 
            \data[2] , start, \char_count[1] , \char_count[2] , n786, 
            n14, n809, n549, n5, n1, n784, resetline) /* synthesis syn_module_defined=1 */ ;
    output \bitc[0] ;
    input PIN11_c;
    input PIN11_c_enable_31;
    input n240;
    output [1:0]state;
    output n457;
    output PIN8_c;
    input clk_N_114;
    input n188;
    output [2:0]n119;
    output [0:0]n74;
    input \data[5] ;
    input \data[2] ;
    input start;
    input \char_count[1] ;
    input \char_count[2] ;
    input n786;
    input n14;
    input n809;
    input n549;
    input n5;
    input n1;
    input n784;
    input resetline;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    wire clk_N_114 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(125[11:21])
    wire [4:0]bitc;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(41[11:15])
    wire [4:0]n249;
    wire [18:0]shifter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(64[12:19])
    wire [1:0]next_state_1__N_111;
    wire [1:0]next_state;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(125[11:21])
    wire [1:0]n180;
    
    wire PIN11_c_enable_30;
    wire [7:0]data_r;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(45[11:17])
    
    wire PIN11_c_enable_27, n783, n745, n550, n552;
    wire [18:0]shifter_18__N_118;
    
    wire n1_c;
    wire [2:0]n119_c;
    wire [2:0]n118;
    
    LUT4 i182_2_lut_3_lut (.A(bitc[1]), .B(\bitc[0] ), .C(bitc[2]), .Z(n249[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i182_2_lut_3_lut.init = 16'h7878;
    FD1P3IX bitc__i4 (.D(n249[4]), .SP(PIN11_c_enable_31), .CD(n240), 
            .CK(PIN11_c), .Q(bitc[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i4.GSR = "ENABLED";
    FD1P3JX shifter_i7 (.D(shifter[8]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i7.GSR = "ENABLED";
    LUT4 i493_3_lut (.A(state[0]), .B(n457), .C(state[1]), .Z(next_state_1__N_111[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i493_3_lut.init = 16'h3a3a;
    FD1P3IX bitc__i3 (.D(n249[3]), .SP(PIN11_c_enable_31), .CD(n240), 
            .CK(PIN11_c), .Q(bitc[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n249[2]), .SP(PIN11_c_enable_31), .CD(n240), 
            .CK(PIN11_c), .Q(bitc[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i1 (.D(n249[1]), .SP(PIN11_c_enable_31), .CD(n240), 
            .CK(PIN11_c), .Q(bitc[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1S3AX tx_48 (.D(shifter[0]), .CK(PIN11_c), .Q(PIN8_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(99[8] 102[5])
    defparam tx_48.GSR = "ENABLED";
    FD1S3IX next_state_i0 (.D(n180[0]), .CK(clk_N_114), .CD(n188), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(135[8] 176[4])
    defparam next_state_i0.GSR = "ENABLED";
    FD1S3IX ready_53_i0 (.D(state[0]), .CK(clk_N_114), .CD(state[1]), 
            .Q(n119[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam ready_53_i0.GSR = "ENABLED";
    LUT4 i175_2_lut (.A(bitc[1]), .B(\bitc[0] ), .Z(n249[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i175_2_lut.init = 16'h6666;
    LUT4 i13_2_lut (.A(n119[0]), .B(n74[0]), .Z(PIN11_c_enable_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[12:38])
    defparam i13_2_lut.init = 16'h4444;
    FD1P3AX data_r__i5 (.D(\data[5] ), .SP(PIN11_c_enable_27), .CK(PIN11_c), 
            .Q(data_r[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i5.GSR = "ENABLED";
    LUT4 i196_3_lut_4_lut (.A(bitc[2]), .B(n783), .C(bitc[3]), .D(bitc[4]), 
         .Z(n249[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i196_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX data_r__i3 (.D(\data[2] ), .SP(PIN11_c_enable_27), .CK(PIN11_c), 
            .Q(data_r[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i3.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(state[0]), .B(bitc[4]), .C(bitc[2]), .D(n745), 
         .Z(n457)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_9_3_lut (.A(start), .B(state[1]), .C(state[0]), 
         .Z(PIN11_c_enable_27)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_9_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_4_lut (.A(start), .B(state[1]), .C(\char_count[1] ), 
         .D(state[0]), .Z(n550)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i463_2_lut_3_lut (.A(start), .B(state[1]), .C(state[0]), .Z(n180[0])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;
    defparam i463_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i591_3_lut (.A(bitc[1]), .B(\bitc[0] ), .C(bitc[3]), .Z(n745)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i591_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(start), .B(state[1]), .C(\char_count[2] ), 
         .D(state[0]), .Z(n552)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h0002;
    FD1S3IX state__i1 (.D(next_state[1]), .CK(PIN11_c), .CD(n786), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(128[8] 132[25])
    defparam state__i1.GSR = "ENABLED";
    FD1S3IX bitc__i0 (.D(n14), .CK(PIN11_c), .CD(n240), .Q(\bitc[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i0.GSR = "ENABLED";
    FD1S3IX state__i0 (.D(next_state[0]), .CK(PIN11_c), .CD(n786), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(128[8] 132[25])
    defparam state__i0.GSR = "ENABLED";
    FD1P3JX shifter_i5 (.D(shifter[6]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i5.GSR = "ENABLED";
    LUT4 mux_14_i12_3_lut (.A(shifter[12]), .B(data_r[0]), .C(n119[0]), 
         .Z(shifter_18__N_118[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i12_3_lut.init = 16'hcaca;
    FD1S3IX ready_53_i2 (.D(n1_c), .CK(clk_N_114), .CD(state[1]), .Q(n119[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam ready_53_i2.GSR = "ENABLED";
    FD1S3AX ready_53_i1 (.D(n118[1]), .CK(clk_N_114), .Q(n119_c[1]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam ready_53_i1.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_111[1]), .CK(clk_N_114), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(135[8] 176[4])
    defparam next_state_i1.GSR = "ENABLED";
    FD1P3IX shifter_i18 (.D(n809), .SP(PIN11_c_enable_30), .CD(n240), 
            .CK(PIN11_c), .Q(shifter[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i18.GSR = "ENABLED";
    LUT4 mux_14_i13_3_lut (.A(shifter[13]), .B(data_r[1]), .C(n119[0]), 
         .Z(shifter_18__N_118[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i13_3_lut.init = 16'hcaca;
    FD1P3JX shifter_i1 (.D(shifter[2]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i1.GSR = "ENABLED";
    FD1P3JX shifter_i2 (.D(shifter[3]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i2.GSR = "ENABLED";
    LUT4 mux_14_i14_3_lut (.A(shifter[14]), .B(data_r[2]), .C(n119[0]), 
         .Z(shifter_18__N_118[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i14_3_lut.init = 16'hcaca;
    FD1P3JX shifter_i3 (.D(shifter[4]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i3.GSR = "ENABLED";
    FD1P3JX shifter_i4 (.D(shifter[5]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i4.GSR = "ENABLED";
    FD1P3JX shifter_i8 (.D(shifter[9]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i8.GSR = "ENABLED";
    FD1P3JX shifter_i9 (.D(shifter[10]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i9.GSR = "ENABLED";
    FD1P3IX shifter_i11 (.D(shifter_18__N_118[11]), .SP(PIN11_c_enable_31), 
            .CD(n786), .CK(PIN11_c), .Q(shifter[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i11.GSR = "ENABLED";
    FD1P3IX shifter_i12 (.D(shifter_18__N_118[12]), .SP(PIN11_c_enable_31), 
            .CD(n786), .CK(PIN11_c), .Q(shifter[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i12.GSR = "ENABLED";
    FD1P3IX shifter_i13 (.D(shifter_18__N_118[13]), .SP(PIN11_c_enable_31), 
            .CD(n786), .CK(PIN11_c), .Q(shifter[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i13.GSR = "ENABLED";
    FD1P3IX shifter_i14 (.D(shifter_18__N_118[14]), .SP(PIN11_c_enable_31), 
            .CD(n786), .CK(PIN11_c), .Q(shifter[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i14.GSR = "ENABLED";
    FD1P3IX shifter_i16 (.D(shifter_18__N_118[16]), .SP(PIN11_c_enable_31), 
            .CD(n786), .CK(PIN11_c), .Q(shifter[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i16.GSR = "ENABLED";
    FD1P3IX shifter_i17 (.D(shifter_18__N_118[17]), .SP(PIN11_c_enable_31), 
            .CD(n786), .CK(PIN11_c), .Q(shifter[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i17.GSR = "ENABLED";
    FD1P3IX data_r__i1 (.D(n549), .SP(PIN11_c_enable_27), .CD(n550), .CK(PIN11_c), 
            .Q(data_r[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i1.GSR = "ENABLED";
    FD1P3IX data_r__i2 (.D(n5), .SP(PIN11_c_enable_27), .CD(n552), .CK(PIN11_c), 
            .Q(data_r[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i2.GSR = "ENABLED";
    FD1P3JX data_r__i4 (.D(n1), .SP(PIN11_c_enable_27), .PD(n550), .CK(PIN11_c), 
            .Q(data_r[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i4.GSR = "ENABLED";
    FD1P3JX data_r__i6 (.D(n784), .SP(PIN11_c_enable_27), .PD(n552), .CK(PIN11_c), 
            .Q(data_r[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i6.GSR = "ENABLED";
    FD1P3JX shifter_i0 (.D(shifter[1]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i0.GSR = "ENABLED";
    FD1P3IX shifter_i15 (.D(shifter[16]), .SP(PIN11_c_enable_30), .CD(n240), 
            .CK(PIN11_c), .Q(shifter[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i15.GSR = "ENABLED";
    FD1P3IX shifter_i10 (.D(shifter[11]), .SP(PIN11_c_enable_30), .CD(n240), 
            .CK(PIN11_c), .Q(shifter[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i10.GSR = "ENABLED";
    LUT4 i262_1_lut (.A(state[0]), .Z(n1_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i262_1_lut.init = 16'h5555;
    LUT4 i177_2_lut_rep_10 (.A(bitc[1]), .B(\bitc[0] ), .Z(n783)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i177_2_lut_rep_10.init = 16'h8888;
    LUT4 i189_2_lut_3_lut_4_lut (.A(bitc[1]), .B(\bitc[0] ), .C(bitc[3]), 
         .D(bitc[2]), .Z(n249[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i189_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 mux_14_i15_3_lut (.A(shifter[15]), .B(data_r[3]), .C(n119[0]), 
         .Z(shifter_18__N_118[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i15_3_lut.init = 16'hcaca;
    LUT4 mux_14_i18_3_lut (.A(shifter[18]), .B(data_r[6]), .C(n119[0]), 
         .Z(shifter_18__N_118[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i18_3_lut.init = 16'hcaca;
    LUT4 i264_2_lut (.A(state[0]), .B(state[1]), .Z(n118[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i264_2_lut.init = 16'h6666;
    FD1P3JX shifter_i6 (.D(shifter[7]), .SP(PIN11_c_enable_31), .PD(n240), 
            .CK(PIN11_c), .Q(shifter[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i6.GSR = "ENABLED";
    LUT4 mux_14_i17_3_lut (.A(shifter[17]), .B(data_r[5]), .C(n119[0]), 
         .Z(shifter_18__N_118[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i17_3_lut.init = 16'hcaca;
    baudgen_tx BAUD0 (.baud_en(n119_c[1]), .PIN11_c(PIN11_c), .n786(n786), 
            .resetline(resetline), .n74({n74})) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/uart_tx.v(106[1] 112[4])
    
endmodule
//
// Verilog Description of module baudgen_tx
//

module baudgen_tx (baud_en, PIN11_c, n786, resetline, n74) /* synthesis syn_module_defined=1 */ ;
    input baud_en;
    input PIN11_c;
    input n786;
    input resetline;
    output [0:0]n74;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    wire [6:0]divcounter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(45[13:23])
    wire [6:0]divcounter_6__N_159;
    
    wire n785, n781, n13, n668;
    wire [6:0]n114;
    
    wire n727, n731, n778, n743, n319;
    
    LUT4 i602_2_lut (.A(divcounter[0]), .B(baud_en), .Z(divcounter_6__N_159[0])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i602_2_lut.init = 16'h7777;
    LUT4 i213_2_lut_rep_12 (.A(divcounter[1]), .B(divcounter[0]), .Z(n785)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i213_2_lut_rep_12.init = 16'h8888;
    FD1S3IX divcounter__i0 (.D(divcounter_6__N_159[0]), .CK(PIN11_c), .CD(n786), 
            .Q(divcounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i0.GSR = "ENABLED";
    LUT4 i220_2_lut_rep_8_3_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[2]), 
         .Z(n781)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i220_2_lut_rep_8_3_lut.init = 16'h8080;
    LUT4 i596_3_lut (.A(baud_en), .B(divcounter[0]), .C(divcounter[1]), 
         .Z(divcounter_6__N_159[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i596_3_lut.init = 16'h7d7d;
    LUT4 i609_3_lut (.A(baud_en), .B(resetline), .C(n13), .Z(n668)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i609_3_lut.init = 16'h7f7f;
    LUT4 i599_3_lut_4_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[2]), 
         .D(baud_en), .Z(divcounter_6__N_159[2])) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i599_3_lut_4_lut.init = 16'h78ff;
    LUT4 i225_2_lut_3_lut_4_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[3]), 
         .D(divcounter[2]), .Z(n114[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i225_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5_4_lut (.A(divcounter[6]), .B(n727), .C(n785), .D(n731), 
         .Z(n13)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i5_4_lut.init = 16'hdfff;
    LUT4 i577_2_lut (.A(divcounter[2]), .B(divcounter[5]), .Z(n731)) /* synthesis lut_function=(A (B)) */ ;
    defparam i577_2_lut.init = 16'h8888;
    LUT4 i232_2_lut_3_lut_4_lut (.A(divcounter[2]), .B(n785), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n114[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i232_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i472_4_lut (.A(divcounter[5]), .B(baud_en), .C(n13), .D(n778), 
         .Z(divcounter_6__N_159[5])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i472_4_lut.init = 16'h73b3;
    LUT4 i234_2_lut_rep_5_3_lut_4_lut (.A(divcounter[2]), .B(n785), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n778)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i234_2_lut_rep_5_3_lut_4_lut.init = 16'h8000;
    FD1S3IX divcounter__i4 (.D(n114[4]), .CK(PIN11_c), .CD(n668), .Q(divcounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i4.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(n727), .B(n743), .C(baud_en), .D(divcounter[6]), 
         .Z(n74[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i6_4_lut.init = 16'h0010;
    LUT4 i241_2_lut_3_lut_4_lut (.A(divcounter[3]), .B(n781), .C(divcounter[5]), 
         .D(divcounter[4]), .Z(n319)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i241_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1S3IX divcounter__i6 (.D(divcounter_6__N_159[6]), .CK(PIN11_c), .CD(n786), 
            .Q(divcounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i6.GSR = "ENABLED";
    FD1S3IX divcounter__i5 (.D(divcounter_6__N_159[5]), .CK(PIN11_c), .CD(n786), 
            .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i5.GSR = "ENABLED";
    FD1S3IX divcounter__i3 (.D(n114[3]), .CK(PIN11_c), .CD(n668), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i3.GSR = "ENABLED";
    FD1S3IX divcounter__i2 (.D(divcounter_6__N_159[2]), .CK(PIN11_c), .CD(n786), 
            .Q(divcounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i2.GSR = "ENABLED";
    FD1S3IX divcounter__i1 (.D(divcounter_6__N_159[1]), .CK(PIN11_c), .CD(n786), 
            .Q(divcounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i1.GSR = "ENABLED";
    LUT4 i589_4_lut (.A(divcounter[0]), .B(divcounter[1]), .C(divcounter[5]), 
         .D(divcounter[2]), .Z(n743)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i589_4_lut.init = 16'hfffe;
    LUT4 i573_2_lut (.A(divcounter[4]), .B(divcounter[3]), .Z(n727)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i573_2_lut.init = 16'heeee;
    LUT4 i471_4_lut (.A(divcounter[6]), .B(baud_en), .C(n13), .D(n319), 
         .Z(divcounter_6__N_159[6])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i471_4_lut.init = 16'h73b3;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

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
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/send_string.v(50[26:31])
    wire [19:0]n149;
    wire [19:0]n85;
    
    wire n655, n654, n653, n652, n651, n650, n649, n648, n647, 
        n646;
    
    FD1S3IX count_160__i0 (.D(n85[0]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i0.GSR = "ENABLED";
    CCU2D count_160_add_4_21 (.A0(PIN20_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n655), .S0(n85[19]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_21.INIT0 = 16'hfaaa;
    defparam count_160_add_4_21.INIT1 = 16'h0000;
    defparam count_160_add_4_21.INJECT1_0 = "NO";
    defparam count_160_add_4_21.INJECT1_1 = "NO";
    CCU2D count_160_add_4_19 (.A0(n149[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n654), .COUT(n655), .S0(n85[17]), .S1(n85[18]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_19.INIT0 = 16'hfaaa;
    defparam count_160_add_4_19.INIT1 = 16'hfaaa;
    defparam count_160_add_4_19.INJECT1_0 = "NO";
    defparam count_160_add_4_19.INJECT1_1 = "NO";
    FD1S3IX count_160__i19 (.D(n85[19]), .CK(PIN11_c), .CD(PIN10_c), .Q(PIN20_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i19.GSR = "ENABLED";
    FD1S3IX count_160__i18 (.D(n85[18]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i18.GSR = "ENABLED";
    FD1S3IX count_160__i17 (.D(n85[17]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i17.GSR = "ENABLED";
    FD1S3IX count_160__i16 (.D(n85[16]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i16.GSR = "ENABLED";
    FD1S3IX count_160__i15 (.D(n85[15]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i15.GSR = "ENABLED";
    FD1S3IX count_160__i14 (.D(n85[14]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i14.GSR = "ENABLED";
    FD1S3IX count_160__i13 (.D(n85[13]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i13.GSR = "ENABLED";
    FD1S3IX count_160__i12 (.D(n85[12]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i12.GSR = "ENABLED";
    FD1S3IX count_160__i11 (.D(n85[11]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i11.GSR = "ENABLED";
    FD1S3IX count_160__i10 (.D(n85[10]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i10.GSR = "ENABLED";
    FD1S3IX count_160__i9 (.D(n85[9]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i9.GSR = "ENABLED";
    FD1S3IX count_160__i8 (.D(n85[8]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i8.GSR = "ENABLED";
    FD1S3IX count_160__i7 (.D(n85[7]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i7.GSR = "ENABLED";
    FD1S3IX count_160__i6 (.D(n85[6]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i6.GSR = "ENABLED";
    FD1S3IX count_160__i5 (.D(n85[5]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i5.GSR = "ENABLED";
    FD1S3IX count_160__i4 (.D(n85[4]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i4.GSR = "ENABLED";
    FD1S3IX count_160__i3 (.D(n85[3]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i3.GSR = "ENABLED";
    FD1S3IX count_160__i2 (.D(n85[2]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i2.GSR = "ENABLED";
    FD1S3IX count_160__i1 (.D(n85[1]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160__i1.GSR = "ENABLED";
    CCU2D count_160_add_4_17 (.A0(n149[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n653), .COUT(n654), .S0(n85[15]), .S1(n85[16]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_17.INIT0 = 16'hfaaa;
    defparam count_160_add_4_17.INIT1 = 16'hfaaa;
    defparam count_160_add_4_17.INJECT1_0 = "NO";
    defparam count_160_add_4_17.INJECT1_1 = "NO";
    CCU2D count_160_add_4_15 (.A0(n149[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n652), .COUT(n653), .S0(n85[13]), .S1(n85[14]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_15.INIT0 = 16'hfaaa;
    defparam count_160_add_4_15.INIT1 = 16'hfaaa;
    defparam count_160_add_4_15.INJECT1_0 = "NO";
    defparam count_160_add_4_15.INJECT1_1 = "NO";
    CCU2D count_160_add_4_13 (.A0(n149[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n651), .COUT(n652), .S0(n85[11]), .S1(n85[12]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_13.INIT0 = 16'hfaaa;
    defparam count_160_add_4_13.INIT1 = 16'hfaaa;
    defparam count_160_add_4_13.INJECT1_0 = "NO";
    defparam count_160_add_4_13.INJECT1_1 = "NO";
    CCU2D count_160_add_4_11 (.A0(n149[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n650), .COUT(n651), .S0(n85[9]), .S1(n85[10]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_11.INIT0 = 16'hfaaa;
    defparam count_160_add_4_11.INIT1 = 16'hfaaa;
    defparam count_160_add_4_11.INJECT1_0 = "NO";
    defparam count_160_add_4_11.INJECT1_1 = "NO";
    CCU2D count_160_add_4_9 (.A0(n149[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n649), .COUT(n650), .S0(n85[7]), .S1(n85[8]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_9.INIT0 = 16'hfaaa;
    defparam count_160_add_4_9.INIT1 = 16'hfaaa;
    defparam count_160_add_4_9.INJECT1_0 = "NO";
    defparam count_160_add_4_9.INJECT1_1 = "NO";
    CCU2D count_160_add_4_7 (.A0(n149[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n648), .COUT(n649), .S0(n85[5]), .S1(n85[6]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_7.INIT0 = 16'hfaaa;
    defparam count_160_add_4_7.INIT1 = 16'hfaaa;
    defparam count_160_add_4_7.INJECT1_0 = "NO";
    defparam count_160_add_4_7.INJECT1_1 = "NO";
    CCU2D count_160_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n647), .COUT(n648), .S0(n85[3]), .S1(n85[4]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_5.INIT0 = 16'hfaaa;
    defparam count_160_add_4_5.INIT1 = 16'hfaaa;
    defparam count_160_add_4_5.INJECT1_0 = "NO";
    defparam count_160_add_4_5.INJECT1_1 = "NO";
    CCU2D count_160_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n646), .COUT(n647), .S0(n85[1]), .S1(n85[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_3.INIT0 = 16'hfaaa;
    defparam count_160_add_4_3.INIT1 = 16'hfaaa;
    defparam count_160_add_4_3.INJECT1_0 = "NO";
    defparam count_160_add_4_3.INJECT1_1 = "NO";
    CCU2D count_160_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n646), .S1(n85[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv1 - x02-256/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_160_add_4_1.INIT0 = 16'hF000;
    defparam count_160_add_4_1.INIT1 = 16'h0555;
    defparam count_160_add_4_1.INJECT1_0 = "NO";
    defparam count_160_add_4_1.INJECT1_1 = "NO";
    
endmodule
