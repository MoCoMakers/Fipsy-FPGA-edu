// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.1.119
// Netlist written on Wed Mar 14 15:16:22 2018
//
// Verilog Description of module MakeFPGA_Top
//

module MakeFPGA_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, 
            PIN14, PIN17, PIN18, PIN19, PIN20, LEDn) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(45[8:20])
    output PIN7 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[7:11])
    output PIN8;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(52[8:12])
    output PIN9 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[13:17])
    input PIN10 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[19:24])
    output PIN11 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    output PIN12 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[33:38])
    output PIN13 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[40:45])
    output PIN14 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[47:52])
    output PIN17 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[54:59])
    output PIN18 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[61:66])
    output PIN19 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[68:73])
    output PIN20 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[75:80])
    output LEDn;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(52[14:18])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    wire clk_N_114 /* synthesis is_inv_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(125[11:21])
    
    wire GND_net, VCC_net, PIN8_c, PIN10_c, PIN20_c_19;
    wire [18:0]counting;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(176[12:20])
    
    wire resetline, resetline_N_20, n667, n36, n666, n665, n664;
    wire [2:0]char_count;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(61[11:21])
    
    wire cena, n663, n662, clk_baud;
    wire [4:0]bitc;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(41[11:15])
    
    wire load;
    wire [1:0]state_adj_172;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(124[11:16])
    
    wire n661, n660, n668, n30, n192, n244, n8, n24, n759, 
        n23, n34, n28, n32, n14, n461, PIN11_c_enable_9, n787, 
        PIN11_c_enable_31, n82, n83, n84, n85, n86, n87, n88, 
        n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, 
        n99, n100;
    
    VHI i2 (.Z(VCC_net));
    INV i578 (.A(PIN11_c), .Z(clk_N_114));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(PIN11_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "12.09";
    CCU2D counting_163_add_4_13 (.A0(counting[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n665), .COUT(n666), .S0(n89), .S1(n88));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_13.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_13.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_13.INJECT1_0 = "NO";
    defparam counting_163_add_4_13.INJECT1_1 = "NO";
    CCU2D counting_163_add_4_11 (.A0(counting[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n664), .COUT(n665), .S0(n91), .S1(n90));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_11.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_11.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_11.INJECT1_0 = "NO";
    defparam counting_163_add_4_11.INJECT1_1 = "NO";
    CCU2D counting_163_add_4_9 (.A0(counting[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n663), .COUT(n664), .S0(n93), .S1(n92));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_9.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_9.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_9.INJECT1_0 = "NO";
    defparam counting_163_add_4_9.INJECT1_1 = "NO";
    LUT4 i133_3_lut (.A(state_adj_172[0]), .B(n461), .C(state_adj_172[1]), 
         .Z(n192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(124[11:16])
    defparam i133_3_lut.init = 16'hcaca;
    OB PIN8_pad (.I(PIN8_c), .O(PIN8));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(52[8:12])
    CCU2D counting_163_add_4_7 (.A0(counting[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n662), .COUT(n663), .S0(n95), .S1(n94));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_7.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_7.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_7.INJECT1_0 = "NO";
    defparam counting_163_add_4_7.INJECT1_1 = "NO";
    OB PIN7_pad (.I(GND_net), .O(PIN7));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[7:11])
    CCU2D counting_163_add_4_5 (.A0(counting[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n661), .COUT(n662), .S0(n97), .S1(n96));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_5.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_5.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_5.INJECT1_0 = "NO";
    defparam counting_163_add_4_5.INJECT1_1 = "NO";
    CCU2D counting_163_add_4_3 (.A0(counting[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n660), .COUT(n661), .S0(n99), .S1(n98));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_3.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_3.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_3.INJECT1_0 = "NO";
    defparam counting_163_add_4_3.INJECT1_1 = "NO";
    FD1S3AX counting_163__i0 (.D(n100), .CK(PIN11_c), .Q(counting[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i0.GSR = "ENABLED";
    CCU2D counting_163_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n660), .S1(n100));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_1.INIT0 = 16'hF000;
    defparam counting_163_add_4_1.INIT1 = 16'h0555;
    defparam counting_163_add_4_1.INJECT1_0 = "NO";
    defparam counting_163_add_4_1.INJECT1_1 = "NO";
    LUT4 i88_1_lut_rep_16 (.A(resetline), .Z(n759)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i88_1_lut_rep_16.init = 16'h5555;
    LUT4 i2_3_lut_rep_10_3_lut (.A(resetline), .B(load), .C(clk_baud), 
         .Z(PIN11_c_enable_31)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i2_3_lut_rep_10_3_lut.init = 16'hfdfd;
    OB PIN9_pad (.I(GND_net), .O(PIN9));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[13:17])
    LUT4 i289_2_lut_2_lut (.A(resetline), .B(load), .Z(n244)) /* synthesis lut_function=((B)+!A) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i289_2_lut_2_lut.init = 16'hdddd;
    FD1S3AX counting_163__i18 (.D(n82), .CK(PIN11_c), .Q(counting[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i18.GSR = "ENABLED";
    LUT4 i166_2_lut_rep_12_2_lut (.A(resetline), .B(cena), .Z(PIN11_c_enable_9)) /* synthesis lut_function=((B)+!A) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i166_2_lut_rep_12_2_lut.init = 16'hdddd;
    LUT4 i18_4_lut (.A(n23), .B(n36), .C(n32), .D(n24), .Z(resetline_N_20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(counting[13]), .B(counting[17]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(counting[12]), .B(n34), .C(n28), .D(counting[1]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(counting[5]), .B(counting[0]), .C(counting[4]), 
         .D(counting[8]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i13_4_lut.init = 16'hfffe;
    FD1S3AX counting_163__i17 (.D(n83), .CK(PIN11_c), .Q(counting[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i17.GSR = "ENABLED";
    FD1S3AX counting_163__i16 (.D(n84), .CK(PIN11_c), .Q(counting[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i16.GSR = "ENABLED";
    FD1S3AX counting_163__i15 (.D(n85), .CK(PIN11_c), .Q(counting[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i15.GSR = "ENABLED";
    FD1S3AX counting_163__i14 (.D(n86), .CK(PIN11_c), .Q(counting[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i14.GSR = "ENABLED";
    FD1S3AX counting_163__i13 (.D(n87), .CK(PIN11_c), .Q(counting[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i13.GSR = "ENABLED";
    FD1S3AX counting_163__i12 (.D(n88), .CK(PIN11_c), .Q(counting[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i12.GSR = "ENABLED";
    FD1S3AX counting_163__i11 (.D(n89), .CK(PIN11_c), .Q(counting[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i11.GSR = "ENABLED";
    FD1S3AX counting_163__i10 (.D(n90), .CK(PIN11_c), .Q(counting[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i10.GSR = "ENABLED";
    FD1S3AX counting_163__i9 (.D(n91), .CK(PIN11_c), .Q(counting[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i9.GSR = "ENABLED";
    FD1S3AX counting_163__i8 (.D(n92), .CK(PIN11_c), .Q(counting[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i8.GSR = "ENABLED";
    FD1S3AX counting_163__i7 (.D(n93), .CK(PIN11_c), .Q(counting[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i7.GSR = "ENABLED";
    FD1S3AX counting_163__i6 (.D(n94), .CK(PIN11_c), .Q(counting[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i6.GSR = "ENABLED";
    FD1S3AX counting_163__i5 (.D(n95), .CK(PIN11_c), .Q(counting[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i5.GSR = "ENABLED";
    FD1S3AX counting_163__i4 (.D(n96), .CK(PIN11_c), .Q(counting[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i4.GSR = "ENABLED";
    FD1S3AX counting_163__i3 (.D(n97), .CK(PIN11_c), .Q(counting[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i3.GSR = "ENABLED";
    FD1S3AX counting_163__i2 (.D(n98), .CK(PIN11_c), .Q(counting[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i2.GSR = "ENABLED";
    FD1S3AX counting_163__i1 (.D(n99), .CK(PIN11_c), .Q(counting[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163__i1.GSR = "ENABLED";
    LUT4 i5_2_lut (.A(counting[15]), .B(counting[16]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i270_2_lut_4_lut_4_lut (.A(resetline), .B(bitc[0]), .C(load), 
         .D(clk_baud), .Z(n14)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i270_2_lut_4_lut_4_lut.init = 16'h3339;
    LUT4 i15_2_lut_3_lut_3_lut (.A(resetline), .B(char_count[0]), .C(cena), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam i15_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i15_4_lut (.A(counting[14]), .B(n30), .C(counting[11]), .D(counting[7]), 
         .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i9_2_lut (.A(counting[2]), .B(counting[9]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i11_4_lut (.A(counting[3]), .B(counting[10]), .C(counting[6]), 
         .D(counting[18]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(182[7:18])
    defparam i11_4_lut.init = 16'hfffe;
    FD1S3AX resetline_10 (.D(resetline_N_20), .CK(PIN11_c), .Q(resetline));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(179[8] 186[5])
    defparam resetline_10.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D counting_163_add_4_19 (.A0(counting[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n668), .S0(n83), .S1(n82));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_19.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_19.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_19.INJECT1_0 = "NO";
    defparam counting_163_add_4_19.INJECT1_1 = "NO";
    CCU2D counting_163_add_4_17 (.A0(counting[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n667), .COUT(n668), .S0(n85), .S1(n84));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_17.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_17.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_17.INJECT1_0 = "NO";
    defparam counting_163_add_4_17.INJECT1_1 = "NO";
    CCU2D counting_163_add_4_15 (.A0(counting[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counting[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n666), .COUT(n667), .S0(n87), .S1(n86));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(181[15:28])
    defparam counting_163_add_4_15.INIT0 = 16'hfaaa;
    defparam counting_163_add_4_15.INIT1 = 16'hfaaa;
    defparam counting_163_add_4_15.INJECT1_0 = "NO";
    defparam counting_163_add_4_15.INJECT1_1 = "NO";
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    OB PIN12_pad (.I(GND_net), .O(PIN12));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[33:38])
    OB PIN13_pad (.I(GND_net), .O(PIN13));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[40:45])
    OB PIN14_pad (.I(GND_net), .O(PIN14));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[47:52])
    OB PIN17_pad (.I(GND_net), .O(PIN17));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[54:59])
    OB PIN18_pad (.I(GND_net), .O(PIN18));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[61:66])
    OB PIN19_pad (.I(GND_net), .O(PIN19));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[68:73])
    OB PIN20_pad (.I(PIN20_c_19), .O(PIN20));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[75:80])
    OB LEDn_pad (.I(GND_net), .O(LEDn));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(52[14:18])
    IB PIN10_pad (.I(PIN10), .O(PIN10_c));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[19:24])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n787)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    txstr TX0 (.char_count({Open_0, Open_1, char_count[0]}), .PIN11_c(PIN11_c), 
          .n759(n759), .n8(n8), .PIN11_c_enable_9(PIN11_c_enable_9), .cena(cena), 
          .state({state_adj_172}), .n461(n461), .load(load), .n74({clk_baud}), 
          .\bitc[0] (bitc[0]), .PIN11_c_enable_31(PIN11_c_enable_31), .n244(n244), 
          .PIN8_c(PIN8_c), .clk_N_114(clk_N_114), .n192(n192), .n14(n14), 
          .n787(n787), .resetline(resetline)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(188[7] 193[2])
    VLO i1 (.Z(GND_net));
    FreqDiv20Bit FreqDiv20Bit_inst (.PIN11_c(PIN11_c), .PIN10_c(PIN10_c), 
            .PIN20_c_19(PIN20_c_19), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(152[14] 156[32])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module txstr
//

module txstr (char_count, PIN11_c, n759, n8, PIN11_c_enable_9, cena, 
            state, n461, load, n74, \bitc[0] , PIN11_c_enable_31, 
            n244, PIN8_c, clk_N_114, n192, n14, n787, resetline) /* synthesis syn_module_defined=1 */ ;
    output [2:0]char_count;
    input PIN11_c;
    input n759;
    input n8;
    input PIN11_c_enable_9;
    output cena;
    output [1:0]state;
    output n461;
    output load;
    output [0:0]n74;
    output \bitc[0] ;
    input PIN11_c_enable_31;
    input n244;
    output PIN8_c;
    input clk_N_114;
    input n192;
    input n14;
    input n787;
    input resetline;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    wire clk_N_114 /* synthesis is_inv_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(125[11:21])
    wire [2:0]n119;
    wire [3:0]n91;
    
    wire n106, start, n409, n16;
    wire [2:0]char_count_c;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(61[11:21])
    wire [7:0]data;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(43[11:15])
    
    wire n135, n758, n3, n553, n5, n1;
    
    FD1S3IX char_count__i0 (.D(n8), .CK(PIN11_c), .CD(n759), .Q(char_count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=193 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam char_count__i0.GSR = "ENABLED";
    LUT4 i44_2_lut (.A(n119[2]), .B(n91[1]), .Z(n106)) /* synthesis lut_function=(A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam i44_2_lut.init = 16'h8888;
    LUT4 i274_3_lut (.A(n91[1]), .B(start), .C(n119[2]), .Z(n409)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam i274_3_lut.init = 16'hcece;
    FD1S3JX state_FSM_i1 (.D(n16), .CK(PIN11_c), .PD(n759), .Q(start));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(char_count_c[1]), .B(char_count[0]), .C(char_count_c[2]), 
         .Z(data[5])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(char_count_c[2]), .B(char_count[0]), .C(char_count_c[1]), 
         .Z(data[2])) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i1_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i428_3_lut_3_lut (.A(char_count_c[2]), .B(char_count[0]), .C(char_count_c[1]), 
         .Z(n135)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i428_3_lut_3_lut.init = 16'h6a6a;
    LUT4 i572_2_lut_rep_15 (.A(char_count_c[1]), .B(char_count[0]), .Z(n758)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i572_2_lut_rep_15.init = 16'h1111;
    LUT4 i10_2_lut (.A(char_count[0]), .B(char_count_c[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i10_2_lut.init = 16'h6666;
    FD1P3IX char_count__i1 (.D(n3), .SP(PIN11_c_enable_9), .CD(n759), 
            .CK(PIN11_c), .Q(char_count_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=193 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam char_count__i1.GSR = "ENABLED";
    FD1P3IX char_count__i2 (.D(n135), .SP(PIN11_c_enable_9), .CD(n759), 
            .CK(PIN11_c), .Q(char_count_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=193 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam char_count__i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(char_count[0]), .B(char_count_c[2]), .Z(n553)) /* synthesis lut_function=(A+(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_5 (.A(char_count_c[1]), .B(char_count[0]), .Z(n5)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(64[8] 68[33])
    defparam i1_2_lut_adj_5.init = 16'hbbbb;
    LUT4 i1_1_lut (.A(char_count[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(68[18:32])
    defparam i1_1_lut.init = 16'h5555;
    FD1S3IX state_FSM_i3 (.D(n106), .CK(PIN11_c), .CD(n759), .Q(cena));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i2 (.D(n409), .CK(PIN11_c), .CD(n759), .Q(n91[1]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(96[3] 119[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(char_count[0]), .B(cena), .C(char_count_c[2]), .D(char_count_c[1]), 
         .Z(n16)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(61[11:21])
    defparam i1_4_lut.init = 16'h4ccc;
    uart_tx TX0 (.state({state}), .n461(n461), .n119({n119[2], Open_2, 
            load}), .n74({n74}), .\bitc[0] (\bitc[0] ), .PIN11_c(PIN11_c), 
            .PIN11_c_enable_31(PIN11_c_enable_31), .n244(n244), .PIN8_c(PIN8_c), 
            .clk_N_114(clk_N_114), .n192(n192), .start(start), .\data[5] (data[5]), 
            .\char_count[2] (char_count_c[2]), .\data[2] (data[2]), .\char_count[1] (char_count_c[1]), 
            .n759(n759), .n14(n14), .n787(n787), .n553(n553), .n5(n5), 
            .n1(n1), .n758(n758), .resetline(resetline)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/txstr.v(30[5] 38[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (state, n461, n119, n74, \bitc[0] , PIN11_c, PIN11_c_enable_31, 
            n244, PIN8_c, clk_N_114, n192, start, \data[5] , \char_count[2] , 
            \data[2] , \char_count[1] , n759, n14, n787, n553, n5, 
            n1, n758, resetline) /* synthesis syn_module_defined=1 */ ;
    output [1:0]state;
    output n461;
    output [2:0]n119;
    output [0:0]n74;
    output \bitc[0] ;
    input PIN11_c;
    input PIN11_c_enable_31;
    input n244;
    output PIN8_c;
    input clk_N_114;
    input n192;
    input start;
    input \data[5] ;
    input \char_count[2] ;
    input \data[2] ;
    input \char_count[1] ;
    input n759;
    input n14;
    input n787;
    input n553;
    input n5;
    input n1;
    input n758;
    input resetline;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    wire clk_N_114 /* synthesis is_inv_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(125[11:21])
    wire [2:0]n118;
    wire [1:0]next_state_1__N_111;
    
    wire PIN11_c_enable_30;
    wire [4:0]bitc;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(41[11:15])
    wire [4:0]n249;
    wire [18:0]shifter;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(64[12:19])
    
    wire n713;
    wire [1:0]next_state;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(125[11:21])
    wire [1:0]n184;
    
    wire PIN11_c_enable_27;
    wire [7:0]data_r;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(45[11:17])
    
    wire n556;
    wire [18:0]shifter_18__N_118;
    
    wire n1_c, n554;
    wire [2:0]n119_c;
    
    wire n760;
    
    LUT4 i268_2_lut (.A(state[0]), .B(state[1]), .Z(n118[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i268_2_lut.init = 16'h6666;
    LUT4 i495_3_lut (.A(state[0]), .B(n461), .C(state[1]), .Z(next_state_1__N_111[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i495_3_lut.init = 16'h3a3a;
    LUT4 i13_2_lut (.A(n119[0]), .B(n74[0]), .Z(PIN11_c_enable_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[12:38])
    defparam i13_2_lut.init = 16'h4444;
    LUT4 i179_2_lut (.A(bitc[1]), .B(\bitc[0] ), .Z(n249[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i179_2_lut.init = 16'h6666;
    FD1P3IX bitc__i4 (.D(n249[4]), .SP(PIN11_c_enable_31), .CD(n244), 
            .CK(PIN11_c), .Q(bitc[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i4.GSR = "ENABLED";
    FD1P3JX shifter_i7 (.D(shifter[8]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i7.GSR = "ENABLED";
    FD1P3IX bitc__i3 (.D(n249[3]), .SP(PIN11_c_enable_31), .CD(n244), 
            .CK(PIN11_c), .Q(bitc[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n249[2]), .SP(PIN11_c_enable_31), .CD(n244), 
            .CK(PIN11_c), .Q(bitc[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i1 (.D(n249[1]), .SP(PIN11_c_enable_31), .CD(n244), 
            .CK(PIN11_c), .Q(bitc[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1S3AX tx_48 (.D(shifter[0]), .CK(PIN11_c), .Q(PIN8_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(99[8] 102[5])
    defparam tx_48.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(state[0]), .B(bitc[4]), .C(bitc[2]), .D(n713), 
         .Z(n461)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    FD1S3IX next_state_i0 (.D(n184[0]), .CK(clk_N_114), .CD(n192), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(135[8] 176[4])
    defparam next_state_i0.GSR = "ENABLED";
    FD1S3IX ready_53_i0 (.D(state[0]), .CK(clk_N_114), .CD(state[1]), 
            .Q(n119[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam ready_53_i0.GSR = "ENABLED";
    LUT4 i559_3_lut (.A(bitc[1]), .B(\bitc[0] ), .C(bitc[3]), .Z(n713)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i559_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_13_3_lut (.A(start), .B(state[1]), .C(state[0]), 
         .Z(PIN11_c_enable_27)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_13_3_lut.init = 16'h0202;
    FD1P3AX data_r__i5 (.D(\data[5] ), .SP(PIN11_c_enable_27), .CK(PIN11_c), 
            .Q(data_r[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(start), .B(state[1]), .C(\char_count[2] ), 
         .D(state[0]), .Z(n556)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 mux_14_i12_3_lut (.A(shifter[12]), .B(data_r[0]), .C(n119[0]), 
         .Z(shifter_18__N_118[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i12_3_lut.init = 16'hcaca;
    LUT4 i266_1_lut (.A(state[0]), .Z(n1_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam i266_1_lut.init = 16'h5555;
    FD1P3AX data_r__i3 (.D(\data[2] ), .SP(PIN11_c_enable_27), .CK(PIN11_c), 
            .Q(data_r[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i3.GSR = "ENABLED";
    LUT4 i477_2_lut_3_lut (.A(start), .B(state[1]), .C(state[0]), .Z(n184[0])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;
    defparam i477_2_lut_3_lut.init = 16'hf2f2;
    LUT4 mux_14_i13_3_lut (.A(shifter[13]), .B(data_r[1]), .C(n119[0]), 
         .Z(shifter_18__N_118[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i13_3_lut.init = 16'hcaca;
    LUT4 mux_14_i14_3_lut (.A(shifter[14]), .B(data_r[2]), .C(n119[0]), 
         .Z(shifter_18__N_118[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i14_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(start), .B(state[1]), .C(\char_count[1] ), 
         .D(state[0]), .Z(n554)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h0020;
    FD1S3IX state__i1 (.D(next_state[1]), .CK(PIN11_c), .CD(n759), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(128[8] 132[25])
    defparam state__i1.GSR = "ENABLED";
    LUT4 mux_14_i15_3_lut (.A(shifter[15]), .B(data_r[3]), .C(n119[0]), 
         .Z(shifter_18__N_118[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i15_3_lut.init = 16'hcaca;
    LUT4 mux_14_i17_3_lut (.A(shifter[17]), .B(data_r[5]), .C(n119[0]), 
         .Z(shifter_18__N_118[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i17_3_lut.init = 16'hcaca;
    LUT4 mux_14_i18_3_lut (.A(shifter[18]), .B(data_r[6]), .C(n119[0]), 
         .Z(shifter_18__N_118[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(80[8] 81[38])
    defparam mux_14_i18_3_lut.init = 16'hcaca;
    FD1S3IX bitc__i0 (.D(n14), .CK(PIN11_c), .CD(n244), .Q(\bitc[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(86[8] 93[22])
    defparam bitc__i0.GSR = "ENABLED";
    FD1S3IX state__i0 (.D(next_state[0]), .CK(PIN11_c), .CD(n759), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(128[8] 132[25])
    defparam state__i0.GSR = "ENABLED";
    FD1P3JX shifter_i5 (.D(shifter[6]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i5.GSR = "ENABLED";
    FD1S3IX ready_53_i2 (.D(n1_c), .CK(clk_N_114), .CD(state[1]), .Q(n119[2]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam ready_53_i2.GSR = "ENABLED";
    FD1S3AX ready_53_i1 (.D(n118[1]), .CK(clk_N_114), .Q(n119_c[1]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(142[3] 175[10])
    defparam ready_53_i1.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_111[1]), .CK(clk_N_114), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(135[8] 176[4])
    defparam next_state_i1.GSR = "ENABLED";
    FD1P3IX shifter_i18 (.D(n787), .SP(PIN11_c_enable_30), .CD(n244), 
            .CK(PIN11_c), .Q(shifter[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i18.GSR = "ENABLED";
    LUT4 i181_2_lut_rep_17 (.A(bitc[1]), .B(\bitc[0] ), .Z(n760)) /* synthesis lut_function=(A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i181_2_lut_rep_17.init = 16'h8888;
    FD1P3JX shifter_i1 (.D(shifter[2]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i1.GSR = "ENABLED";
    FD1P3JX shifter_i2 (.D(shifter[3]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i2.GSR = "ENABLED";
    FD1P3JX shifter_i3 (.D(shifter[4]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i3.GSR = "ENABLED";
    FD1P3JX shifter_i4 (.D(shifter[5]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i4.GSR = "ENABLED";
    FD1P3JX shifter_i8 (.D(shifter[9]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i8.GSR = "ENABLED";
    FD1P3JX shifter_i9 (.D(shifter[10]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i9.GSR = "ENABLED";
    FD1P3IX shifter_i11 (.D(shifter_18__N_118[11]), .SP(PIN11_c_enable_31), 
            .CD(n759), .CK(PIN11_c), .Q(shifter[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i11.GSR = "ENABLED";
    FD1P3IX shifter_i12 (.D(shifter_18__N_118[12]), .SP(PIN11_c_enable_31), 
            .CD(n759), .CK(PIN11_c), .Q(shifter[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i12.GSR = "ENABLED";
    FD1P3IX shifter_i13 (.D(shifter_18__N_118[13]), .SP(PIN11_c_enable_31), 
            .CD(n759), .CK(PIN11_c), .Q(shifter[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i13.GSR = "ENABLED";
    FD1P3IX shifter_i14 (.D(shifter_18__N_118[14]), .SP(PIN11_c_enable_31), 
            .CD(n759), .CK(PIN11_c), .Q(shifter[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i14.GSR = "ENABLED";
    FD1P3IX shifter_i16 (.D(shifter_18__N_118[16]), .SP(PIN11_c_enable_31), 
            .CD(n759), .CK(PIN11_c), .Q(shifter[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i16.GSR = "ENABLED";
    FD1P3IX shifter_i17 (.D(shifter_18__N_118[17]), .SP(PIN11_c_enable_31), 
            .CD(n759), .CK(PIN11_c), .Q(shifter[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i17.GSR = "ENABLED";
    FD1P3IX data_r__i1 (.D(n553), .SP(PIN11_c_enable_27), .CD(n554), .CK(PIN11_c), 
            .Q(data_r[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i1.GSR = "ENABLED";
    FD1P3IX data_r__i2 (.D(n5), .SP(PIN11_c_enable_27), .CD(n556), .CK(PIN11_c), 
            .Q(data_r[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i2.GSR = "ENABLED";
    FD1P3JX data_r__i4 (.D(n1), .SP(PIN11_c_enable_27), .PD(n554), .CK(PIN11_c), 
            .Q(data_r[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i4.GSR = "ENABLED";
    FD1P3JX data_r__i6 (.D(n758), .SP(PIN11_c_enable_27), .PD(n556), .CK(PIN11_c), 
            .Q(data_r[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(57[8] 59[20])
    defparam data_r__i6.GSR = "ENABLED";
    FD1P3JX shifter_i0 (.D(shifter[1]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i0.GSR = "ENABLED";
    FD1P3IX shifter_i15 (.D(shifter[16]), .SP(PIN11_c_enable_30), .CD(n244), 
            .CK(PIN11_c), .Q(shifter[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i15.GSR = "ENABLED";
    FD1P3IX shifter_i10 (.D(shifter[11]), .SP(PIN11_c_enable_30), .CD(n244), 
            .CK(PIN11_c), .Q(shifter[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i10.GSR = "ENABLED";
    LUT4 i193_2_lut_3_lut_4_lut (.A(bitc[1]), .B(\bitc[0] ), .C(bitc[3]), 
         .D(bitc[2]), .Z(n249[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i193_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i186_2_lut_3_lut (.A(bitc[1]), .B(\bitc[0] ), .C(bitc[2]), .Z(n249[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i186_2_lut_3_lut.init = 16'h7878;
    LUT4 i200_3_lut_4_lut (.A(bitc[2]), .B(n760), .C(bitc[3]), .D(bitc[4]), 
         .Z(n249[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(93[13:21])
    defparam i200_3_lut_4_lut.init = 16'h7f80;
    FD1P3JX shifter_i6 (.D(shifter[7]), .SP(PIN11_c_enable_31), .PD(n244), 
            .CK(PIN11_c), .Q(shifter[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(70[8] 81[38])
    defparam shifter_i6.GSR = "ENABLED";
    baudgen_tx BAUD0 (.PIN11_c(PIN11_c), .n759(n759), .baud_en(n119_c[1]), 
            .resetline(resetline), .n74({n74})) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/uart_tx.v(106[1] 112[4])
    
endmodule
//
// Verilog Description of module baudgen_tx
//

module baudgen_tx (PIN11_c, n759, baud_en, resetline, n74) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input n759;
    input baud_en;
    input resetline;
    output [0:0]n74;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    wire [6:0]divcounter;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(45[13:23])
    wire [6:0]divcounter_6__N_159;
    
    wire n757, n754, n13, n671;
    wire [6:0]n114;
    
    wire n323, n752, n715, n719, n674;
    
    FD1S3IX divcounter__i0 (.D(divcounter_6__N_159[0]), .CK(PIN11_c), .CD(n759), 
            .Q(divcounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i0.GSR = "ENABLED";
    LUT4 i217_2_lut_rep_14 (.A(divcounter[1]), .B(divcounter[0]), .Z(n757)) /* synthesis lut_function=(A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i217_2_lut_rep_14.init = 16'h8888;
    LUT4 i224_2_lut_rep_11_3_lut (.A(divcounter[1]), .B(divcounter[0]), 
         .C(divcounter[2]), .Z(n754)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i224_2_lut_rep_11_3_lut.init = 16'h8080;
    LUT4 i575_3_lut (.A(baud_en), .B(resetline), .C(n13), .Z(n671)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i575_3_lut.init = 16'h7f7f;
    LUT4 i229_2_lut_3_lut_4_lut (.A(divcounter[1]), .B(divcounter[0]), .C(divcounter[3]), 
         .D(divcounter[2]), .Z(n114[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i229_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i245_2_lut_3_lut_4_lut (.A(divcounter[3]), .B(n754), .C(divcounter[5]), 
         .D(divcounter[4]), .Z(n323)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i245_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i236_2_lut_3_lut_4_lut (.A(divcounter[2]), .B(n757), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n114[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i236_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1S3IX divcounter__i4 (.D(n114[4]), .CK(PIN11_c), .CD(n671), .Q(divcounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i4.GSR = "ENABLED";
    LUT4 i478_4_lut (.A(divcounter[6]), .B(baud_en), .C(n13), .D(n323), 
         .Z(divcounter_6__N_159[6])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i478_4_lut.init = 16'h73b3;
    LUT4 i238_2_lut_rep_9_3_lut_4_lut (.A(divcounter[2]), .B(n757), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n752)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(61[17:31])
    defparam i238_2_lut_rep_9_3_lut_4_lut.init = 16'h8000;
    FD1S3IX divcounter__i6 (.D(divcounter_6__N_159[6]), .CK(PIN11_c), .CD(n759), 
            .Q(divcounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i6.GSR = "ENABLED";
    FD1S3IX divcounter__i5 (.D(divcounter_6__N_159[5]), .CK(PIN11_c), .CD(n759), 
            .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i5.GSR = "ENABLED";
    LUT4 i479_4_lut (.A(divcounter[5]), .B(baud_en), .C(n13), .D(n752), 
         .Z(divcounter_6__N_159[5])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i479_4_lut.init = 16'h73b3;
    FD1S3IX divcounter__i3 (.D(n114[3]), .CK(PIN11_c), .CD(n671), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i3.GSR = "ENABLED";
    FD1S3IX divcounter__i2 (.D(divcounter_6__N_159[2]), .CK(PIN11_c), .CD(n759), 
            .Q(divcounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i2.GSR = "ENABLED";
    FD1S3IX divcounter__i1 (.D(divcounter_6__N_159[1]), .CK(PIN11_c), .CD(n759), 
            .Q(divcounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=106, LSE_RLINE=112 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(47[8] 66[32])
    defparam divcounter__i1.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n715), .B(baud_en), .C(n719), .D(divcounter[0]), 
         .Z(n74[0])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    LUT4 i561_2_lut (.A(divcounter[2]), .B(divcounter[3]), .Z(n715)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i561_2_lut.init = 16'heeee;
    LUT4 i565_4_lut (.A(divcounter[6]), .B(divcounter[5]), .C(divcounter[4]), 
         .D(divcounter[1]), .Z(n719)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i565_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(divcounter[2]), .B(divcounter[6]), .C(divcounter[5]), 
         .D(n757), .Z(n674)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i471_3_lut (.A(divcounter[0]), .B(baud_en), .C(n13), .Z(divcounter_6__N_159[0])) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i471_3_lut.init = 16'h7373;
    LUT4 i480_4_lut (.A(divcounter[2]), .B(baud_en), .C(n13), .D(n757), 
         .Z(divcounter_6__N_159[2])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i480_4_lut.init = 16'h73b3;
    LUT4 i2_3_lut (.A(divcounter[3]), .B(divcounter[4]), .C(n674), .Z(n13)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(56[7:35])
    defparam i2_3_lut.init = 16'hefef;
    LUT4 i481_4_lut (.A(divcounter[1]), .B(baud_en), .C(n13), .D(divcounter[0]), 
         .Z(divcounter_6__N_159[1])) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !((C (D))+!B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/baudgen_tx.v(66[5:32])
    defparam i481_4_lut.init = 16'h73b3;
    
endmodule
//
// Verilog Description of module FreqDiv20Bit
//

module FreqDiv20Bit (PIN11_c, PIN10_c, PIN20_c_19, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input PIN10_c;
    output PIN20_c_19;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/send_string.v(50[26:31])
    wire [19:0]n149;
    wire [19:0]n85;
    
    wire n659, n658, n657, n656, n655, n654, n653, n652, n651, 
        n650;
    
    FD1S3IX count_164__i0 (.D(n85[0]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i0.GSR = "ENABLED";
    CCU2D count_164_add_4_21 (.A0(PIN20_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n659), .S0(n85[19]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_21.INIT0 = 16'hfaaa;
    defparam count_164_add_4_21.INIT1 = 16'h0000;
    defparam count_164_add_4_21.INJECT1_0 = "NO";
    defparam count_164_add_4_21.INJECT1_1 = "NO";
    CCU2D count_164_add_4_19 (.A0(n149[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n658), .COUT(n659), .S0(n85[17]), .S1(n85[18]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_19.INIT0 = 16'hfaaa;
    defparam count_164_add_4_19.INIT1 = 16'hfaaa;
    defparam count_164_add_4_19.INJECT1_0 = "NO";
    defparam count_164_add_4_19.INJECT1_1 = "NO";
    CCU2D count_164_add_4_17 (.A0(n149[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n657), .COUT(n658), .S0(n85[15]), .S1(n85[16]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_17.INIT0 = 16'hfaaa;
    defparam count_164_add_4_17.INIT1 = 16'hfaaa;
    defparam count_164_add_4_17.INJECT1_0 = "NO";
    defparam count_164_add_4_17.INJECT1_1 = "NO";
    FD1S3IX count_164__i19 (.D(n85[19]), .CK(PIN11_c), .CD(PIN10_c), .Q(PIN20_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i19.GSR = "ENABLED";
    FD1S3IX count_164__i18 (.D(n85[18]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i18.GSR = "ENABLED";
    FD1S3IX count_164__i17 (.D(n85[17]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i17.GSR = "ENABLED";
    FD1S3IX count_164__i16 (.D(n85[16]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i16.GSR = "ENABLED";
    FD1S3IX count_164__i15 (.D(n85[15]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i15.GSR = "ENABLED";
    FD1S3IX count_164__i14 (.D(n85[14]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i14.GSR = "ENABLED";
    FD1S3IX count_164__i13 (.D(n85[13]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i13.GSR = "ENABLED";
    FD1S3IX count_164__i12 (.D(n85[12]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i12.GSR = "ENABLED";
    FD1S3IX count_164__i11 (.D(n85[11]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i11.GSR = "ENABLED";
    FD1S3IX count_164__i10 (.D(n85[10]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i10.GSR = "ENABLED";
    FD1S3IX count_164__i9 (.D(n85[9]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i9.GSR = "ENABLED";
    FD1S3IX count_164__i8 (.D(n85[8]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i8.GSR = "ENABLED";
    FD1S3IX count_164__i7 (.D(n85[7]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i7.GSR = "ENABLED";
    FD1S3IX count_164__i6 (.D(n85[6]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i6.GSR = "ENABLED";
    FD1S3IX count_164__i5 (.D(n85[5]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i5.GSR = "ENABLED";
    FD1S3IX count_164__i4 (.D(n85[4]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i4.GSR = "ENABLED";
    FD1S3IX count_164__i3 (.D(n85[3]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i3.GSR = "ENABLED";
    FD1S3IX count_164__i2 (.D(n85[2]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i2.GSR = "ENABLED";
    FD1S3IX count_164__i1 (.D(n85[1]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164__i1.GSR = "ENABLED";
    CCU2D count_164_add_4_15 (.A0(n149[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n656), .COUT(n657), .S0(n85[13]), .S1(n85[14]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_15.INIT0 = 16'hfaaa;
    defparam count_164_add_4_15.INIT1 = 16'hfaaa;
    defparam count_164_add_4_15.INJECT1_0 = "NO";
    defparam count_164_add_4_15.INJECT1_1 = "NO";
    CCU2D count_164_add_4_13 (.A0(n149[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n655), .COUT(n656), .S0(n85[11]), .S1(n85[12]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_13.INIT0 = 16'hfaaa;
    defparam count_164_add_4_13.INIT1 = 16'hfaaa;
    defparam count_164_add_4_13.INJECT1_0 = "NO";
    defparam count_164_add_4_13.INJECT1_1 = "NO";
    CCU2D count_164_add_4_11 (.A0(n149[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n654), .COUT(n655), .S0(n85[9]), .S1(n85[10]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_11.INIT0 = 16'hfaaa;
    defparam count_164_add_4_11.INIT1 = 16'hfaaa;
    defparam count_164_add_4_11.INJECT1_0 = "NO";
    defparam count_164_add_4_11.INJECT1_1 = "NO";
    CCU2D count_164_add_4_9 (.A0(n149[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n653), .COUT(n654), .S0(n85[7]), .S1(n85[8]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_9.INIT0 = 16'hfaaa;
    defparam count_164_add_4_9.INIT1 = 16'hfaaa;
    defparam count_164_add_4_9.INJECT1_0 = "NO";
    defparam count_164_add_4_9.INJECT1_1 = "NO";
    CCU2D count_164_add_4_7 (.A0(n149[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n652), .COUT(n653), .S0(n85[5]), .S1(n85[6]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_7.INIT0 = 16'hfaaa;
    defparam count_164_add_4_7.INIT1 = 16'hfaaa;
    defparam count_164_add_4_7.INJECT1_0 = "NO";
    defparam count_164_add_4_7.INJECT1_1 = "NO";
    CCU2D count_164_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n651), .COUT(n652), .S0(n85[3]), .S1(n85[4]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_5.INIT0 = 16'hfaaa;
    defparam count_164_add_4_5.INIT1 = 16'hfaaa;
    defparam count_164_add_4_5.INJECT1_0 = "NO";
    defparam count_164_add_4_5.INJECT1_1 = "NO";
    CCU2D count_164_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n650), .COUT(n651), .S0(n85[1]), .S1(n85[2]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_3.INIT0 = 16'hfaaa;
    defparam count_164_add_4_3.INIT1 = 16'hfaaa;
    defparam count_164_add_4_3.INJECT1_0 = "NO";
    defparam count_164_add_4_3.INJECT1_1 = "NO";
    CCU2D count_164_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n650), .S1(n85[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy-fpga-edu/examples/5. send a string/project_files/source/freqdiv20bit.v(55[13:22])
    defparam count_164_add_4_1.INIT0 = 16'hF000;
    defparam count_164_add_4_1.INIT1 = 16'h0555;
    defparam count_164_add_4_1.INJECT1_0 = "NO";
    defparam count_164_add_4_1.INJECT1_1 = "NO";
    
endmodule
