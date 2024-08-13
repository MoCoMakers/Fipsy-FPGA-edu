// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.1.119
// Netlist written on Fri Oct 27 22:44:59 2017
//
// Verilog Description of module MakeFPGA_Top
//

module MakeFPGA_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, 
            PIN14, PIN17, PIN18, PIN19, PIN20, LEDn) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(49[8:20])
    output PIN7 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[7:11])
    output PIN8 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[13:17])
    input PIN9 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[19:23])
    output PIN10 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[25:30])
    output PIN11 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    output PIN12 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[39:44])
    output PIN13 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[46:51])
    output PIN14 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[53:58])
    output PIN17 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[60:65])
    output PIN18 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[67:72])
    output PIN19 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[74:79])
    output PIN20 /* synthesis .original_dir=IN_OUT */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[81:86])
    output LEDn;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(58[8:12])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    wire clk_N_193 /* synthesis is_inv_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(123[11:21])
    
    wire GND_net, VCC_net, PIN8_c, PIN9_c, PIN10_c_2, PIN20_c_19, 
        LEDn_c;
    wire [7:0]data;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(180[12:16])
    wire [20:0]counter_register;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(229[12:28])
    
    wire rcv, LEDn_N_45, n28, n232, n38, n36, n27, n1070, PIN11_c_enable_23, 
        PIN11_c_enable_34, clk_baud, clear;
    wire [3:0]bitc;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(61[11:15])
    
    wire n24;
    wire [1:0]state_adj_254;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(122[11:16])
    
    wire n11, n584, n34, n32, PIN11_c_enable_56, n986, n40, n90, 
        n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, 
        n101, n102, n103, n104, n105, n106, n107, n108, n109, 
        n110, n985, n984, n983, n982, n990, n981, n989, n988, 
        n987;
    
    VHI i2 (.Z(VCC_net));
    INV i918 (.A(PIN11_c), .Z(clk_N_193));
    FD1P3IX counter_register_152__i16 (.D(n94), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i16.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(PIN11_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    LUT4 i7_2_lut (.A(counter_register[17]), .B(counter_register[18]), .Z(n28)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    LUT4 i17_4_lut (.A(counter_register[7]), .B(n34), .C(n24), .D(counter_register[9]), 
         .Z(n38)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i11_3_lut (.A(counter_register[12]), .B(counter_register[11]), 
         .C(counter_register[3]), .Z(n32)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11_3_lut.init = 16'h8080;
    FD1P3IX counter_register_152__i15 (.D(n95), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i15.GSR = "ENABLED";
    OB PIN8_pad (.I(PIN8_c), .O(PIN8));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[13:17])
    LUT4 i13_4_lut (.A(counter_register[1]), .B(counter_register[5]), .C(counter_register[2]), 
         .D(counter_register[6]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    OB PIN10_pad (.I(PIN10_c_2), .O(PIN10));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[25:30])
    OB PIN7_pad (.I(GND_net), .O(PIN7));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[7:11])
    LUT4 i3_2_lut (.A(counter_register[10]), .B(counter_register[19]), .Z(n24)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    FD1P3IX counter_register_152__i14 (.D(n96), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i14.GSR = "ENABLED";
    LUT4 i371_2_lut_2_lut (.A(rcv), .B(LEDn_N_45), .Z(n584)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(247[3] 262[6])
    defparam i371_2_lut_2_lut.init = 16'h4444;
    FD1P3IX counter_register_152__i13 (.D(n97), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i13.GSR = "ENABLED";
    LUT4 i155_2_lut_rep_6 (.A(clk_baud), .B(clear), .Z(PIN11_c_enable_34)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i155_2_lut_rep_6.init = 16'heeee;
    FD1P3IX counter_register_152__i12 (.D(n98), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i12.GSR = "ENABLED";
    CCU2D counter_register_152_add_4_11 (.A0(counter_register[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n985), .COUT(n986), .S0(n101), 
          .S1(n100));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_11.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_9 (.A0(counter_register[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n984), .COUT(n985), .S0(n103), 
          .S1(n102));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_9.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_7 (.A0(counter_register[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n983), .COUT(n984), .S0(n105), 
          .S1(n104));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_7.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_7.INJECT1_1 = "NO";
    FD1P3IX counter_register_152__i0 (.D(n110), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i0.GSR = "ENABLED";
    FD1P3IX counter_register_152__i1 (.D(n109), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i1.GSR = "ENABLED";
    FD1P3IX counter_register_152__i2 (.D(n108), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i2.GSR = "ENABLED";
    FD1P3IX counter_register_152__i3 (.D(n107), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i3.GSR = "ENABLED";
    FD1P3IX counter_register_152__i4 (.D(n106), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i4.GSR = "ENABLED";
    FD1P3AX triggery_19 (.D(PIN11_c_enable_56), .SP(PIN11_c_enable_23), 
            .CK(PIN11_c), .Q(LEDn_c));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(235[7] 263[5])
    defparam triggery_19.GSR = "ENABLED";
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    OB PIN12_pad (.I(GND_net), .O(PIN12));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[39:44])
    OB PIN13_pad (.I(GND_net), .O(PIN13));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[46:51])
    OB PIN14_pad (.I(GND_net), .O(PIN14));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[53:58])
    OB PIN17_pad (.I(GND_net), .O(PIN17));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[60:65])
    OB PIN18_pad (.I(GND_net), .O(PIN18));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[67:72])
    OB PIN19_pad (.I(GND_net), .O(PIN19));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[74:79])
    OB PIN20_pad (.I(PIN20_c_19), .O(PIN20));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[81:86])
    OB LEDn_pad (.I(LEDn_c), .O(LEDn));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(58[8:12])
    IB PIN9_pad (.I(PIN9), .O(PIN9_c));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[19:23])
    LUT4 i369_1_lut_rep_10 (.A(rcv), .Z(PIN11_c_enable_56)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(247[3] 262[6])
    defparam i369_1_lut_rep_10.init = 16'h5555;
    LUT4 i115_3_lut (.A(state_adj_254[0]), .B(state_adj_254[1]), .C(n1070), 
         .Z(n232)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(122[11:16])
    defparam i115_3_lut.init = 16'h6262;
    LUT4 i12_3_lut (.A(LEDn_N_45), .B(data[1]), .C(rcv), .Z(PIN11_c_enable_23)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12_3_lut.init = 16'hcaca;
    LUT4 i20_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(LEDn_N_45)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20_4_lut.init = 16'h8000;
    FD1P3IX counter_register_152__i11 (.D(n99), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i11.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    FD1P3IX counter_register_152__i10 (.D(n100), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i10.GSR = "ENABLED";
    LUT4 i6_2_lut (.A(counter_register[8]), .B(counter_register[15]), .Z(n27)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    FD1P3IX counter_register_152__i9 (.D(n101), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i9.GSR = "ENABLED";
    CCU2D counter_register_152_add_4_5 (.A0(counter_register[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n982), .COUT(n983), .S0(n107), 
          .S1(n106));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_5.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_21 (.A0(counter_register[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n990), .S0(n91), .S1(n90));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_21.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_21.INJECT1_1 = "NO";
    uart_rx RX0 (.PIN11_c(PIN11_c), .bitc({Open_0, Open_1, Open_2, bitc[0]}), 
            .n167({Open_3, Open_4, Open_5, clear}), .n11(n11), .PIN9_c(PIN9_c), 
            .n163({clk_baud}), .data({data}), .PIN11_c_enable_34(PIN11_c_enable_34), 
            .rcv(rcv), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(205[3] 210[8])
    CCU2D counter_register_152_add_4_3 (.A0(counter_register[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n981), .COUT(n982), .S0(n109), 
          .S1(n108));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_3.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_3.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(counter_register[16]), .B(n38), .C(n32), .D(counter_register[20]), 
         .Z(n40)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i19_4_lut.init = 16'h8000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D counter_register_152_add_4_19 (.A0(counter_register[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n989), .COUT(n990), .S0(n93), 
          .S1(n92));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_19.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_17 (.A0(counter_register[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n988), .COUT(n989), .S0(n95), 
          .S1(n94));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_17.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_15 (.A0(counter_register[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n987), .COUT(n988), .S0(n97), 
          .S1(n96));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_15.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LEDn_c), .B1(counter_register[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n981), .S1(n110));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_1.INIT0 = 16'hF000;
    defparam counter_register_152_add_4_1.INIT1 = 16'ha999;
    defparam counter_register_152_add_4_1.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_register_152_add_4_13 (.A0(counter_register[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n986), .COUT(n987), .S0(n99), 
          .S1(n98));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_register_152_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_register_152_add_4_13.INJECT1_0 = "NO";
    defparam counter_register_152_add_4_13.INJECT1_1 = "NO";
    LUT4 i290_2_lut_3_lut (.A(clk_baud), .B(clear), .C(bitc[0]), .Z(n11)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i290_2_lut_3_lut.init = 16'h1e1e;
    FD1P3IX counter_register_152__i8 (.D(n102), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i8.GSR = "ENABLED";
    FD1P3IX counter_register_152__i7 (.D(n103), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i7.GSR = "ENABLED";
    FD1P3IX counter_register_152__i6 (.D(n104), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i6.GSR = "ENABLED";
    FD1P3IX counter_register_152__i5 (.D(n105), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i5.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i15_4_lut (.A(counter_register[0]), .B(counter_register[13]), .C(counter_register[4]), 
         .D(counter_register[14]), .Z(n36)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    FD1P3IX counter_register_152__i17 (.D(n93), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i17.GSR = "ENABLED";
    FD1P3IX counter_register_152__i18 (.D(n92), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i18.GSR = "ENABLED";
    FD1P3IX counter_register_152__i19 (.D(n91), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i19.GSR = "ENABLED";
    FD1P3IX counter_register_152__i20 (.D(n90), .SP(PIN11_c_enable_56), 
            .CD(n584), .CK(PIN11_c), .Q(counter_register[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(259[26:70])
    defparam counter_register_152__i20.GSR = "ENABLED";
    uart_tx TX0 (.PIN11_c(PIN11_c), .data({data}), .clk_N_193(clk_N_193), 
            .state({state_adj_254}), .PIN8_c(PIN8_c), .n232(n232), .n1070(n1070), 
            .rcv(rcv), .PIN10_c_2(PIN10_c_2), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(220[3] 226[2])
    FreqDiv20Bit FreqDiv20Bit_inst (.PIN11_c(PIN11_c), .PIN10_c_2(PIN10_c_2), 
            .PIN20_c_19(PIN20_c_19), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(162[14] 166[32])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (PIN11_c, bitc, n167, n11, PIN9_c, n163, data, 
            PIN11_c_enable_34, rcv, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    output [3:0]bitc;
    output [3:0]n167;
    input n11;
    input PIN9_c;
    output [0:0]n163;
    output [7:0]data;
    input PIN11_c_enable_34;
    output rcv;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    wire [1:0]state;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(95[11:16])
    wire [1:0]next_state;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(96[11:21])
    wire [1:0]next_state_1__N_111;
    wire [3:0]bitc_c;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(61[11:15])
    wire [3:0]n174;
    
    wire rx_r, n1074;
    wire [9:0]raw_data;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(71[11:19])
    
    wire n6, n1159;
    wire [3:0]n167_c;
    
    wire n1162;
    wire [7:0]divcounter;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(49[13:23])
    
    wire n42, n618, n1163, n8, n2;
    
    FD1S3AX state_i0 (.D(next_state[0]), .CK(PIN11_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(99[8] 103[25])
    defparam state_i0.GSR = "ENABLED";
    FD1S3AX next_state_i0 (.D(next_state_1__N_111[0]), .CK(PIN11_c), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(106[8] 152[4])
    defparam next_state_i0.GSR = "ENABLED";
    FD1S3IX bitc__i0 (.D(n11), .CK(PIN11_c), .CD(n167[0]), .Q(bitc[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i0.GSR = "ENABLED";
    LUT4 i168_2_lut (.A(bitc_c[1]), .B(bitc[0]), .Z(n174[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(67[13:21])
    defparam i168_2_lut.init = 16'h6666;
    FD1S3AX rx_r_36 (.D(PIN9_c), .CK(PIN11_c), .Q(rx_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(48[8] 49[14])
    defparam rx_r_36.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(bitc[0]), .B(bitc_c[2]), .C(bitc_c[1]), .D(bitc_c[3]), 
         .Z(n1074)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i3_4_lut.init = 16'h1000;
    FD1P3AX raw_data__0__i1 (.D(raw_data[2]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[1]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i1.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(bitc_c[2]), .B(bitc_c[3]), .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_2_lut.init = 16'hbbbb;
    FD1S3IX rcv_45_i0 (.D(n1159), .CK(PIN11_c), .CD(state[1]), .Q(n167[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i0.GSR = "ENABLED";
    LUT4 i377_1_lut_rep_12 (.A(n167_c[1]), .Z(n1162)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i377_1_lut_rep_12.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(n167_c[1]), .B(divcounter[3]), .C(divcounter[5]), 
         .D(n42), .Z(n618)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i1_4_lut_4_lut.init = 16'h5755;
    FD1P3AX data_i0_i0 (.D(raw_data[1]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i0.GSR = "ENABLED";
    LUT4 i1_1_lut_rep_13 (.A(state[1]), .Z(n1163)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i1_1_lut_rep_13.init = 16'h5555;
    LUT4 i1_2_lut (.A(state[1]), .B(rx_r), .Z(n8)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i1_2_lut.init = 16'hbbbb;
    FD1P3AX raw_data__0__i9 (.D(rx_r), .SP(n163[0]), .CK(PIN11_c), .Q(raw_data[9]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i9.GSR = "ENABLED";
    FD1P3AX raw_data__0__i8 (.D(raw_data[9]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[8]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i8.GSR = "ENABLED";
    FD1P3AX raw_data__0__i7 (.D(raw_data[8]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[7]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i7.GSR = "ENABLED";
    FD1P3AX raw_data__0__i6 (.D(raw_data[7]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[6]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i6.GSR = "ENABLED";
    FD1P3AX raw_data__0__i5 (.D(raw_data[6]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[5]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i5.GSR = "ENABLED";
    FD1P3AX raw_data__0__i4 (.D(raw_data[5]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[4]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i4.GSR = "ENABLED";
    FD1P3AX raw_data__0__i3 (.D(raw_data[4]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[3]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i3.GSR = "ENABLED";
    FD1P3AX raw_data__0__i2 (.D(raw_data[3]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[2]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i2.GSR = "ENABLED";
    FD1P3IX bitc__i3 (.D(n174[3]), .SP(PIN11_c_enable_34), .CD(n167[0]), 
            .CK(PIN11_c), .Q(bitc_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n174[2]), .SP(PIN11_c_enable_34), .CD(n167[0]), 
            .CK(PIN11_c), .Q(bitc_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i1 (.D(n174[1]), .SP(PIN11_c_enable_34), .CD(n167[0]), 
            .CK(PIN11_c), .Q(bitc_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_111[1]), .CK(PIN11_c), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(106[8] 152[4])
    defparam next_state_i1.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(next_state[1]), .CK(PIN11_c), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(99[8] 103[25])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_14 (.A(state[1]), .B(bitc[0]), .C(n6), .D(bitc_c[1]), 
         .Z(n2)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i1_4_lut_4_lut_adj_14.init = 16'h5455;
    LUT4 i182_3_lut_4_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[2]), 
         .D(bitc_c[3]), .Z(n174[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(67[13:21])
    defparam i182_3_lut_4_lut.init = 16'h7f80;
    LUT4 i175_2_lut_3_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[2]), 
         .Z(n174[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(67[13:21])
    defparam i175_2_lut_3_lut.init = 16'h7878;
    FD1S3IX rcv_45_i1 (.D(state[0]), .CK(PIN11_c), .CD(state[1]), .Q(n167_c[1]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i1.GSR = "ENABLED";
    PFUMX i19 (.BLUT(n8), .ALUT(n2), .C0(state[0]), .Z(next_state_1__N_111[0]));
    LUT4 i7_1_lut_rep_9 (.A(state[0]), .Z(n1159)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i7_1_lut_rep_9.init = 16'h5555;
    FD1S3IX rcv_45_i3 (.D(state[0]), .CK(PIN11_c), .CD(n1163), .Q(rcv));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i3.GSR = "ENABLED";
    FD1P3AX data_i0_i1 (.D(raw_data[2]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i1.GSR = "ENABLED";
    FD1P3AX data_i0_i2 (.D(raw_data[3]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i2.GSR = "ENABLED";
    FD1P3AX data_i0_i3 (.D(raw_data[4]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i3.GSR = "ENABLED";
    FD1P3AX data_i0_i4 (.D(raw_data[5]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i4.GSR = "ENABLED";
    FD1P3AX data_i0_i5 (.D(raw_data[6]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i5.GSR = "ENABLED";
    FD1P3AX data_i0_i6 (.D(raw_data[7]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i6.GSR = "ENABLED";
    FD1P3AX data_i0_i7 (.D(raw_data[8]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i7.GSR = "ENABLED";
    LUT4 i16_4_lut_3_lut (.A(state[0]), .B(n1074), .C(state[1]), .Z(next_state_1__N_111[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam i16_4_lut_3_lut.init = 16'h5858;
    FD1S3IX rcv_45_i2 (.D(n1159), .CK(PIN11_c), .CD(n1163), .Q(n167_c[2]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i2.GSR = "ENABLED";
    baudgen_rx baudgen0 (.divcounter({Open_6, Open_7, divcounter[5], Open_8, 
            divcounter[3], Open_9, Open_10, Open_11}), .n42(n42), 
            .bauden(n167_c[1]), .n163({n163}), .PIN11_c(PIN11_c), .n1162(n1162), 
            .n618(n618), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_rx.v(53[3] 58[4])
    
endmodule
//
// Verilog Description of module baudgen_rx
//

module baudgen_rx (divcounter, n42, bauden, n163, PIN11_c, n1162, 
            n618, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [7:0]divcounter;
    output n42;
    input bauden;
    output [0:0]n163;
    input PIN11_c;
    input n1162;
    input n618;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    wire [7:0]n143;
    wire [31:0]n38;
    
    wire n7, n1082, n1021;
    wire [7:0]divcounter_c;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(49[13:23])
    
    wire n6, n992, n993, n995, n994;
    
    LUT4 i1_2_lut_4_lut (.A(divcounter[3]), .B(n42), .C(divcounter[5]), 
         .D(n143[0]), .Z(n38[0])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut.init = 16'hfb00;
    LUT4 i1_2_lut_4_lut_adj_7 (.A(divcounter[3]), .B(n42), .C(divcounter[5]), 
         .D(n143[6]), .Z(n38[6])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_7.init = 16'hfb00;
    LUT4 i4_4_lut (.A(n7), .B(n1082), .C(bauden), .D(n1021), .Z(n163[0])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_2_lut (.A(divcounter[5]), .B(divcounter[3]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_8 (.A(divcounter[3]), .B(n42), .C(divcounter[5]), 
         .D(n143[2]), .Z(n38[2])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_8.init = 16'hfb00;
    LUT4 i1_2_lut_4_lut_adj_9 (.A(divcounter[3]), .B(n42), .C(divcounter[5]), 
         .D(n143[7]), .Z(n38[7])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_9.init = 16'hfb00;
    LUT4 i3_4_lut (.A(divcounter_c[4]), .B(divcounter_c[1]), .C(divcounter_c[7]), 
         .D(divcounter_c[0]), .Z(n1021)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    FD1S3JX divcounter_i0 (.D(n38[0]), .CK(PIN11_c), .PD(n1162), .Q(divcounter_c[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(divcounter_c[2]), .B(divcounter_c[6]), .Z(n1082)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_10 (.A(divcounter_c[7]), .B(n1082), .C(divcounter_c[4]), 
         .D(n6), .Z(n42)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_10.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_11 (.A(divcounter[3]), .B(n42), .C(divcounter[5]), 
         .D(n143[4]), .Z(n38[4])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_11.init = 16'hfb00;
    LUT4 i1_2_lut_adj_12 (.A(divcounter_c[1]), .B(divcounter_c[0]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_12.init = 16'h8888;
    FD1S3JX divcounter_i1 (.D(n38[1]), .CK(PIN11_c), .PD(n1162), .Q(divcounter_c[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i1.GSR = "ENABLED";
    FD1S3JX divcounter_i2 (.D(n38[2]), .CK(PIN11_c), .PD(n1162), .Q(divcounter_c[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i2.GSR = "ENABLED";
    FD1S3JX divcounter_i4 (.D(n38[4]), .CK(PIN11_c), .PD(n1162), .Q(divcounter_c[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i4.GSR = "ENABLED";
    FD1S3IX divcounter_i5 (.D(n143[5]), .CK(PIN11_c), .CD(n618), .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i5.GSR = "ENABLED";
    FD1S3JX divcounter_i6 (.D(n38[6]), .CK(PIN11_c), .PD(n1162), .Q(divcounter_c[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i6.GSR = "ENABLED";
    FD1S3JX divcounter_i7 (.D(n38[7]), .CK(PIN11_c), .PD(n1162), .Q(divcounter_c[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i7.GSR = "ENABLED";
    CCU2D add_16_3 (.A0(divcounter_c[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(divcounter_c[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n992), .COUT(n993), .S0(n143[1]), .S1(n143[2]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(59[54:68])
    defparam add_16_3.INIT0 = 16'h5aaa;
    defparam add_16_3.INIT1 = 16'h5aaa;
    defparam add_16_3.INJECT1_0 = "NO";
    defparam add_16_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_13 (.A(divcounter[3]), .B(n42), .C(divcounter[5]), 
         .D(n143[1]), .Z(n38[1])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_13.init = 16'hfb00;
    CCU2D add_16_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter_c[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n992), .S1(n143[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(59[54:68])
    defparam add_16_1.INIT0 = 16'hF000;
    defparam add_16_1.INIT1 = 16'h5555;
    defparam add_16_1.INJECT1_0 = "NO";
    defparam add_16_1.INJECT1_1 = "NO";
    CCU2D add_16_9 (.A0(divcounter_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n995), .S0(n143[7]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(59[54:68])
    defparam add_16_9.INIT0 = 16'h5aaa;
    defparam add_16_9.INIT1 = 16'h0000;
    defparam add_16_9.INJECT1_0 = "NO";
    defparam add_16_9.INJECT1_1 = "NO";
    CCU2D add_16_7 (.A0(divcounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n994), .COUT(n995), .S0(n143[5]), .S1(n143[6]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(59[54:68])
    defparam add_16_7.INIT0 = 16'h5aaa;
    defparam add_16_7.INIT1 = 16'h5aaa;
    defparam add_16_7.INJECT1_0 = "NO";
    defparam add_16_7.INJECT1_1 = "NO";
    CCU2D add_16_5 (.A0(divcounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n993), .COUT(n994), .S0(n143[3]), .S1(n143[4]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(59[54:68])
    defparam add_16_5.INIT0 = 16'h5aaa;
    defparam add_16_5.INIT1 = 16'h5aaa;
    defparam add_16_5.INJECT1_0 = "NO";
    defparam add_16_5.INJECT1_1 = "NO";
    FD1S3IX divcounter_i3 (.D(n143[3]), .CK(PIN11_c), .CD(n618), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_tx
//

module uart_tx (PIN11_c, data, clk_N_193, state, PIN8_c, n232, n1070, 
            rcv, PIN10_c_2, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input [7:0]data;
    input clk_N_193;
    output [1:0]state;
    output PIN8_c;
    input n232;
    output n1070;
    input rcv;
    output PIN10_c_2;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    wire clk_N_193 /* synthesis is_inv_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(123[11:21])
    wire [18:0]shifter;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(63[12:19])
    
    wire PIN11_c_enable_48;
    wire [2:0]n169;
    wire [7:0]data_r;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(44[11:17])
    
    wire PIN11_c_enable_41;
    wire [4:0]bitc;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(40[11:15])
    wire [4:0]n248;
    wire [1:0]next_state;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(123[11:21])
    wire [1:0]n224;
    wire [1:0]next_state_1__N_190;
    wire [4:0]n18;
    wire [18:0]shifter_18__N_197;
    
    wire n765;
    wire [7:0]n143;
    wire [31:0]n38;
    
    wire n29, n1161, n236;
    wire [2:0]n168;
    
    wire PIN11_c_enable_31, n590, n1099, n1157;
    
    FD1P3JX shifter_i1 (.D(shifter[2]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i1.GSR = "ENABLED";
    FD1P3JX shifter_i2 (.D(shifter[3]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i2.GSR = "ENABLED";
    FD1P3AX data_r_i0_i0 (.D(data[0]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i0.GSR = "ENABLED";
    FD1P3JX shifter_i3 (.D(shifter[4]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i3.GSR = "ENABLED";
    LUT4 i204_2_lut_3_lut (.A(bitc[1]), .B(bitc[0]), .C(bitc[2]), .Z(n248[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(92[13:21])
    defparam i204_2_lut_3_lut.init = 16'h7878;
    FD1S3IX ready_53_i0 (.D(state[0]), .CK(clk_N_193), .CD(state[1]), 
            .Q(n169[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam ready_53_i0.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(next_state[0]), .CK(PIN11_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(126[8] 130[25])
    defparam state_i0.GSR = "ENABLED";
    FD1S3AX tx_48 (.D(shifter[0]), .CK(PIN11_c), .Q(PIN8_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(98[8] 101[5])
    defparam tx_48.GSR = "ENABLED";
    FD1S3IX next_state_i0 (.D(n224[0]), .CK(clk_N_193), .CD(n232), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(133[8] 174[4])
    defparam next_state_i0.GSR = "ENABLED";
    LUT4 i211_2_lut_3_lut_4_lut (.A(bitc[1]), .B(bitc[0]), .C(bitc[3]), 
         .D(bitc[2]), .Z(n248[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(92[13:21])
    defparam i211_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i879_4_lut_4_lut_3_lut (.A(state[1]), .B(n1070), .C(state[0]), 
         .Z(next_state_1__N_190[1])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;
    defparam i879_4_lut_4_lut_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut_rep_8_3_lut (.A(rcv), .B(state[1]), .C(state[0]), .Z(PIN11_c_enable_41)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_8_3_lut.init = 16'h0202;
    FD1S3IX bitc__i0 (.D(n18[0]), .CK(PIN11_c), .CD(n169[0]), .Q(bitc[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i0.GSR = "ENABLED";
    LUT4 i599_2_lut_3_lut (.A(rcv), .B(state[1]), .C(state[0]), .Z(n224[0])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;
    defparam i599_2_lut_3_lut.init = 16'hf2f2;
    LUT4 mux_14_i18_3_lut (.A(shifter[18]), .B(data_r[6]), .C(n169[0]), 
         .Z(shifter_18__N_197[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i18_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(n765), .B(n143[1]), .Z(n38[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_2 (.A(n765), .B(n143[2]), .Z(n38[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'h8888;
    LUT4 i1_2_lut_adj_3 (.A(n765), .B(n143[4]), .Z(n38[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'h8888;
    LUT4 i876_2_lut (.A(n765), .B(n169[1]), .Z(n29)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i876_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_adj_4 (.A(n765), .B(n143[6]), .Z(n38[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'h8888;
    LUT4 i1_2_lut_adj_5 (.A(n765), .B(n143[7]), .Z(n38[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_5.init = 16'h8888;
    LUT4 i197_2_lut (.A(bitc[1]), .B(bitc[0]), .Z(n248[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(92[13:21])
    defparam i197_2_lut.init = 16'h6666;
    LUT4 i199_2_lut_rep_11 (.A(bitc[1]), .B(bitc[0]), .Z(n1161)) /* synthesis lut_function=(A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(92[13:21])
    defparam i199_2_lut_rep_11.init = 16'h8888;
    FD1S3AX next_state_i1 (.D(next_state_1__N_190[1]), .CK(clk_N_193), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(133[8] 174[4])
    defparam next_state_i1.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(next_state[1]), .CK(PIN11_c), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(126[8] 130[25])
    defparam state_i1.GSR = "ENABLED";
    FD1S3IX ready_53_i2 (.D(n236), .CK(clk_N_193), .CD(state[1]), .Q(PIN10_c_2));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam ready_53_i2.GSR = "ENABLED";
    FD1S3AX ready_53_i1 (.D(n168[1]), .CK(clk_N_193), .Q(n169[1]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam ready_53_i1.GSR = "ENABLED";
    FD1P3JX shifter_i4 (.D(shifter[5]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i4.GSR = "ENABLED";
    FD1P3JX shifter_i5 (.D(shifter[6]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i5.GSR = "ENABLED";
    FD1P3JX shifter_i6 (.D(shifter[7]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i6.GSR = "ENABLED";
    FD1P3JX shifter_i7 (.D(shifter[8]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i7.GSR = "ENABLED";
    FD1P3JX shifter_i8 (.D(shifter[9]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i8.GSR = "ENABLED";
    FD1P3JX shifter_i9 (.D(shifter[10]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i9.GSR = "ENABLED";
    FD1P3JX shifter_i18 (.D(data_r[7]), .SP(PIN11_c_enable_48), .PD(PIN11_c_enable_31), 
            .CK(PIN11_c), .Q(shifter[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i18.GSR = "ENABLED";
    FD1P3JX shifter_i0 (.D(shifter[1]), .SP(PIN11_c_enable_48), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i0.GSR = "ENABLED";
    FD1P3AX shifter_i17 (.D(shifter_18__N_197[17]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i17.GSR = "ENABLED";
    FD1P3AX shifter_i16 (.D(shifter_18__N_197[16]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i16.GSR = "ENABLED";
    FD1P3AX shifter_i15 (.D(shifter_18__N_197[15]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i15.GSR = "ENABLED";
    FD1P3AX shifter_i14 (.D(shifter_18__N_197[14]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i14.GSR = "ENABLED";
    FD1P3AX shifter_i13 (.D(shifter_18__N_197[13]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i13.GSR = "ENABLED";
    FD1P3AX shifter_i12 (.D(shifter_18__N_197[12]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i12.GSR = "ENABLED";
    FD1P3AX shifter_i11 (.D(shifter_18__N_197[11]), .SP(PIN11_c_enable_48), 
            .CK(PIN11_c), .Q(shifter[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i11.GSR = "ENABLED";
    FD1P3IX shifter_i10 (.D(shifter[11]), .SP(PIN11_c_enable_31), .CD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i10.GSR = "ENABLED";
    FD1P3AX data_r_i0_i7 (.D(data[7]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i7.GSR = "ENABLED";
    FD1P3AX data_r_i0_i6 (.D(data[6]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i6.GSR = "ENABLED";
    FD1P3AX data_r_i0_i5 (.D(data[5]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i5.GSR = "ENABLED";
    FD1P3AX data_r_i0_i4 (.D(data[4]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i4.GSR = "ENABLED";
    FD1P3AX data_r_i0_i3 (.D(data[3]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i3.GSR = "ENABLED";
    FD1P3AX data_r_i0_i2 (.D(data[2]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i2.GSR = "ENABLED";
    FD1P3AX data_r_i0_i1 (.D(data[1]), .SP(PIN11_c_enable_41), .CK(PIN11_c), 
            .Q(data_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i1.GSR = "ENABLED";
    LUT4 mux_14_i17_3_lut (.A(shifter[17]), .B(data_r[5]), .C(n169[0]), 
         .Z(shifter_18__N_197[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i17_3_lut.init = 16'hcaca;
    LUT4 mux_14_i16_3_lut (.A(shifter[16]), .B(data_r[4]), .C(n169[0]), 
         .Z(shifter_18__N_197[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i16_3_lut.init = 16'hcaca;
    LUT4 mux_14_i15_3_lut (.A(shifter[15]), .B(data_r[3]), .C(n169[0]), 
         .Z(shifter_18__N_197[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i15_3_lut.init = 16'hcaca;
    LUT4 mux_14_i14_3_lut (.A(shifter[14]), .B(data_r[2]), .C(n169[0]), 
         .Z(shifter_18__N_197[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i14_3_lut.init = 16'hcaca;
    LUT4 mux_14_i13_3_lut (.A(shifter[13]), .B(data_r[1]), .C(n169[0]), 
         .Z(shifter_18__N_197[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i13_3_lut.init = 16'hcaca;
    LUT4 i218_3_lut_4_lut (.A(bitc[2]), .B(n1161), .C(bitc[3]), .D(bitc[4]), 
         .Z(n248[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(92[13:21])
    defparam i218_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_14_i12_3_lut (.A(shifter[12]), .B(data_r[0]), .C(n169[0]), 
         .Z(shifter_18__N_197[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i12_3_lut.init = 16'hcaca;
    LUT4 i378_1_lut (.A(n169[1]), .Z(n590)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam i378_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_6 (.A(n765), .B(n143[0]), .Z(n38[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'h8888;
    LUT4 i2_4_lut (.A(bitc[1]), .B(bitc[2]), .C(n1099), .D(bitc[4]), 
         .Z(n1070)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam i2_4_lut.init = 16'h0400;
    LUT4 i863_2_lut (.A(bitc[0]), .B(bitc[3]), .Z(n1099)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i863_2_lut.init = 16'heeee;
    LUT4 i291_2_lut_3_lut (.A(n169[0]), .B(n1157), .C(bitc[0]), .Z(n18[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam i291_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i288_2_lut (.A(state[0]), .B(state[1]), .Z(n168[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(140[3] 173[10])
    defparam i288_2_lut.init = 16'h6666;
    FD1P3IX bitc__i1 (.D(n248[1]), .SP(PIN11_c_enable_48), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n248[2]), .SP(PIN11_c_enable_48), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i3 (.D(n248[3]), .SP(PIN11_c_enable_48), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i4 (.D(n248[4]), .SP(PIN11_c_enable_48), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i4.GSR = "ENABLED";
    LUT4 i106_1_lut (.A(state[0]), .Z(n236)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(126[8] 130[25])
    defparam i106_1_lut.init = 16'h5555;
    baudgen_tx BAUD0 (.n765(n765), .PIN11_c(PIN11_c), .n590(n590), .n70(n38[0]), 
            .baud_en(n169[1]), .n1157(n1157), .load(n169[0]), .PIN11_c_enable_48(PIN11_c_enable_48), 
            .PIN11_c_enable_31(PIN11_c_enable_31), .n69(n38[1]), .GND_net(GND_net), 
            .n145(n143[6]), .n147(n143[4]), .n68(n38[2]), .n66(n38[4]), 
            .n29(n29), .n64(n38[6]), .n63(n38[7]), .n150(n143[1]), .n149(n143[2]), 
            .n151(n143[0]), .n144(n143[7])) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/uart_tx.v(105[1] 110[4])
    
endmodule
//
// Verilog Description of module baudgen_tx
//

module baudgen_tx (n765, PIN11_c, n590, n70, baud_en, n1157, load, 
            PIN11_c_enable_48, PIN11_c_enable_31, n69, GND_net, n145, 
            n147, n68, n66, n29, n64, n63, n150, n149, n151, 
            n144) /* synthesis syn_module_defined=1 */ ;
    output n765;
    input PIN11_c;
    input n590;
    input n70;
    input baud_en;
    output n1157;
    input load;
    output PIN11_c_enable_48;
    output PIN11_c_enable_31;
    input n69;
    input GND_net;
    output n145;
    output n147;
    input n68;
    input n66;
    input n29;
    input n64;
    input n63;
    output n150;
    output n149;
    output n151;
    output n144;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    wire [7:0]divcounter;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(44[13:23])
    
    wire n4, n1011, n1103, n1095, n998;
    wire [7:0]n143;
    
    wire n999, n997, n996;
    
    LUT4 i1_2_lut (.A(divcounter[3]), .B(divcounter[5]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3_4_lut (.A(divcounter[2]), .B(divcounter[4]), .C(divcounter[1]), 
         .D(divcounter[7]), .Z(n1011)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2_4_lut (.A(divcounter[6]), .B(n4), .C(n1011), .D(divcounter[0]), 
         .Z(n765)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    LUT4 i867_4_lut (.A(divcounter[2]), .B(divcounter[5]), .C(divcounter[4]), 
         .D(divcounter[0]), .Z(n1103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i867_4_lut.init = 16'hfffe;
    FD1S3JX divcounter_i0 (.D(n70), .CK(PIN11_c), .PD(n590), .Q(divcounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_7 (.A(baud_en), .B(n1095), .C(n1103), .Z(n1157)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut_rep_7.init = 16'h0202;
    LUT4 i859_4_lut (.A(divcounter[6]), .B(divcounter[3]), .C(divcounter[1]), 
         .D(divcounter[7]), .Z(n1095)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i859_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_5_4_lut (.A(baud_en), .B(n1095), .C(n1103), .D(load), 
         .Z(PIN11_c_enable_48)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;
    defparam i1_2_lut_rep_5_4_lut.init = 16'hff02;
    LUT4 i1_2_lut_4_lut (.A(baud_en), .B(n1095), .C(n1103), .D(load), 
         .Z(PIN11_c_enable_31)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0002;
    FD1S3JX divcounter_i1 (.D(n69), .CK(PIN11_c), .PD(n590), .Q(divcounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i1.GSR = "ENABLED";
    CCU2D add_16_7 (.A0(divcounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n998), .COUT(n999), .S0(n143[5]), .S1(n145));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(53[54:68])
    defparam add_16_7.INIT0 = 16'h5aaa;
    defparam add_16_7.INIT1 = 16'h5aaa;
    defparam add_16_7.INJECT1_0 = "NO";
    defparam add_16_7.INJECT1_1 = "NO";
    CCU2D add_16_5 (.A0(divcounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n997), .COUT(n998), .S0(n143[3]), .S1(n147));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(53[54:68])
    defparam add_16_5.INIT0 = 16'h5aaa;
    defparam add_16_5.INIT1 = 16'h5aaa;
    defparam add_16_5.INJECT1_0 = "NO";
    defparam add_16_5.INJECT1_1 = "NO";
    FD1S3JX divcounter_i2 (.D(n68), .CK(PIN11_c), .PD(n590), .Q(divcounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i2.GSR = "ENABLED";
    FD1S3JX divcounter_i4 (.D(n66), .CK(PIN11_c), .PD(n590), .Q(divcounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i4.GSR = "ENABLED";
    FD1S3IX divcounter_i5 (.D(n143[5]), .CK(PIN11_c), .CD(n29), .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i5.GSR = "ENABLED";
    FD1S3JX divcounter_i6 (.D(n64), .CK(PIN11_c), .PD(n590), .Q(divcounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i6.GSR = "ENABLED";
    FD1S3JX divcounter_i7 (.D(n63), .CK(PIN11_c), .PD(n590), .Q(divcounter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i7.GSR = "ENABLED";
    CCU2D add_16_3 (.A0(divcounter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n996), .COUT(n997), .S0(n150), .S1(n149));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(53[54:68])
    defparam add_16_3.INIT0 = 16'h5aaa;
    defparam add_16_3.INIT1 = 16'h5aaa;
    defparam add_16_3.INJECT1_0 = "NO";
    defparam add_16_3.INJECT1_1 = "NO";
    CCU2D add_16_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n996), .S1(n151));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(53[54:68])
    defparam add_16_1.INIT0 = 16'hF000;
    defparam add_16_1.INIT1 = 16'h5555;
    defparam add_16_1.INJECT1_0 = "NO";
    defparam add_16_1.INJECT1_1 = "NO";
    CCU2D add_16_9 (.A0(divcounter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n999), 
          .S0(n144));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(53[54:68])
    defparam add_16_9.INIT0 = 16'h5aaa;
    defparam add_16_9.INIT1 = 16'h0000;
    defparam add_16_9.INJECT1_0 = "NO";
    defparam add_16_9.INJECT1_1 = "NO";
    FD1S3IX divcounter_i3 (.D(n143[3]), .CK(PIN11_c), .CD(n29), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module FreqDiv20Bit
//

module FreqDiv20Bit (PIN11_c, PIN10_c_2, PIN20_c_19, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input PIN10_c_2;
    output PIN20_c_19;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/makefpga_top.v(56[32:37])
    wire [19:0]n149;
    wire [19:0]n85;
    
    wire n1004, n1005, n1003, n1009, n1002, n1008, n1007, n1006, 
        n1001, n1000;
    
    FD1S3IX count_153__i0 (.D(n85[0]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i0.GSR = "ENABLED";
    FD1S3IX count_153__i19 (.D(n85[19]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(PIN20_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i19.GSR = "ENABLED";
    FD1S3IX count_153__i18 (.D(n85[18]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i18.GSR = "ENABLED";
    FD1S3IX count_153__i17 (.D(n85[17]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i17.GSR = "ENABLED";
    FD1S3IX count_153__i16 (.D(n85[16]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i16.GSR = "ENABLED";
    FD1S3IX count_153__i15 (.D(n85[15]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i15.GSR = "ENABLED";
    FD1S3IX count_153__i14 (.D(n85[14]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i14.GSR = "ENABLED";
    FD1S3IX count_153__i13 (.D(n85[13]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i13.GSR = "ENABLED";
    FD1S3IX count_153__i12 (.D(n85[12]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i12.GSR = "ENABLED";
    FD1S3IX count_153__i11 (.D(n85[11]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i11.GSR = "ENABLED";
    FD1S3IX count_153__i10 (.D(n85[10]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i10.GSR = "ENABLED";
    FD1S3IX count_153__i9 (.D(n85[9]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i9.GSR = "ENABLED";
    FD1S3IX count_153__i8 (.D(n85[8]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i8.GSR = "ENABLED";
    FD1S3IX count_153__i7 (.D(n85[7]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i7.GSR = "ENABLED";
    FD1S3IX count_153__i6 (.D(n85[6]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i6.GSR = "ENABLED";
    FD1S3IX count_153__i5 (.D(n85[5]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i5.GSR = "ENABLED";
    FD1S3IX count_153__i4 (.D(n85[4]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i4.GSR = "ENABLED";
    FD1S3IX count_153__i3 (.D(n85[3]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i3.GSR = "ENABLED";
    FD1S3IX count_153__i2 (.D(n85[2]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i2.GSR = "ENABLED";
    FD1S3IX count_153__i1 (.D(n85[1]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153__i1.GSR = "ENABLED";
    CCU2D count_153_add_4_11 (.A0(n149[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1004), .COUT(n1005), .S0(n85[9]), .S1(n85[10]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_11.INIT0 = 16'hfaaa;
    defparam count_153_add_4_11.INIT1 = 16'hfaaa;
    defparam count_153_add_4_11.INJECT1_0 = "NO";
    defparam count_153_add_4_11.INJECT1_1 = "NO";
    CCU2D count_153_add_4_9 (.A0(n149[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1003), .COUT(n1004), .S0(n85[7]), .S1(n85[8]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_9.INIT0 = 16'hfaaa;
    defparam count_153_add_4_9.INIT1 = 16'hfaaa;
    defparam count_153_add_4_9.INJECT1_0 = "NO";
    defparam count_153_add_4_9.INJECT1_1 = "NO";
    CCU2D count_153_add_4_21 (.A0(PIN20_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1009), .S0(n85[19]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_21.INIT0 = 16'hfaaa;
    defparam count_153_add_4_21.INIT1 = 16'h0000;
    defparam count_153_add_4_21.INJECT1_0 = "NO";
    defparam count_153_add_4_21.INJECT1_1 = "NO";
    CCU2D count_153_add_4_7 (.A0(n149[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1002), .COUT(n1003), .S0(n85[5]), .S1(n85[6]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_7.INIT0 = 16'hfaaa;
    defparam count_153_add_4_7.INIT1 = 16'hfaaa;
    defparam count_153_add_4_7.INJECT1_0 = "NO";
    defparam count_153_add_4_7.INJECT1_1 = "NO";
    CCU2D count_153_add_4_19 (.A0(n149[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1008), .COUT(n1009), .S0(n85[17]), .S1(n85[18]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_19.INIT0 = 16'hfaaa;
    defparam count_153_add_4_19.INIT1 = 16'hfaaa;
    defparam count_153_add_4_19.INJECT1_0 = "NO";
    defparam count_153_add_4_19.INJECT1_1 = "NO";
    CCU2D count_153_add_4_17 (.A0(n149[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1007), .COUT(n1008), .S0(n85[15]), .S1(n85[16]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_17.INIT0 = 16'hfaaa;
    defparam count_153_add_4_17.INIT1 = 16'hfaaa;
    defparam count_153_add_4_17.INJECT1_0 = "NO";
    defparam count_153_add_4_17.INJECT1_1 = "NO";
    CCU2D count_153_add_4_15 (.A0(n149[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1006), .COUT(n1007), .S0(n85[13]), .S1(n85[14]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_15.INIT0 = 16'hfaaa;
    defparam count_153_add_4_15.INIT1 = 16'hfaaa;
    defparam count_153_add_4_15.INJECT1_0 = "NO";
    defparam count_153_add_4_15.INJECT1_1 = "NO";
    CCU2D count_153_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1001), .COUT(n1002), .S0(n85[3]), .S1(n85[4]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_5.INIT0 = 16'hfaaa;
    defparam count_153_add_4_5.INIT1 = 16'hfaaa;
    defparam count_153_add_4_5.INJECT1_0 = "NO";
    defparam count_153_add_4_5.INJECT1_1 = "NO";
    CCU2D count_153_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1000), .COUT(n1001), .S0(n85[1]), .S1(n85[2]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_3.INIT0 = 16'hfaaa;
    defparam count_153_add_4_3.INIT1 = 16'hfaaa;
    defparam count_153_add_4_3.INJECT1_0 = "NO";
    defparam count_153_add_4_3.INJECT1_1 = "NO";
    CCU2D count_153_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1000), .S1(n85[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_1.INIT0 = 16'hF000;
    defparam count_153_add_4_1.INIT1 = 16'h0555;
    defparam count_153_add_4_1.INJECT1_0 = "NO";
    defparam count_153_add_4_1.INJECT1_1 = "NO";
    CCU2D count_153_add_4_13 (.A0(n149[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1005), .COUT(n1006), .S0(n85[11]), .S1(n85[12]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/echo_project/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_153_add_4_13.INIT0 = 16'hfaaa;
    defparam count_153_add_4_13.INIT1 = 16'hfaaa;
    defparam count_153_add_4_13.INJECT1_0 = "NO";
    defparam count_153_add_4_13.INJECT1_1 = "NO";
    
endmodule
