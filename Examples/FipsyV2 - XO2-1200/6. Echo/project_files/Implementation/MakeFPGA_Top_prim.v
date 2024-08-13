// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Aug 12 22:54:19 2024
//
// Verilog Description of module MakeFPGA_Top
//

module MakeFPGA_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, 
            PIN14, PIN17, PIN18, PIN19, PIN20, LEDn) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(49[8:20])
    output PIN7 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[7:11])
    output PIN8 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[13:17])
    input PIN9 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[19:23])
    output PIN10 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[25:30])
    output PIN11 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    output PIN12 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[39:44])
    output PIN13 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[46:51])
    output PIN14 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[53:58])
    output PIN17 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[60:65])
    output PIN18 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[67:72])
    output PIN19 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[74:79])
    output PIN20 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[81:86])
    output LEDn;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(58[8:12])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    wire clk_N_193 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(123[11:21])
    
    wire GND_net, VCC_net, PIN8_c, PIN9_c, PIN10_c_2, PIN20_c_19, 
        LEDn_c;
    wire [7:0]data;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(180[12:16])
    wire [20:0]counter_register;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(229[12:28])
    
    wire rcv, LEDn_N_45, n40, n225, n24, n38, clk_baud, clear;
    wire [3:0]bitc;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(61[11:15])
    
    wire PIN11_c_enable_22, n36, n34, n32;
    wire [1:0]state_adj_255;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(122[11:16])
    
    wire n11, n591, PIN11_c_enable_33, n965, n964, n523, n28, 
        n963, PIN11_c_enable_48, n27, n90, n91, n92, n93, n94, 
        n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, 
        n105, n106, n107, n108, n109, n110, n962, n961, n969, 
        n960, n968, n967, n966;
    
    VHI i2 (.Z(VCC_net));
    INV i904 (.A(PIN11_c), .Z(clk_N_193));
    LUT4 i362_1_lut_rep_7 (.A(rcv), .Z(PIN11_c_enable_48)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(247[3] 262[6])
    defparam i362_1_lut_rep_7.init = 16'h5555;
    FD1P3IX counter_register_145__i17 (.D(n93), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i17.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(PIN11_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    FD1P3IX counter_register_145__i18 (.D(n92), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i18.GSR = "ENABLED";
    LUT4 i20_4_lut (.A(n27), .B(n40), .C(n36), .D(n28), .Z(LEDn_N_45)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20_4_lut.init = 16'h8000;
    FD1P3IX counter_register_145__i5 (.D(n105), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i5.GSR = "ENABLED";
    FD1P3IX counter_register_145__i6 (.D(n104), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i6.GSR = "ENABLED";
    LUT4 i397_2_lut_2_lut (.A(rcv), .B(LEDn_N_45), .Z(n591)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(247[3] 262[6])
    defparam i397_2_lut_2_lut.init = 16'h4444;
    OB PIN10_pad (.I(PIN10_c_2), .O(PIN10));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[25:30])
    LUT4 i108_3_lut (.A(state_adj_255[0]), .B(n523), .C(state_adj_255[1]), 
         .Z(n225)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(122[11:16])
    defparam i108_3_lut.init = 16'hcaca;
    FD1P3IX counter_register_145__i19 (.D(n91), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i19.GSR = "ENABLED";
    FD1P3IX counter_register_145__i7 (.D(n103), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i7.GSR = "ENABLED";
    OB PIN8_pad (.I(PIN8_c), .O(PIN8));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[13:17])
    OB PIN7_pad (.I(GND_net), .O(PIN7));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[7:11])
    FD1P3IX counter_register_145__i8 (.D(n102), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i8.GSR = "ENABLED";
    FD1P3IX counter_register_145__i9 (.D(n101), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i9.GSR = "ENABLED";
    FD1P3IX counter_register_145__i20 (.D(n90), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i20.GSR = "ENABLED";
    FD1P3IX counter_register_145__i0 (.D(n110), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i0.GSR = "ENABLED";
    FD1P3AX triggery_19 (.D(PIN11_c_enable_48), .SP(PIN11_c_enable_22), 
            .CK(PIN11_c), .Q(LEDn_c));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(235[7] 263[5])
    defparam triggery_19.GSR = "ENABLED";
    LUT4 i148_2_lut_rep_4 (.A(clk_baud), .B(clear), .Z(PIN11_c_enable_33)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i148_2_lut_rep_4.init = 16'heeee;
    LUT4 i19_4_lut (.A(counter_register[16]), .B(n38), .C(n32), .D(counter_register[20]), 
         .Z(n40)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i19_4_lut.init = 16'h8000;
    LUT4 i15_4_lut (.A(counter_register[0]), .B(counter_register[13]), .C(counter_register[4]), 
         .D(counter_register[14]), .Z(n36)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 i7_2_lut (.A(counter_register[17]), .B(counter_register[18]), .Z(n28)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    LUT4 i17_4_lut (.A(counter_register[7]), .B(n34), .C(n24), .D(counter_register[9]), 
         .Z(n38)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i11_3_lut (.A(counter_register[12]), .B(counter_register[11]), 
         .C(counter_register[3]), .Z(n32)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i11_3_lut.init = 16'h8080;
    LUT4 i282_2_lut_3_lut (.A(clk_baud), .B(clear), .C(bitc[0]), .Z(n11)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i282_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i12_3_lut (.A(LEDn_N_45), .B(data[1]), .C(rcv), .Z(PIN11_c_enable_22)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12_3_lut.init = 16'hcaca;
    LUT4 i13_4_lut (.A(counter_register[1]), .B(counter_register[5]), .C(counter_register[2]), 
         .D(counter_register[6]), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(counter_register[10]), .B(counter_register[19]), .Z(n24)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    OB PIN12_pad (.I(GND_net), .O(PIN12));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[39:44])
    OB PIN13_pad (.I(GND_net), .O(PIN13));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[46:51])
    OB PIN14_pad (.I(GND_net), .O(PIN14));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[53:58])
    OB PIN17_pad (.I(GND_net), .O(PIN17));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[60:65])
    OB PIN18_pad (.I(GND_net), .O(PIN18));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[67:72])
    OB PIN19_pad (.I(GND_net), .O(PIN19));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[74:79])
    OB PIN20_pad (.I(PIN20_c_19), .O(PIN20));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[81:86])
    OB LEDn_pad (.I(LEDn_c), .O(LEDn));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(58[8:12])
    IB PIN9_pad (.I(PIN9), .O(PIN9_c));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[19:23])
    LUT4 i6_2_lut (.A(counter_register[8]), .B(counter_register[15]), .Z(n27)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    FD1P3IX counter_register_145__i10 (.D(n100), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i10.GSR = "ENABLED";
    FD1P3IX counter_register_145__i11 (.D(n99), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i11.GSR = "ENABLED";
    CCU2D counter_register_145_add_4_11 (.A0(counter_register[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n964), .COUT(n965), .S0(n101), 
          .S1(n100));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_11.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_register_145_add_4_21 (.A0(counter_register[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n969), .S0(n91), .S1(n90));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_21.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_register_145_add_4_19 (.A0(counter_register[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n968), .COUT(n969), .S0(n93), 
          .S1(n92));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_19.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_19.INJECT1_1 = "NO";
    FD1P3IX counter_register_145__i12 (.D(n98), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i12.GSR = "ENABLED";
    CCU2D counter_register_145_add_4_9 (.A0(counter_register[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n963), .COUT(n964), .S0(n103), 
          .S1(n102));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_9.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_register_145_add_4_17 (.A0(counter_register[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n967), .COUT(n968), .S0(n95), 
          .S1(n94));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_17.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_register_145_add_4_15 (.A0(counter_register[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n966), .COUT(n967), .S0(n97), 
          .S1(n96));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_15.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_15.INJECT1_1 = "NO";
    uart_rx RX0 (.PIN11_c(PIN11_c), .n163({clk_baud}), .bitc({Open_0, 
            Open_1, Open_2, bitc[0]}), .n167({Open_3, Open_4, Open_5, 
            clear}), .n11(n11), .PIN9_c(PIN9_c), .data({data}), .PIN11_c_enable_33(PIN11_c_enable_33), 
            .rcv(rcv), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(205[3] 210[8])
    CCU2D counter_register_145_add_4_7 (.A0(counter_register[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n962), .COUT(n963), .S0(n105), 
          .S1(n104));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_7.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_register_145_add_4_13 (.A0(counter_register[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n965), .COUT(n966), .S0(n99), 
          .S1(n98));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_13.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_13.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    CCU2D counter_register_145_add_4_5 (.A0(counter_register[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n961), .COUT(n962), .S0(n107), 
          .S1(n106));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_5.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_register_145_add_4_3 (.A0(counter_register[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_register[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n960), .COUT(n961), .S0(n109), 
          .S1(n108));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_register_145_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_register_145_add_4_3.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_3.INJECT1_1 = "NO";
    FD1P3IX counter_register_145__i13 (.D(n97), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i13.GSR = "ENABLED";
    FD1P3IX counter_register_145__i14 (.D(n96), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i14.GSR = "ENABLED";
    FD1P3IX counter_register_145__i15 (.D(n95), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i15.GSR = "ENABLED";
    FD1P3IX counter_register_145__i16 (.D(n94), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i16.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D counter_register_145_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LEDn_c), .B1(counter_register[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n960), .S1(n110));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145_add_4_1.INIT0 = 16'hF000;
    defparam counter_register_145_add_4_1.INIT1 = 16'ha999;
    defparam counter_register_145_add_4_1.INJECT1_0 = "NO";
    defparam counter_register_145_add_4_1.INJECT1_1 = "NO";
    FD1P3IX counter_register_145__i4 (.D(n106), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i4.GSR = "ENABLED";
    FD1P3IX counter_register_145__i3 (.D(n107), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i3.GSR = "ENABLED";
    FD1P3IX counter_register_145__i2 (.D(n108), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i2.GSR = "ENABLED";
    FD1P3IX counter_register_145__i1 (.D(n109), .SP(PIN11_c_enable_48), 
            .CD(n591), .CK(PIN11_c), .Q(counter_register[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(259[26:70])
    defparam counter_register_145__i1.GSR = "ENABLED";
    uart_tx TX0 (.PIN11_c(PIN11_c), .data({data}), .clk_N_193(clk_N_193), 
            .state({state_adj_255}), .PIN8_c(PIN8_c), .n225(n225), .n523(n523), 
            .rcv(rcv), .PIN10_c_2(PIN10_c_2), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(220[3] 226[2])
    FreqDiv20Bit FreqDiv20Bit_inst (.PIN11_c(PIN11_c), .PIN10_c_2(PIN10_c_2), 
            .PIN20_c_19(PIN20_c_19), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(162[14] 166[32])
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (PIN11_c, n163, bitc, n167, n11, PIN9_c, data, 
            PIN11_c_enable_33, rcv, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    output [0:0]n163;
    output [3:0]bitc;
    output [3:0]n167;
    input n11;
    input PIN9_c;
    output [7:0]data;
    input PIN11_c_enable_33;
    output rcv;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    wire [9:0]raw_data;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(71[11:19])
    wire [1:0]state;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(95[11:16])
    wire [1:0]next_state;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(96[11:21])
    wire [1:0]next_state_1__N_111;
    
    wire rx_r, n1143;
    wire [3:0]n167_c;
    
    wire n8, n1146, n1147;
    wire [3:0]bitc_c;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(61[11:15])
    
    wire n2;
    wire [3:0]n174;
    
    wire n1058, n1142;
    wire [7:0]divcounter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(49[13:23])
    
    wire n39, n611;
    
    FD1P3AX raw_data__0__i5 (.D(raw_data[6]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[5]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i5.GSR = "ENABLED";
    FD1P3AX raw_data__0__i4 (.D(raw_data[5]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[4]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i4.GSR = "ENABLED";
    FD1P3AX raw_data__0__i3 (.D(raw_data[4]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[3]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i3.GSR = "ENABLED";
    FD1P3AX raw_data__0__i2 (.D(raw_data[3]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i2.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(next_state[0]), .CK(PIN11_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(99[8] 103[25])
    defparam state_i0.GSR = "ENABLED";
    FD1S3AX next_state_i0 (.D(next_state_1__N_111[0]), .CK(PIN11_c), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(106[8] 152[4])
    defparam next_state_i0.GSR = "ENABLED";
    FD1S3IX bitc__i0 (.D(n11), .CK(PIN11_c), .CD(n167[0]), .Q(bitc[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i0.GSR = "ENABLED";
    FD1S3AX rx_r_36 (.D(PIN9_c), .CK(PIN11_c), .Q(rx_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(48[8] 49[14])
    defparam rx_r_36.GSR = "ENABLED";
    FD1P3AX raw_data__0__i1 (.D(raw_data[2]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[1]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i1.GSR = "ENABLED";
    FD1S3IX rcv_45_i0 (.D(n1143), .CK(PIN11_c), .CD(state[1]), .Q(n167[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i0.GSR = "ENABLED";
    FD1P3AX data_i0_i0 (.D(raw_data[1]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(state[1]), .B(rx_r), .Z(n8)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_1_lut_rep_9 (.A(state[1]), .Z(n1146)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i1_1_lut_rep_9.init = 16'h5555;
    LUT4 i1_4_lut_4_lut (.A(state[1]), .B(bitc[0]), .C(n1147), .D(bitc_c[1]), 
         .Z(n2)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i1_4_lut_4_lut.init = 16'h5455;
    FD1P3AX raw_data__0__i6 (.D(raw_data[7]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[6]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i6.GSR = "ENABLED";
    LUT4 i846_2_lut_rep_10 (.A(bitc_c[2]), .B(bitc_c[3]), .Z(n1147)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i846_2_lut_rep_10.init = 16'hbbbb;
    FD1P3IX bitc__i3 (.D(n174[3]), .SP(PIN11_c_enable_33), .CD(n167[0]), 
            .CK(PIN11_c), .Q(bitc_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n174[2]), .SP(PIN11_c_enable_33), .CD(n167[0]), 
            .CK(PIN11_c), .Q(bitc_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i1 (.D(n174[1]), .SP(PIN11_c_enable_33), .CD(n167[0]), 
            .CK(PIN11_c), .Q(bitc_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(63[8] 67[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_111[1]), .CK(PIN11_c), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(106[8] 152[4])
    defparam next_state_i1.GSR = "ENABLED";
    LUT4 i3_3_lut_4_lut (.A(bitc_c[2]), .B(bitc_c[3]), .C(bitc_c[1]), 
         .D(bitc[0]), .Z(n1058)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0040;
    FD1S3AX state_i1 (.D(next_state[1]), .CK(PIN11_c), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(99[8] 103[25])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i168_2_lut_3_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[2]), 
         .Z(n174[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(67[13:21])
    defparam i168_2_lut_3_lut.init = 16'h7878;
    LUT4 i175_3_lut_4_lut (.A(bitc_c[1]), .B(bitc[0]), .C(bitc_c[2]), 
         .D(bitc_c[3]), .Z(n174[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(67[13:21])
    defparam i175_3_lut_4_lut.init = 16'h7f80;
    LUT4 i161_2_lut (.A(bitc_c[1]), .B(bitc[0]), .Z(n174[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(67[13:21])
    defparam i161_2_lut.init = 16'h6666;
    LUT4 i16_4_lut_3_lut (.A(state[0]), .B(n1058), .C(state[1]), .Z(next_state_1__N_111[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i16_4_lut_3_lut.init = 16'h5858;
    FD1P3AX raw_data__0__i7 (.D(raw_data[8]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[7]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i7.GSR = "ENABLED";
    FD1P3AX raw_data__0__i8 (.D(raw_data[9]), .SP(n163[0]), .CK(PIN11_c), 
            .Q(raw_data[8]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i8.GSR = "ENABLED";
    FD1P3AX raw_data__0__i9 (.D(rx_r), .SP(n163[0]), .CK(PIN11_c), .Q(raw_data[9]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(73[8] 75[39])
    defparam raw_data__0__i9.GSR = "ENABLED";
    FD1S3IX rcv_45_i1 (.D(state[0]), .CK(PIN11_c), .CD(state[1]), .Q(n167_c[1]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i1.GSR = "ENABLED";
    FD1S3IX rcv_45_i3 (.D(state[0]), .CK(PIN11_c), .CD(n1146), .Q(rcv));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i3.GSR = "ENABLED";
    FD1P3AX data_i0_i1 (.D(raw_data[2]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i1.GSR = "ENABLED";
    LUT4 i366_1_lut_rep_5 (.A(n167_c[1]), .Z(n1142)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i366_1_lut_rep_5.init = 16'h5555;
    LUT4 i285_1_lut_rep_6 (.A(state[0]), .Z(n1143)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i285_1_lut_rep_6.init = 16'h5555;
    LUT4 i1_4_lut_4_lut_adj_17 (.A(n167_c[1]), .B(divcounter[3]), .C(divcounter[5]), 
         .D(n39), .Z(n611)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam i1_4_lut_4_lut_adj_17.init = 16'h5755;
    FD1P3AX data_i0_i2 (.D(raw_data[3]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i2.GSR = "ENABLED";
    FD1P3AX data_i0_i3 (.D(raw_data[4]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i3.GSR = "ENABLED";
    FD1P3AX data_i0_i4 (.D(raw_data[5]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i4.GSR = "ENABLED";
    FD1P3AX data_i0_i5 (.D(raw_data[6]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i5.GSR = "ENABLED";
    FD1P3AX data_i0_i6 (.D(raw_data[7]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i6.GSR = "ENABLED";
    FD1P3AX data_i0_i7 (.D(raw_data[8]), .SP(n167_c[2]), .CK(PIN11_c), 
            .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=8, LSE_LLINE=205, LSE_RLINE=210 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(78[8] 82[27])
    defparam data_i0_i7.GSR = "ENABLED";
    PFUMX i19 (.BLUT(n8), .ALUT(n2), .C0(state[0]), .Z(next_state_1__N_111[0]));
    FD1S3IX rcv_45_i2 (.D(n1143), .CK(PIN11_c), .CD(n1146), .Q(n167_c[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(114[3] 150[10])
    defparam rcv_45_i2.GSR = "ENABLED";
    baudgen_rx baudgen0 (.divcounter({Open_6, Open_7, divcounter[5], Open_8, 
            divcounter[3], Open_9, Open_10, Open_11}), .n39(n39), 
            .PIN11_c(PIN11_c), .n1142(n1142), .n163({n163}), .GND_net(GND_net), 
            .n611(n611), .bauden(n167_c[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_rx.v(53[3] 58[4])
    
endmodule
//
// Verilog Description of module baudgen_rx
//

module baudgen_rx (divcounter, n39, PIN11_c, n1142, n163, GND_net, 
            n611, bauden) /* synthesis syn_module_defined=1 */ ;
    output [7:0]divcounter;
    output n39;
    input PIN11_c;
    input n1142;
    output [0:0]n163;
    input GND_net;
    input n611;
    input bauden;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    wire [7:0]n143;
    wire [31:0]n38;
    wire [7:0]divcounter_c;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(49[13:23])
    
    wire n1099, n1070, n6, n6_adj_250, n971, n972, n974, n973;
    
    LUT4 i1_2_lut_4_lut (.A(divcounter[3]), .B(n39), .C(divcounter[5]), 
         .D(n143[0]), .Z(n38[0])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut.init = 16'hfb00;
    LUT4 i862_4_lut (.A(divcounter_c[4]), .B(divcounter_c[1]), .C(divcounter_c[7]), 
         .D(divcounter_c[0]), .Z(n1099)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i862_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_9 (.A(divcounter[3]), .B(n39), .C(divcounter[5]), 
         .D(n143[6]), .Z(n38[6])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_9.init = 16'hfb00;
    LUT4 i1_2_lut_4_lut_adj_10 (.A(divcounter[3]), .B(n39), .C(divcounter[5]), 
         .D(n143[4]), .Z(n38[4])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_10.init = 16'hfb00;
    FD1S3JX divcounter_i0 (.D(n38[0]), .CK(PIN11_c), .PD(n1142), .Q(divcounter_c[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_11 (.A(divcounter[3]), .B(n39), .C(divcounter[5]), 
         .D(n143[7]), .Z(n38[7])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_11.init = 16'hfb00;
    LUT4 i4_4_lut (.A(divcounter_c[7]), .B(n1070), .C(divcounter_c[4]), 
         .D(n6), .Z(n39)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(divcounter_c[1]), .B(divcounter_c[0]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_12 (.A(divcounter[3]), .B(n1070), .C(n1099), .D(n6_adj_250), 
         .Z(n163[0])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut_adj_12.init = 16'h0800;
    CCU2D add_16_3 (.A0(divcounter_c[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(divcounter_c[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n971), .COUT(n972), .S0(n143[1]), .S1(n143[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(59[54:68])
    defparam add_16_3.INIT0 = 16'h5aaa;
    defparam add_16_3.INIT1 = 16'h5aaa;
    defparam add_16_3.INJECT1_0 = "NO";
    defparam add_16_3.INJECT1_1 = "NO";
    CCU2D add_16_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter_c[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n971), .S1(n143[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(59[54:68])
    defparam add_16_1.INIT0 = 16'hF000;
    defparam add_16_1.INIT1 = 16'h5555;
    defparam add_16_1.INJECT1_0 = "NO";
    defparam add_16_1.INJECT1_1 = "NO";
    FD1S3JX divcounter_i1 (.D(n38[1]), .CK(PIN11_c), .PD(n1142), .Q(divcounter_c[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i1.GSR = "ENABLED";
    FD1S3JX divcounter_i2 (.D(n38[2]), .CK(PIN11_c), .PD(n1142), .Q(divcounter_c[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i2.GSR = "ENABLED";
    FD1S3JX divcounter_i4 (.D(n38[4]), .CK(PIN11_c), .PD(n1142), .Q(divcounter_c[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i4.GSR = "ENABLED";
    FD1S3IX divcounter_i5 (.D(n143[5]), .CK(PIN11_c), .CD(n611), .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i5.GSR = "ENABLED";
    FD1S3JX divcounter_i6 (.D(n38[6]), .CK(PIN11_c), .PD(n1142), .Q(divcounter_c[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i6.GSR = "ENABLED";
    FD1S3JX divcounter_i7 (.D(n38[7]), .CK(PIN11_c), .PD(n1142), .Q(divcounter_c[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i7.GSR = "ENABLED";
    CCU2D add_16_9 (.A0(divcounter_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n974), .S0(n143[7]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(59[54:68])
    defparam add_16_9.INIT0 = 16'h5aaa;
    defparam add_16_9.INIT1 = 16'h0000;
    defparam add_16_9.INJECT1_0 = "NO";
    defparam add_16_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_13 (.A(bauden), .B(divcounter[5]), .Z(n6_adj_250)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_13.init = 16'h8888;
    CCU2D add_16_7 (.A0(divcounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n973), .COUT(n974), .S0(n143[5]), .S1(n143[6]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(59[54:68])
    defparam add_16_7.INIT0 = 16'h5aaa;
    defparam add_16_7.INIT1 = 16'h5aaa;
    defparam add_16_7.INJECT1_0 = "NO";
    defparam add_16_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_14 (.A(divcounter_c[6]), .B(divcounter_c[2]), .Z(n1070)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_14.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_15 (.A(divcounter[3]), .B(n39), .C(divcounter[5]), 
         .D(n143[1]), .Z(n38[1])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_15.init = 16'hfb00;
    CCU2D add_16_5 (.A0(divcounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n972), .COUT(n973), .S0(n143[3]), .S1(n143[4]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(59[54:68])
    defparam add_16_5.INIT0 = 16'h5aaa;
    defparam add_16_5.INIT1 = 16'h5aaa;
    defparam add_16_5.INJECT1_0 = "NO";
    defparam add_16_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_16 (.A(divcounter[3]), .B(n39), .C(divcounter[5]), 
         .D(n143[2]), .Z(n38[2])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam i1_2_lut_4_lut_adj_16.init = 16'hfb00;
    FD1S3IX divcounter_i3 (.D(n143[3]), .CK(PIN11_c), .CD(n611), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=3, LSE_RCOL=4, LSE_LLINE=53, LSE_RLINE=58 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_rx.v(52[8] 63[32])
    defparam divcounter_i3.GSR = "ENABLED";
    
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
// Verilog Description of module uart_tx
//

module uart_tx (PIN11_c, data, clk_N_193, state, PIN8_c, n225, n523, 
            rcv, PIN10_c_2, GND_net) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input [7:0]data;
    input clk_N_193;
    output [1:0]state;
    output PIN8_c;
    input n225;
    output n523;
    input rcv;
    output PIN10_c_2;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    wire clk_N_193 /* synthesis is_inv_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(123[11:21])
    wire [7:0]data_r;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(44[11:17])
    
    wire data_r_7__N_194;
    wire [18:0]shifter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(63[12:19])
    wire [2:0]n169;
    wire [18:0]shifter_18__N_197;
    wire [1:0]next_state;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(123[11:21])
    wire [1:0]n217;
    wire [4:0]bitc;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(40[11:15])
    wire [4:0]n18;
    
    wire n1145, n739;
    wire [7:0]n143;
    wire [31:0]n38;
    
    wire n29, PIN11_c_enable_39;
    wire [4:0]n248;
    
    wire PIN11_c_enable_30, n1103, n724;
    wire [2:0]n168;
    
    wire n240;
    wire [1:0]next_state_1__N_190;
    
    wire n579;
    
    FD1P3AX data_r_i0_i0 (.D(data[0]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i0.GSR = "ENABLED";
    LUT4 mux_14_i15_3_lut (.A(shifter[15]), .B(data_r[3]), .C(n169[0]), 
         .Z(shifter_18__N_197[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i15_3_lut.init = 16'hcaca;
    LUT4 mux_14_i14_3_lut (.A(shifter[14]), .B(data_r[2]), .C(n169[0]), 
         .Z(shifter_18__N_197[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i14_3_lut.init = 16'hcaca;
    FD1S3IX ready_53_i0 (.D(state[0]), .CK(clk_N_193), .CD(state[1]), 
            .Q(n169[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam ready_53_i0.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(next_state[0]), .CK(PIN11_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(126[8] 130[25])
    defparam state_i0.GSR = "ENABLED";
    FD1S3AX tx_48 (.D(shifter[0]), .CK(PIN11_c), .Q(PIN8_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(98[8] 101[5])
    defparam tx_48.GSR = "ENABLED";
    FD1S3IX next_state_i0 (.D(n217[0]), .CK(clk_N_193), .CD(n225), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(133[8] 174[4])
    defparam next_state_i0.GSR = "ENABLED";
    LUT4 mux_14_i13_3_lut (.A(shifter[13]), .B(data_r[1]), .C(n169[0]), 
         .Z(shifter_18__N_197[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i13_3_lut.init = 16'hcaca;
    FD1S3IX bitc__i0 (.D(n18[0]), .CK(PIN11_c), .CD(n169[0]), .Q(bitc[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i0.GSR = "ENABLED";
    LUT4 mux_14_i12_3_lut (.A(shifter[12]), .B(data_r[0]), .C(n169[0]), 
         .Z(shifter_18__N_197[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i12_3_lut.init = 16'hcaca;
    LUT4 i192_2_lut_rep_8 (.A(bitc[1]), .B(bitc[0]), .Z(n1145)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(92[13:21])
    defparam i192_2_lut_rep_8.init = 16'h8888;
    LUT4 i1_2_lut (.A(n739), .B(n143[1]), .Z(n38[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_3 (.A(n739), .B(n143[2]), .Z(n38[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'h8888;
    LUT4 i871_2_lut (.A(n739), .B(n169[1]), .Z(n29)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i871_2_lut.init = 16'h7777;
    FD1P3JX shifter_i1 (.D(shifter[2]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i1.GSR = "ENABLED";
    LUT4 i197_2_lut_3_lut (.A(bitc[1]), .B(bitc[0]), .C(bitc[2]), .Z(n248[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(92[13:21])
    defparam i197_2_lut_3_lut.init = 16'h7878;
    FD1P3JX shifter_i2 (.D(shifter[3]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i2.GSR = "ENABLED";
    FD1P3JX shifter_i3 (.D(shifter[4]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_4 (.A(n739), .B(n143[4]), .Z(n38[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'h8888;
    FD1P3JX shifter_i4 (.D(shifter[5]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i4.GSR = "ENABLED";
    FD1P3JX shifter_i5 (.D(shifter[6]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i5.GSR = "ENABLED";
    FD1P3JX shifter_i6 (.D(shifter[7]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i6.GSR = "ENABLED";
    LUT4 i204_2_lut_3_lut_4_lut (.A(bitc[1]), .B(bitc[0]), .C(bitc[3]), 
         .D(bitc[2]), .Z(n248[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(92[13:21])
    defparam i204_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3JX shifter_i7 (.D(shifter[8]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i7.GSR = "ENABLED";
    FD1P3JX shifter_i8 (.D(shifter[9]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i8.GSR = "ENABLED";
    FD1P3JX shifter_i9 (.D(shifter[10]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i9.GSR = "ENABLED";
    FD1P3JX shifter_i18 (.D(data_r[7]), .SP(PIN11_c_enable_39), .PD(PIN11_c_enable_30), 
            .CK(PIN11_c), .Q(shifter[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i18.GSR = "ENABLED";
    FD1P3JX shifter_i0 (.D(shifter[1]), .SP(PIN11_c_enable_39), .PD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_5 (.A(n739), .B(n143[6]), .Z(n38[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_5.init = 16'h8888;
    FD1P3AX shifter_i17 (.D(shifter_18__N_197[17]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i17.GSR = "ENABLED";
    FD1P3AX shifter_i16 (.D(shifter_18__N_197[16]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i16.GSR = "ENABLED";
    FD1P3AX shifter_i15 (.D(shifter_18__N_197[15]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i15.GSR = "ENABLED";
    FD1P3AX shifter_i14 (.D(shifter_18__N_197[14]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i14.GSR = "ENABLED";
    FD1P3AX shifter_i13 (.D(shifter_18__N_197[13]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i13.GSR = "ENABLED";
    FD1P3AX shifter_i12 (.D(shifter_18__N_197[12]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i12.GSR = "ENABLED";
    FD1P3AX shifter_i11 (.D(shifter_18__N_197[11]), .SP(PIN11_c_enable_39), 
            .CK(PIN11_c), .Q(shifter[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i11.GSR = "ENABLED";
    FD1P3IX shifter_i10 (.D(shifter[11]), .SP(PIN11_c_enable_30), .CD(n169[0]), 
            .CK(PIN11_c), .Q(shifter[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(69[8] 80[38])
    defparam shifter_i10.GSR = "ENABLED";
    FD1P3AX data_r_i0_i7 (.D(data[7]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_6 (.A(n739), .B(n143[7]), .Z(n38[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'h8888;
    FD1P3AX data_r_i0_i6 (.D(data[6]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i6.GSR = "ENABLED";
    FD1P3AX data_r_i0_i5 (.D(data[5]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i5.GSR = "ENABLED";
    FD1P3AX data_r_i0_i4 (.D(data[4]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i4.GSR = "ENABLED";
    FD1P3AX data_r_i0_i3 (.D(data[3]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i3.GSR = "ENABLED";
    FD1P3AX data_r_i0_i2 (.D(data[2]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i2.GSR = "ENABLED";
    FD1P3AX data_r_i0_i1 (.D(data[1]), .SP(data_r_7__N_194), .CK(PIN11_c), 
            .Q(data_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(56[8] 58[20])
    defparam data_r_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(state[0]), .B(bitc[4]), .C(bitc[2]), .D(n1103), 
         .Z(n523)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_3 (.A(n169[0]), .B(n724), .Z(PIN11_c_enable_39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam i1_2_lut_rep_3.init = 16'heeee;
    LUT4 i284_2_lut_3_lut (.A(n169[0]), .B(n724), .C(bitc[0]), .Z(n18[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam i284_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i281_2_lut (.A(state[0]), .B(state[1]), .Z(n168[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam i281_2_lut.init = 16'h6666;
    LUT4 i110_1_lut (.A(state[0]), .Z(n240)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(126[8] 130[25])
    defparam i110_1_lut.init = 16'h5555;
    LUT4 i866_3_lut (.A(bitc[1]), .B(bitc[0]), .C(bitc[3]), .Z(n1103)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i866_3_lut.init = 16'hfefe;
    LUT4 i582_3_lut (.A(state[0]), .B(n523), .C(state[1]), .Z(next_state_1__N_190[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam i582_3_lut.init = 16'h3a3a;
    LUT4 mux_14_i18_3_lut (.A(shifter[18]), .B(data_r[6]), .C(n169[0]), 
         .Z(shifter_18__N_197[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i18_3_lut.init = 16'hcaca;
    LUT4 mux_14_i17_3_lut (.A(shifter[17]), .B(data_r[5]), .C(n169[0]), 
         .Z(shifter_18__N_197[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i17_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(rcv), .B(state[1]), .C(state[0]), .Z(data_r_7__N_194)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    FD1S3AX ready_53_i1 (.D(n168[1]), .CK(clk_N_193), .Q(n169[1]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam ready_53_i1.GSR = "ENABLED";
    FD1S3IX ready_53_i2 (.D(n240), .CK(clk_N_193), .CD(state[1]), .Q(PIN10_c_2));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam ready_53_i2.GSR = "ENABLED";
    FD1S3AX state_i1 (.D(next_state[1]), .CK(PIN11_c), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(126[8] 130[25])
    defparam state_i1.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_190[1]), .CK(clk_N_193), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(133[8] 174[4])
    defparam next_state_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_7 (.A(n169[0]), .B(n724), .Z(PIN11_c_enable_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam i1_2_lut_adj_7.init = 16'h4444;
    LUT4 i211_3_lut_4_lut (.A(bitc[2]), .B(n1145), .C(bitc[3]), .D(bitc[4]), 
         .Z(n248[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(92[13:21])
    defparam i211_3_lut_4_lut.init = 16'h7f80;
    LUT4 i367_1_lut (.A(n169[1]), .Z(n579)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(140[3] 173[10])
    defparam i367_1_lut.init = 16'h5555;
    FD1P3IX bitc__i1 (.D(n248[1]), .SP(PIN11_c_enable_39), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n248[2]), .SP(PIN11_c_enable_39), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i3 (.D(n248[3]), .SP(PIN11_c_enable_39), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1P3IX bitc__i4 (.D(n248[4]), .SP(PIN11_c_enable_39), .CD(n169[0]), 
            .CK(PIN11_c), .Q(bitc[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=220, LSE_RLINE=226 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(85[8] 92[22])
    defparam bitc__i4.GSR = "ENABLED";
    LUT4 i570_2_lut_3_lut (.A(rcv), .B(state[1]), .C(state[0]), .Z(n217[0])) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;
    defparam i570_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut_adj_8 (.A(n739), .B(n143[0]), .Z(n38[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_8.init = 16'h8888;
    LUT4 i190_2_lut (.A(bitc[1]), .B(bitc[0]), .Z(n248[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(92[13:21])
    defparam i190_2_lut.init = 16'h6666;
    LUT4 mux_14_i16_3_lut (.A(shifter[16]), .B(data_r[4]), .C(n169[0]), 
         .Z(shifter_18__N_197[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(79[8] 80[38])
    defparam mux_14_i16_3_lut.init = 16'hcaca;
    baudgen_tx BAUD0 (.PIN11_c(PIN11_c), .n579(n579), .n70(n38[0]), .baud_en(n169[1]), 
            .n724(n724), .GND_net(GND_net), .n145(n143[6]), .n147(n143[4]), 
            .n69(n38[1]), .n68(n38[2]), .n66(n38[4]), .n29(n29), .n64(n38[6]), 
            .n63(n38[7]), .n150(n143[1]), .n149(n143[2]), .n151(n143[0]), 
            .n739(n739), .n144(n143[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/uart_tx.v(105[1] 110[4])
    
endmodule
//
// Verilog Description of module baudgen_tx
//

module baudgen_tx (PIN11_c, n579, n70, baud_en, n724, GND_net, n145, 
            n147, n69, n68, n66, n29, n64, n63, n150, n149, 
            n151, n739, n144) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input n579;
    input n70;
    input baud_en;
    output n724;
    input GND_net;
    output n145;
    output n147;
    input n69;
    input n68;
    input n66;
    input n29;
    input n64;
    input n63;
    output n150;
    output n149;
    output n151;
    output n739;
    output n144;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    wire [7:0]divcounter;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(44[13:23])
    
    wire n1097, n1085, n1075, n977;
    wire [7:0]n143;
    
    wire n978, n976, n975, n1101;
    
    FD1S3JX divcounter_i0 (.D(n70), .CK(PIN11_c), .PD(n579), .Q(divcounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i0.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(divcounter[6]), .B(n1097), .C(n1085), .D(baud_en), 
         .Z(n724)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7_4_lut.init = 16'h0100;
    LUT4 i860_4_lut (.A(divcounter[2]), .B(divcounter[0]), .C(divcounter[4]), 
         .D(n1075), .Z(n1097)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i860_4_lut.init = 16'hfffe;
    LUT4 i848_2_lut (.A(divcounter[1]), .B(divcounter[7]), .Z(n1085)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i848_2_lut.init = 16'heeee;
    LUT4 i838_2_lut (.A(divcounter[3]), .B(divcounter[5]), .Z(n1075)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i838_2_lut.init = 16'heeee;
    CCU2D add_16_7 (.A0(divcounter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n977), .COUT(n978), .S0(n143[5]), .S1(n145));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(53[54:68])
    defparam add_16_7.INIT0 = 16'h5aaa;
    defparam add_16_7.INIT1 = 16'h5aaa;
    defparam add_16_7.INJECT1_0 = "NO";
    defparam add_16_7.INJECT1_1 = "NO";
    CCU2D add_16_5 (.A0(divcounter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n976), .COUT(n977), .S0(n143[3]), .S1(n147));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(53[54:68])
    defparam add_16_5.INIT0 = 16'h5aaa;
    defparam add_16_5.INIT1 = 16'h5aaa;
    defparam add_16_5.INJECT1_0 = "NO";
    defparam add_16_5.INJECT1_1 = "NO";
    FD1S3JX divcounter_i1 (.D(n69), .CK(PIN11_c), .PD(n579), .Q(divcounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i1.GSR = "ENABLED";
    FD1S3JX divcounter_i2 (.D(n68), .CK(PIN11_c), .PD(n579), .Q(divcounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i2.GSR = "ENABLED";
    FD1S3JX divcounter_i4 (.D(n66), .CK(PIN11_c), .PD(n579), .Q(divcounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i4.GSR = "ENABLED";
    FD1S3IX divcounter_i5 (.D(n143[5]), .CK(PIN11_c), .CD(n29), .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i5.GSR = "ENABLED";
    FD1S3JX divcounter_i6 (.D(n64), .CK(PIN11_c), .PD(n579), .Q(divcounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i6.GSR = "ENABLED";
    FD1S3JX divcounter_i7 (.D(n63), .CK(PIN11_c), .PD(n579), .Q(divcounter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter_i7.GSR = "ENABLED";
    CCU2D add_16_3 (.A0(divcounter[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n975), .COUT(n976), .S0(n150), .S1(n149));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(53[54:68])
    defparam add_16_3.INIT0 = 16'h5aaa;
    defparam add_16_3.INIT1 = 16'h5aaa;
    defparam add_16_3.INJECT1_0 = "NO";
    defparam add_16_3.INJECT1_1 = "NO";
    CCU2D add_16_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(divcounter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n975), .S1(n151));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(53[54:68])
    defparam add_16_1.INIT0 = 16'hF000;
    defparam add_16_1.INIT1 = 16'h5555;
    defparam add_16_1.INJECT1_0 = "NO";
    defparam add_16_1.INJECT1_1 = "NO";
    LUT4 i7_4_lut_adj_2 (.A(divcounter[6]), .B(n1101), .C(n1075), .D(divcounter[2]), 
         .Z(n739)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i7_4_lut_adj_2.init = 16'hf7ff;
    LUT4 i864_4_lut (.A(divcounter[1]), .B(divcounter[7]), .C(divcounter[4]), 
         .D(divcounter[0]), .Z(n1101)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i864_4_lut.init = 16'h8000;
    CCU2D add_16_9 (.A0(divcounter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n978), 
          .S0(n144));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(53[54:68])
    defparam add_16_9.INIT0 = 16'h5aaa;
    defparam add_16_9.INIT1 = 16'h0000;
    defparam add_16_9.INJECT1_0 = "NO";
    defparam add_16_9.INJECT1_1 = "NO";
    FD1S3IX divcounter_i3 (.D(n143[3]), .CK(PIN11_c), .CD(n29), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=105, LSE_RLINE=110 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/baudgen_tx.v(46[8] 57[32])
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
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/makefpga_top.v(56[32:37])
    wire [19:0]n149;
    wire [19:0]n85;
    
    wire n983, n984, n982, n981, n980, n979, n988, n987, n986, 
        n985;
    
    FD1S3IX count_146__i0 (.D(n85[0]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i0.GSR = "ENABLED";
    FD1S3IX count_146__i19 (.D(n85[19]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(PIN20_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i19.GSR = "ENABLED";
    FD1S3IX count_146__i18 (.D(n85[18]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i18.GSR = "ENABLED";
    FD1S3IX count_146__i17 (.D(n85[17]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i17.GSR = "ENABLED";
    FD1S3IX count_146__i16 (.D(n85[16]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i16.GSR = "ENABLED";
    FD1S3IX count_146__i15 (.D(n85[15]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i15.GSR = "ENABLED";
    FD1S3IX count_146__i14 (.D(n85[14]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i14.GSR = "ENABLED";
    FD1S3IX count_146__i13 (.D(n85[13]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i13.GSR = "ENABLED";
    FD1S3IX count_146__i12 (.D(n85[12]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i12.GSR = "ENABLED";
    FD1S3IX count_146__i11 (.D(n85[11]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i11.GSR = "ENABLED";
    FD1S3IX count_146__i10 (.D(n85[10]), .CK(PIN11_c), .CD(PIN10_c_2), 
            .Q(n149[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i10.GSR = "ENABLED";
    FD1S3IX count_146__i9 (.D(n85[9]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i9.GSR = "ENABLED";
    FD1S3IX count_146__i8 (.D(n85[8]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i8.GSR = "ENABLED";
    FD1S3IX count_146__i7 (.D(n85[7]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i7.GSR = "ENABLED";
    FD1S3IX count_146__i6 (.D(n85[6]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i6.GSR = "ENABLED";
    FD1S3IX count_146__i5 (.D(n85[5]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i5.GSR = "ENABLED";
    FD1S3IX count_146__i4 (.D(n85[4]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i4.GSR = "ENABLED";
    FD1S3IX count_146__i3 (.D(n85[3]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i3.GSR = "ENABLED";
    FD1S3IX count_146__i2 (.D(n85[2]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i2.GSR = "ENABLED";
    FD1S3IX count_146__i1 (.D(n85[1]), .CK(PIN11_c), .CD(PIN10_c_2), .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146__i1.GSR = "ENABLED";
    CCU2D count_146_add_4_11 (.A0(n149[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n983), .COUT(n984), .S0(n85[9]), .S1(n85[10]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_11.INIT0 = 16'hfaaa;
    defparam count_146_add_4_11.INIT1 = 16'hfaaa;
    defparam count_146_add_4_11.INJECT1_0 = "NO";
    defparam count_146_add_4_11.INJECT1_1 = "NO";
    CCU2D count_146_add_4_9 (.A0(n149[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n982), .COUT(n983), .S0(n85[7]), .S1(n85[8]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_9.INIT0 = 16'hfaaa;
    defparam count_146_add_4_9.INIT1 = 16'hfaaa;
    defparam count_146_add_4_9.INJECT1_0 = "NO";
    defparam count_146_add_4_9.INJECT1_1 = "NO";
    CCU2D count_146_add_4_7 (.A0(n149[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n981), .COUT(n982), .S0(n85[5]), .S1(n85[6]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_7.INIT0 = 16'hfaaa;
    defparam count_146_add_4_7.INIT1 = 16'hfaaa;
    defparam count_146_add_4_7.INJECT1_0 = "NO";
    defparam count_146_add_4_7.INJECT1_1 = "NO";
    CCU2D count_146_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n980), .COUT(n981), .S0(n85[3]), .S1(n85[4]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_5.INIT0 = 16'hfaaa;
    defparam count_146_add_4_5.INIT1 = 16'hfaaa;
    defparam count_146_add_4_5.INJECT1_0 = "NO";
    defparam count_146_add_4_5.INJECT1_1 = "NO";
    CCU2D count_146_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n979), .COUT(n980), .S0(n85[1]), .S1(n85[2]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_3.INIT0 = 16'hfaaa;
    defparam count_146_add_4_3.INIT1 = 16'hfaaa;
    defparam count_146_add_4_3.INJECT1_0 = "NO";
    defparam count_146_add_4_3.INJECT1_1 = "NO";
    CCU2D count_146_add_4_21 (.A0(PIN20_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n988), .S0(n85[19]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_21.INIT0 = 16'hfaaa;
    defparam count_146_add_4_21.INIT1 = 16'h0000;
    defparam count_146_add_4_21.INJECT1_0 = "NO";
    defparam count_146_add_4_21.INJECT1_1 = "NO";
    CCU2D count_146_add_4_19 (.A0(n149[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n987), .COUT(n988), .S0(n85[17]), .S1(n85[18]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_19.INIT0 = 16'hfaaa;
    defparam count_146_add_4_19.INIT1 = 16'hfaaa;
    defparam count_146_add_4_19.INJECT1_0 = "NO";
    defparam count_146_add_4_19.INJECT1_1 = "NO";
    CCU2D count_146_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n979), .S1(n85[0]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_1.INIT0 = 16'hF000;
    defparam count_146_add_4_1.INIT1 = 16'h0555;
    defparam count_146_add_4_1.INJECT1_0 = "NO";
    defparam count_146_add_4_1.INJECT1_1 = "NO";
    CCU2D count_146_add_4_17 (.A0(n149[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n986), .COUT(n987), .S0(n85[15]), .S1(n85[16]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_17.INIT0 = 16'hfaaa;
    defparam count_146_add_4_17.INIT1 = 16'hfaaa;
    defparam count_146_add_4_17.INJECT1_0 = "NO";
    defparam count_146_add_4_17.INJECT1_1 = "NO";
    CCU2D count_146_add_4_15 (.A0(n149[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n985), .COUT(n986), .S0(n85[13]), .S1(n85[14]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_15.INIT0 = 16'hfaaa;
    defparam count_146_add_4_15.INIT1 = 16'hfaaa;
    defparam count_146_add_4_15.INJECT1_0 = "NO";
    defparam count_146_add_4_15.INJECT1_1 = "NO";
    CCU2D count_146_add_4_13 (.A0(n149[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n984), .COUT(n985), .S0(n85[11]), .S1(n85[12]));   // c:/users/enact/projects/fipsy-fpga-edu/examples/fipsyv2 - xo2-1200/6. echo/project_files/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_146_add_4_13.INIT0 = 16'hfaaa;
    defparam count_146_add_4_13.INIT1 = 16'hfaaa;
    defparam count_146_add_4_13.INJECT1_0 = "NO";
    defparam count_146_add_4_13.INJECT1_1 = "NO";
    
endmodule
