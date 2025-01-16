// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Dec 22 12:11:14 2024
//
// Verilog Description of module Fipsy_Top
//

module Fipsy_Top (PIN7, PIN8, PIN9, PIN10, PIN20, PIN19, PIN18, 
            PIN17, PIN14, LEDn) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(45[8:17])
    input PIN7;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[7:11])
    input PIN8;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[13:17])
    input PIN9;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[19:23])
    input PIN10;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[25:30])
    output PIN20;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[8:13])
    output PIN19;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[15:20])
    output PIN18;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[22:27])
    output PIN17;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[29:34])
    output PIN14;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[36:41])
    output LEDn;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[43:47])
    
    wire INTERNAL_OSC /* synthesis SET_AS_NETWORK=INTERNAL_OSC, is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(74[6:18])
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(133[6:9])
    
    wire GND_net, PIN10_c, PIN7_c, PIN8_c, PIN9_c, PIN20_c, PIN19_c, 
        PIN18_c_0, PIN17_c_0, PIN14_c_0, LEDn_c_23, VCC_net, n2258, 
        n1173, n2545, INTERNAL_OSC_enable_44, n2543, INTERNAL_OSC_enable_43;
    
    VHI i5 (.Z(VCC_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(INTERNAL_OSC)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "38";
    VGA vga_inst (.GND_net(GND_net), .LEDn_c_23(LEDn_c_23), .INTERNAL_OSC(INTERNAL_OSC), 
        .INTERNAL_OSC_enable_44(INTERNAL_OSC_enable_44), .clk(clk), .n2543(n2543), 
        .PIN20_c(PIN20_c), .PIN19_c(PIN19_c), .PIN9_c(PIN9_c), .PIN7_c(PIN7_c), 
        .n2545(n2545), .n2258(n2258), .PIN8_c(PIN8_c), .INTERNAL_OSC_enable_43(INTERNAL_OSC_enable_43), 
        .PIN10_c(PIN10_c), .PIN18_c_0(PIN18_c_0), .PIN17_c_0(PIN17_c_0), 
        .PIN14_c_0(PIN14_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(182[5] 200[2])
    IB PIN10_pad (.I(PIN10), .O(PIN10_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[25:30])
    IB PIN9_pad (.I(PIN9), .O(PIN9_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[19:23])
    IB PIN8_pad (.I(PIN8), .O(PIN8_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[13:17])
    IB PIN7_pad (.I(PIN7), .O(PIN7_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[7:11])
    GSR GSR_INST (.GSR(VCC_net));
    OB LEDn_pad (.I(LEDn_c_23), .O(LEDn));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[43:47])
    OB PIN14_pad (.I(PIN14_c_0), .O(PIN14));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[36:41])
    OB PIN17_pad (.I(PIN17_c_0), .O(PIN17));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[29:34])
    OB PIN18_pad (.I(PIN18_c_0), .O(PIN18));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[22:27])
    OB PIN19_pad (.I(PIN19_c), .O(PIN19));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[15:20])
    OB PIN20_pad (.I(PIN20_c), .O(PIN20));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[8:13])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1848_4_lut_4_lut (.A(INTERNAL_OSC_enable_44), .B(n2258), .C(n2545), 
         .D(n2543), .Z(INTERNAL_OSC_enable_43)) /* synthesis lut_function=(!((B ((D)+!C)+!B (D))+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam i1848_4_lut_4_lut.init = 16'h00a2;
    VLO i1 (.Z(GND_net));
    LUT4 i1845_2_lut_rep_23 (.A(clk), .B(n1173), .Z(INTERNAL_OSC_enable_44)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam i1845_2_lut_rep_23.init = 16'h4444;
    ClockDivider Clk_25MHz_inst (.clk(clk), .INTERNAL_OSC(INTERNAL_OSC), 
            .GND_net(GND_net), .n1173(n1173)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(135[14] 138[2])
    
endmodule
//
// Verilog Description of module VGA
//

module VGA (GND_net, LEDn_c_23, INTERNAL_OSC, INTERNAL_OSC_enable_44, 
            clk, n2543, PIN20_c, PIN19_c, PIN9_c, PIN7_c, n2545, 
            n2258, PIN8_c, INTERNAL_OSC_enable_43, PIN10_c, PIN18_c_0, 
            PIN17_c_0, PIN14_c_0) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output LEDn_c_23;
    input INTERNAL_OSC;
    input INTERNAL_OSC_enable_44;
    input clk;
    output n2543;
    output PIN20_c;
    output PIN19_c;
    input PIN9_c;
    input PIN7_c;
    output n2545;
    output n2258;
    input PIN8_c;
    input INTERNAL_OSC_enable_43;
    input PIN10_c;
    output PIN18_c_0;
    output PIN17_c_0;
    output PIN14_c_0;
    
    wire INTERNAL_OSC /* synthesis SET_AS_NETWORK=INTERNAL_OSC, is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(74[6:18])
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(133[6:9])
    wire [23:0]led_count;   // c:/users/enact/projects/vga/vga.v(25[16:25])
    
    wire n20, n2037;
    wire [23:0]n101;
    
    wire n2038, n2058;
    wire [9:0]n135;
    wire [9:0]n12;
    
    wire n2059, n2036, n2057;
    wire [9:0]n340;
    
    wire n15, n29, n2056;
    wire [9:0]column;   // c:/users/enact/projects/vga/vga.v(33[15:21])
    wire [9:0]n1;
    
    wire n15_adj_286;
    wire [9:0]n16;
    
    wire n14, n2159;
    wire [9:0]ball_x;   // c:/users/enact/projects/vga/vga.v(42[15:21])
    
    wire n1135, n1729, n2535, ball_x_9__N_222, n1179;
    wire [9:0]n624;
    wire [9:0]ball_x_9__N_212;
    wire [9:0]paddle_left_y;   // c:/users/enact/projects/vga/vga.v(43[15:28])
    
    wire n6, clk_enable_13;
    wire [9:0]n445;
    
    wire n2139;
    wire [9:0]ball_y;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    
    wire n92, n2244, n2539;
    wire [23:0]n177;
    
    wire n10, n2055, n15_adj_290, n13, n10_adj_291, n2162, n2054, 
        n2021, n1119;
    wire [9:0]paddle_right_y;   // c:/users/enact/projects/vga/vga.v(43[30:44])
    wire [9:0]paddle_right_y_9__N_145;
    
    wire n2022, n8, n13_adj_293, n14_adj_294, n1699, clk_enable_1, 
        o_VGA_HSync_N_275, clk_enable_2, o_VGA_VSync_N_279;
    wire [9:0]ball_dx;   // c:/users/enact/projects/vga/vga.v(42[31:38])
    wire [31:0]n527;
    wire [9:0]ball_dy;   // c:/users/enact/projects/vga/vga.v(42[40:47])
    
    wire clk_enable_22;
    wire [31:0]n876;
    wire [9:0]paddle_left_y_9__N_135;
    
    wire n2008, n1158, n2300, INTERNAL_OSC_enable_45, n2053, n13_adj_296, 
        n2546, n14_adj_297, n1200, n2052, n2035, n2020, n1094, 
        n2051;
    wire [9:0]n12_adj_361;
    
    wire n10_adj_299, n19_adj_300, n32, n28, n2243, n2050, n2109, 
        n6_adj_303;
    wire [9:0]n422;
    
    wire n1993, n2049, n15_adj_307, n13_adj_308, n10_adj_310, n2157, 
        n26, n1999;
    wire [9:0]n434;
    
    wire n2000, n2007, n2048, n2006, n2016;
    wire [9:0]red_2__N_169;
    wire [9:0]red_2__N_180;
    wire [1:0]game_state;   // c:/users/enact/projects/vga/vga.v(45[15:25])
    
    wire n2005, n2047;
    wire [9:0]n329;
    
    wire n2033, n1047, n1987;
    wire [9:0]row;   // c:/users/enact/projects/vga/vga.v(33[23:26])
    
    wire n2046, n2045;
    wire [1:0]game_state_1__N_233;
    
    wire n2015, n2044, n2032, n2031, n2043, n2042, n5_adj_317, 
        n1986;
    wire [9:0]n35;
    
    wire n2041, n2547, n2030;
    wire [9:0]ball_y_9__N_223;
    
    wire n1295;
    wire [9:0]n909;
    
    wire n2264, n2262, n2122, n1985;
    wire [9:0]n456;
    wire [9:0]n373;
    
    wire n6_adj_318, n80, n2263, n2540, n2004, n1984, n2105;
    wire [9:0]n655;
    wire [9:0]n12_adj_362;
    
    wire n2104, n2103;
    wire [9:0]n384;
    
    wire n2265, n2541, n2537, n1723, n2538, n2102, n2029, n1022, 
        n10_adj_324, n2100;
    wire [9:0]red_2__N_73;
    wire [9:0]red_2__N_84;
    
    wire n2542, n2099, n2098, n2097, n2095;
    wire [9:0]n468;
    wire [9:0]n12_adj_363;
    
    wire n2094, n2093, n2092, n2091, n2090, n2089, n2088, n2087, 
        n2086, n2085, n2084, n2014, n2013, n1991, n2002, n2549, 
        n2548, n7_adj_333, n1705, n1983, n2001, n2012, n1982, 
        n2154, n2170, n2147;
    wire [2:0]blue;   // c:/users/enact/projects/vga/vga.v(36[28:32])
    
    wire n2152, n10_adj_334, n10_adj_335, n5_adj_336, n14_adj_337, 
        n10_adj_338, n1703, n1663, n7_adj_339, n8_adj_340, n2040, 
        n2039, n1990, n2024, n2536, n7_adj_341, n8_adj_342, n2125, 
        n6_adj_345, n2118, n2145, n10_adj_346, n1996, n1995, n2023, 
        n1994, n5_adj_347, n6_adj_348, n10_adj_349, n2111, n6_adj_350, 
        n8_adj_351, n9_adj_352, n2108, n8_adj_353, n1989, n1988, 
        n2083, n2082, n2242, n43_adj_354, n10_adj_355, n9_adj_356, 
        n7_adj_357, n2081, n2080, n2079, n2078, n2077, n2076, 
        n2126, n2075, n2120, n2074, n2073, n6_adj_358, n2072, 
        n2071, n2070, n2069, n2068, n2067, n2066, n9_adj_359, 
        n8_adj_360, n2065, n2064, n2298, n2063, n2290, n2062, 
        n2061, n2060;
    
    LUT4 i3_2_lut (.A(led_count[2]), .B(led_count[7]), .Z(n20)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D led_count_274_add_4_7 (.A0(led_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2037), .COUT(n2038), .S0(n101[5]), .S1(n101[6]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_7.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_7.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_7.INJECT1_0 = "NO";
    defparam led_count_274_add_4_7.INJECT1_1 = "NO";
    CCU2D unary_minus_181_add_3_5 (.A0(n135[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2058), .COUT(n2059), .S0(n12[3]), .S1(n12[4]));
    defparam unary_minus_181_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_181_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_181_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_181_add_3_5.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_5 (.A0(led_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2036), .COUT(n2037), .S0(n101[3]), .S1(n101[4]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_5.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_5.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_5.INJECT1_0 = "NO";
    defparam led_count_274_add_4_5.INJECT1_1 = "NO";
    CCU2D unary_minus_181_add_3_3 (.A0(n135[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2057), .COUT(n2058), .S0(n340[1]), .S1(n12[2]));
    defparam unary_minus_181_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_181_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_181_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_181_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_181_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2057), .S1(n340[0]));
    defparam unary_minus_181_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_181_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_181_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_181_add_3_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(n135[6]), .B(n135[9]), .C(n135[8]), .D(n135[4]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i12_4_lut (.A(led_count[12]), .B(led_count[15]), .C(led_count[16]), 
         .D(led_count[11]), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i12_4_lut.init = 16'hfffe;
    CCU2D column_275_add_4_11 (.A0(column[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2056), .S0(n1[9]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275_add_4_11.INIT0 = 16'hfaaa;
    defparam column_275_add_4_11.INIT1 = 16'h0000;
    defparam column_275_add_4_11.INJECT1_0 = "NO";
    defparam column_275_add_4_11.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n15_adj_286), .B(n16[8]), .C(n14), .D(n16[3]), 
         .Z(n2159)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    FD1P3AX led_count_274__i23 (.D(n101[23]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(LEDn_c_23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i23.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_14_4_lut (.A(ball_x[7]), .B(ball_x[9]), .C(n1135), 
         .D(n1729), .Z(n2535)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_2_lut_rep_14_4_lut.init = 16'hfffe;
    FD1P3IX ball_x_i1 (.D(n624[1]), .SP(ball_x_9__N_222), .CD(n1179), 
            .CK(clk), .Q(ball_x[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i1.GSR = "ENABLED";
    FD1P3AX ball_x_i7 (.D(ball_x_9__N_212[7]), .SP(ball_x_9__N_222), .CK(clk), 
            .Q(ball_x[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i7.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(paddle_left_y[6]), .B(paddle_left_y[8]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1P3JX ball_x_i0 (.D(n445[0]), .SP(ball_x_9__N_222), .PD(clk_enable_13), 
            .CK(clk), .Q(ball_x[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i0.GSR = "ENABLED";
    FD1P3IX ball_x_i6 (.D(n2139), .SP(ball_x_9__N_222), .CD(n1179), .CK(clk), 
            .Q(ball_x[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i6.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_18 (.A(ball_y[6]), .B(n92), .C(n2244), .Z(n2539)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut_rep_18.init = 16'hdfdf;
    FD1P3AX led_count_274__i22 (.D(n101[22]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(n177[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i22.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(ball_y[2]), .B(n10), .C(ball_y[3]), .Z(n92)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3AX led_count_274__i21 (.D(n101[21]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(n177[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i21.GSR = "ENABLED";
    FD1P3AX led_count_274__i20 (.D(n101[20]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(n177[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i20.GSR = "ENABLED";
    CCU2D column_275_add_4_9 (.A0(column[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2055), .COUT(n2056), .S0(n1[7]), .S1(n1[8]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275_add_4_9.INIT0 = 16'hfaaa;
    defparam column_275_add_4_9.INIT1 = 16'hfaaa;
    defparam column_275_add_4_9.INJECT1_0 = "NO";
    defparam column_275_add_4_9.INJECT1_1 = "NO";
    FD1P3AX led_count_274__i19 (.D(n101[19]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(n177[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i19.GSR = "ENABLED";
    FD1P3AX led_count_274__i18 (.D(n101[18]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(n177[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i18.GSR = "ENABLED";
    FD1P3AX led_count_274__i17 (.D(n101[17]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(n177[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i17.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_11 (.A(n15_adj_290), .B(n13), .C(n12[3]), .D(n10_adj_291), 
         .Z(n2162)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut_adj_11.init = 16'hfffe;
    FD1P3AX led_count_274__i16 (.D(n101[16]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i16.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(ball_y[4]), .B(ball_y[0]), .C(ball_y[9]), .D(ball_y[1]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3AX led_count_274__i15 (.D(n101[15]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i15.GSR = "ENABLED";
    FD1P3AX led_count_274__i14 (.D(n101[14]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i14.GSR = "ENABLED";
    FD1P3AX led_count_274__i13 (.D(n101[13]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i13.GSR = "ENABLED";
    FD1P3AX led_count_274__i0 (.D(n101[0]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i0.GSR = "ENABLED";
    CCU2D column_275_add_4_7 (.A0(column[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2054), .COUT(n2055), .S0(n1[5]), .S1(n1[6]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275_add_4_7.INIT0 = 16'hfaaa;
    defparam column_275_add_4_7.INIT1 = 16'hfaaa;
    defparam column_275_add_4_7.INJECT1_0 = "NO";
    defparam column_275_add_4_7.INJECT1_1 = "NO";
    CCU2D add_271_5 (.A0(n1119), .B0(n2543), .C0(paddle_right_y[2]), .D0(GND_net), 
          .A1(n1119), .B1(n2543), .C1(paddle_right_y[3]), .D1(GND_net), 
          .CIN(n2021), .COUT(n2022), .S0(paddle_right_y_9__N_145[2]), 
          .S1(paddle_right_y_9__N_145[3]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_271_5.INIT0 = 16'he1e1;
    defparam add_271_5.INIT1 = 16'he1e1;
    defparam add_271_5.INJECT1_0 = "NO";
    defparam add_271_5.INJECT1_1 = "NO";
    FD1P3AX led_count_274__i12 (.D(n101[12]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i12.GSR = "ENABLED";
    FD1P3AX led_count_274__i11 (.D(n101[11]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i11.GSR = "ENABLED";
    LUT4 i3_3_lut (.A(paddle_left_y[3]), .B(paddle_left_y[1]), .C(paddle_left_y[2]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i1334_4_lut (.A(n15), .B(n2162), .C(n13_adj_293), .D(n14_adj_294), 
         .Z(n1699)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1334_4_lut.init = 16'hccc8;
    FD1P3AY hsync_156 (.D(o_VGA_HSync_N_275), .SP(clk_enable_1), .CK(clk), 
            .Q(PIN20_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam hsync_156.GSR = "ENABLED";
    FD1P3AY vsync_157 (.D(o_VGA_VSync_N_279), .SP(clk_enable_2), .CK(clk), 
            .Q(PIN19_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam vsync_157.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(ball_y[8]), .B(ball_y[5]), .C(ball_y[7]), .Z(n2244)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    defparam i2_3_lut.init = 16'h8080;
    FD1P3AY ball_dx_i0 (.D(n527[0]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i0.GSR = "ENABLED";
    FD1P3AX led_count_274__i10 (.D(n101[10]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i10.GSR = "ENABLED";
    FD1P3AY ball_dy_i0 (.D(n876[0]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i0.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i0 (.D(paddle_left_y_9__N_135[0]), .CK(clk), .Q(paddle_left_y[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i0.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i0 (.D(paddle_right_y_9__N_145[0]), .CK(clk), 
            .Q(paddle_right_y[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i0.GSR = "ENABLED";
    FD1P3AX led_count_274__i9 (.D(n101[9]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i9.GSR = "ENABLED";
    FD1P3AX led_count_274__i8 (.D(n101[8]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i8.GSR = "ENABLED";
    CCU2D add_186_11 (.A0(ball_dy[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2008), 
          .S0(n876[9]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_11.INIT0 = 16'ha555;
    defparam add_186_11.INIT1 = 16'h0000;
    defparam add_186_11.INJECT1_0 = "NO";
    defparam add_186_11.INJECT1_1 = "NO";
    LUT4 i1838_4_lut (.A(INTERNAL_OSC_enable_44), .B(n1158), .C(n2300), 
         .D(column[7]), .Z(INTERNAL_OSC_enable_45)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1838_4_lut.init = 16'h0020;
    CCU2D column_275_add_4_5 (.A0(column[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2053), .COUT(n2054), .S0(n1[3]), .S1(n1[4]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275_add_4_5.INIT0 = 16'hfaaa;
    defparam column_275_add_4_5.INIT1 = 16'hfaaa;
    defparam column_275_add_4_5.INJECT1_0 = "NO";
    defparam column_275_add_4_5.INJECT1_1 = "NO";
    LUT4 i1816_2_lut_4_lut (.A(n13_adj_296), .B(n2546), .C(n14_adj_297), 
         .D(INTERNAL_OSC_enable_45), .Z(n1200)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1816_2_lut_4_lut.init = 16'h0100;
    CCU2D column_275_add_4_3 (.A0(column[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2052), .COUT(n2053), .S0(n1[1]), .S1(n1[2]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275_add_4_3.INIT0 = 16'hfaaa;
    defparam column_275_add_4_3.INIT1 = 16'hfaaa;
    defparam column_275_add_4_3.INJECT1_0 = "NO";
    defparam column_275_add_4_3.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_3 (.A0(led_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2035), .COUT(n2036), .S0(n101[1]), .S1(n101[2]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_3.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_3.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_3.INJECT1_0 = "NO";
    defparam led_count_274_add_4_3.INJECT1_1 = "NO";
    CCU2D column_275_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2052), .S1(n1[0]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275_add_4_1.INIT0 = 16'hF000;
    defparam column_275_add_4_1.INIT1 = 16'h0555;
    defparam column_275_add_4_1.INJECT1_0 = "NO";
    defparam column_275_add_4_1.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2035), .S1(n101[0]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_1.INIT0 = 16'hF000;
    defparam led_count_274_add_4_1.INIT1 = 16'h0555;
    defparam led_count_274_add_4_1.INJECT1_0 = "NO";
    defparam led_count_274_add_4_1.INJECT1_1 = "NO";
    CCU2D add_271_3 (.A0(paddle_right_y[0]), .B0(n1094), .C0(n1119), .D0(ball_x_9__N_222), 
          .A1(n1119), .B1(n2543), .C1(paddle_right_y[1]), .D1(GND_net), 
          .CIN(n2020), .COUT(n2021), .S0(paddle_right_y_9__N_145[0]), 
          .S1(paddle_right_y_9__N_145[1]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_271_3.INIT0 = 16'h59aa;
    defparam add_271_3.INIT1 = 16'he1e1;
    defparam add_271_3.INJECT1_0 = "NO";
    defparam add_271_3.INJECT1_1 = "NO";
    CCU2D unary_minus_180_add_3_11 (.A0(n16[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2051), .S0(n12_adj_361[9]));
    defparam unary_minus_180_add_3_11.INIT0 = 16'hf555;
    defparam unary_minus_180_add_3_11.INIT1 = 16'h0000;
    defparam unary_minus_180_add_3_11.INJECT1_0 = "NO";
    defparam unary_minus_180_add_3_11.INJECT1_1 = "NO";
    CCU2D add_271_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1119), .B1(n2543), .C1(GND_net), .D1(GND_net), .COUT(n2020));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_271_1.INIT0 = 16'hF000;
    defparam add_271_1.INIT1 = 16'heeee;
    defparam add_271_1.INJECT1_0 = "NO";
    defparam add_271_1.INJECT1_1 = "NO";
    LUT4 i124_4_lut (.A(PIN9_c), .B(paddle_right_y[9]), .C(n10_adj_299), 
         .D(paddle_right_y[7]), .Z(n1094)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(171[17:63])
    defparam i124_4_lut.init = 16'haaa8;
    FD1P3AX ball_dx_i1 (.D(n527[1]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i1.GSR = "ENABLED";
    FD1P3AX ball_dx_i2 (.D(n527[2]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i2.GSR = "ENABLED";
    FD1P3AX ball_dx_i3 (.D(n527[3]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i3.GSR = "ENABLED";
    FD1P3AX ball_dx_i4 (.D(n527[4]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i4.GSR = "ENABLED";
    FD1P3AX ball_dx_i5 (.D(n527[5]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i5.GSR = "ENABLED";
    FD1P3AX ball_dx_i6 (.D(n527[6]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i6.GSR = "ENABLED";
    FD1P3AX ball_dx_i7 (.D(n527[7]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i7.GSR = "ENABLED";
    FD1P3AX ball_dx_i8 (.D(n527[8]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i8.GSR = "ENABLED";
    FD1P3AX ball_dx_i9 (.D(n527[9]), .SP(clk_enable_13), .CK(clk), .Q(ball_dx[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i9.GSR = "ENABLED";
    FD1P3AX ball_dy_i1 (.D(n876[1]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i1.GSR = "ENABLED";
    FD1P3AX ball_dy_i2 (.D(n876[2]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i2.GSR = "ENABLED";
    FD1P3AX ball_dy_i3 (.D(n876[3]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i3.GSR = "ENABLED";
    FD1P3AX ball_dy_i4 (.D(n876[4]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i4.GSR = "ENABLED";
    FD1P3AX ball_dy_i5 (.D(n876[5]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i5.GSR = "ENABLED";
    FD1P3AX ball_dy_i6 (.D(n876[6]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i6.GSR = "ENABLED";
    FD1P3AX ball_dy_i7 (.D(n876[7]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i7.GSR = "ENABLED";
    FD1P3AX ball_dy_i8 (.D(n876[8]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i8.GSR = "ENABLED";
    FD1P3AX ball_dy_i9 (.D(n876[9]), .SP(clk_enable_22), .CK(clk), .Q(ball_dy[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i9.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i1 (.D(paddle_left_y_9__N_135[1]), .CK(clk), .Q(paddle_left_y[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i1.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i2 (.D(paddle_left_y_9__N_135[2]), .CK(clk), .Q(paddle_left_y[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i2.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i3 (.D(paddle_left_y_9__N_135[3]), .CK(clk), .Q(paddle_left_y[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i3.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i4 (.D(paddle_left_y_9__N_135[4]), .CK(clk), .Q(paddle_left_y[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i4.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i5 (.D(paddle_left_y_9__N_135[5]), .CK(clk), .Q(paddle_left_y[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i5.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i6 (.D(paddle_left_y_9__N_135[6]), .CK(clk), .Q(paddle_left_y[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i6.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i7 (.D(paddle_left_y_9__N_135[7]), .CK(clk), .Q(paddle_left_y[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i7.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i8 (.D(paddle_left_y_9__N_135[8]), .CK(clk), .Q(paddle_left_y[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i8.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i9 (.D(paddle_left_y_9__N_135[9]), .CK(clk), .Q(paddle_left_y[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i9.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i1 (.D(paddle_right_y_9__N_145[1]), .CK(clk), 
            .Q(paddle_right_y[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i1.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i2 (.D(paddle_right_y_9__N_145[2]), .CK(clk), 
            .Q(paddle_right_y[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i2.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i3 (.D(paddle_right_y_9__N_145[3]), .CK(clk), 
            .Q(paddle_right_y[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i3.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i4 (.D(paddle_right_y_9__N_145[4]), .CK(clk), 
            .Q(paddle_right_y[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i4.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i5 (.D(paddle_right_y_9__N_145[5]), .CK(clk), 
            .Q(paddle_right_y[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i5.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i6 (.D(paddle_right_y_9__N_145[6]), .CK(clk), 
            .Q(paddle_right_y[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i6.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i7 (.D(paddle_right_y_9__N_145[7]), .CK(clk), 
            .Q(paddle_right_y[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i7.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i8 (.D(paddle_right_y_9__N_145[8]), .CK(clk), 
            .Q(paddle_right_y[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i8.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i9 (.D(paddle_right_y_9__N_145[9]), .CK(clk), 
            .Q(paddle_right_y[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i9.GSR = "ENABLED";
    FD1P3AX led_count_274__i7 (.D(n101[7]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i7.GSR = "ENABLED";
    LUT4 i16_4_lut_rep_22 (.A(n19_adj_300), .B(n32), .C(n28), .D(n20), 
         .Z(n2543)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i16_4_lut_rep_22.init = 16'hfffe;
    FD1P3AX led_count_274__i6 (.D(n101[6]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i6.GSR = "ENABLED";
    FD1P3AX led_count_274__i5 (.D(n101[5]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i5.GSR = "ENABLED";
    FD1P3AX led_count_274__i4 (.D(n101[4]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i4.GSR = "ENABLED";
    FD1P3AX led_count_274__i3 (.D(n101[3]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i3.GSR = "ENABLED";
    FD1P3AX led_count_274__i2 (.D(n101[2]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i2.GSR = "ENABLED";
    LUT4 i1812_3_lut (.A(n2243), .B(column[4]), .C(column[8]), .Z(n2300)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1812_3_lut.init = 16'h8080;
    FD1P3AX led_count_274__i1 (.D(n101[1]), .SP(INTERNAL_OSC_enable_44), 
            .CK(INTERNAL_OSC), .Q(led_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274__i1.GSR = "ENABLED";
    CCU2D unary_minus_180_add_3_9 (.A0(n16[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2050), .COUT(n2051), .S0(n12_adj_361[7]), .S1(n12_adj_361[8]));
    defparam unary_minus_180_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_180_add_3_9.INIT1 = 16'hf555;
    defparam unary_minus_180_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_180_add_3_9.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_12 (.A(paddle_right_y[6]), .B(paddle_right_y[5]), 
         .C(n2109), .D(paddle_right_y[8]), .Z(n10_adj_299)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_12.init = 16'hfffe;
    LUT4 i4_4_lut_adj_13 (.A(paddle_right_y[2]), .B(paddle_right_y[4]), 
         .C(paddle_right_y[0]), .D(n6_adj_303), .Z(n2109)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_13.init = 16'h8000;
    CCU2D add_66_2 (.A0(ball_x[0]), .B0(ball_dx[0]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[1]), .B1(ball_dx[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1993), .S1(n422[1]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_2.INIT0 = 16'h7000;
    defparam add_66_2.INIT1 = 16'h5666;
    defparam add_66_2.INJECT1_0 = "NO";
    defparam add_66_2.INJECT1_1 = "NO";
    CCU2D unary_minus_180_add_3_7 (.A0(n16[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2049), .COUT(n2050), .S0(n12_adj_361[5]), .S1(n12_adj_361[6]));
    defparam unary_minus_180_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_180_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_180_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_180_add_3_7.INJECT1_1 = "NO";
    LUT4 i8_4_lut_adj_14 (.A(n15_adj_307), .B(n13_adj_308), .C(n12_adj_361[3]), 
         .D(n10_adj_310), .Z(n2157)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut_adj_14.init = 16'hfffe;
    LUT4 i9_3_lut (.A(led_count[8]), .B(led_count[4]), .C(led_count[3]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i9_3_lut.init = 16'hfefe;
    CCU2D add_67_4 (.A0(ball_y[2]), .B0(ball_dy[2]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[3]), .B1(ball_dy[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1999), .COUT(n2000), .S0(n434[2]), .S1(n434[3]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_4.INIT0 = 16'h5666;
    defparam add_67_4.INIT1 = 16'h5666;
    defparam add_67_4.INJECT1_0 = "NO";
    defparam add_67_4.INJECT1_1 = "NO";
    CCU2D add_186_9 (.A0(ball_dy[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2007), .COUT(n2008), .S0(n876[7]), .S1(n876[8]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_9.INIT0 = 16'ha555;
    defparam add_186_9.INIT1 = 16'ha555;
    defparam add_186_9.INJECT1_0 = "NO";
    defparam add_186_9.INJECT1_1 = "NO";
    CCU2D unary_minus_180_add_3_5 (.A0(n16[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2048), .COUT(n2049), .S0(n12_adj_361[3]), .S1(n12_adj_361[4]));
    defparam unary_minus_180_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_180_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_180_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_180_add_3_5.INJECT1_1 = "NO";
    CCU2D add_186_7 (.A0(ball_dy[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2006), .COUT(n2007), .S0(n876[5]), .S1(n876[6]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_7.INIT0 = 16'ha555;
    defparam add_186_7.INIT1 = 16'ha555;
    defparam add_186_7.INJECT1_0 = "NO";
    defparam add_186_7.INJECT1_1 = "NO";
    CCU2D add_1609_11 (.A0(red_2__N_169[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2016), .S0(red_2__N_180[9]));
    defparam add_1609_11.INIT0 = 16'hf555;
    defparam add_1609_11.INIT1 = 16'h0000;
    defparam add_1609_11.INJECT1_0 = "NO";
    defparam add_1609_11.INJECT1_1 = "NO";
    LUT4 i102_2_lut_rep_24 (.A(PIN7_c), .B(game_state[0]), .Z(n2545)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(131[13] 135[16])
    defparam i102_2_lut_rep_24.init = 16'h2222;
    CCU2D add_186_5 (.A0(ball_dy[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2005), .COUT(n2006), .S0(n876[3]), .S1(n876[4]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_5.INIT0 = 16'ha555;
    defparam add_186_5.INIT1 = 16'ha555;
    defparam add_186_5.INJECT1_0 = "NO";
    defparam add_186_5.INJECT1_1 = "NO";
    CCU2D add_67_2 (.A0(ball_y[0]), .B0(ball_dy[0]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[1]), .B1(ball_dy[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1999), .S1(n434[1]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_2.INIT0 = 16'h7000;
    defparam add_67_2.INIT1 = 16'h5666;
    defparam add_67_2.INJECT1_0 = "NO";
    defparam add_67_2.INJECT1_1 = "NO";
    CCU2D unary_minus_180_add_3_3 (.A0(n16[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2047), .COUT(n2048), .S0(n329[1]), .S1(n12_adj_361[2]));
    defparam unary_minus_180_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_180_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_180_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_180_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_180_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2047), .S1(n329[0]));
    defparam unary_minus_180_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_180_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_180_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_180_add_3_1.INJECT1_1 = "NO";
    CCU2D add_268_11 (.A0(n1047), .B0(n2543), .C0(paddle_left_y[8]), .D0(GND_net), 
          .A1(n1047), .B1(n2543), .C1(paddle_left_y[9]), .D1(GND_net), 
          .CIN(n2033), .S0(paddle_left_y_9__N_135[8]), .S1(paddle_left_y_9__N_135[9]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_268_11.INIT0 = 16'he1e1;
    defparam add_268_11.INIT1 = 16'he1e1;
    defparam add_268_11.INJECT1_0 = "NO";
    defparam add_268_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(paddle_right_y[3]), .B(paddle_right_y[1]), .Z(n6_adj_303)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D add_185_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1987), .S1(n527[0]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_1.INIT0 = 16'hF000;
    defparam add_185_1.INIT1 = 16'haaaa;
    defparam add_185_1.INJECT1_0 = "NO";
    defparam add_185_1.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(row[0]), .B(row[2]), .C(row[6]), .D(row[5]), .Z(n13_adj_296)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam i5_4_lut.init = 16'hfffb;
    CCU2D led_count_274_add_4_25 (.A0(LEDn_c_23), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2046), .S0(n101[23]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_25.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_25.INIT1 = 16'h0000;
    defparam led_count_274_add_4_25.INJECT1_0 = "NO";
    defparam led_count_274_add_4_25.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_23 (.A0(n177[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2045), .COUT(n2046), .S0(n101[21]), .S1(n101[22]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_23.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_23.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_23.INJECT1_0 = "NO";
    defparam led_count_274_add_4_23.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(PIN7_c), .B(game_state[0]), .C(n2258), .Z(game_state_1__N_233[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(131[13] 135[16])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    CCU2D add_1609_9 (.A0(red_2__N_169[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_169[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2015), .COUT(n2016), .S0(red_2__N_180[7]), 
          .S1(red_2__N_180[8]));
    defparam add_1609_9.INIT0 = 16'hf555;
    defparam add_1609_9.INIT1 = 16'hf555;
    defparam add_1609_9.INJECT1_0 = "NO";
    defparam add_1609_9.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_21 (.A0(n177[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2044), .COUT(n2045), .S0(n101[19]), .S1(n101[20]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_21.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_21.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_21.INJECT1_0 = "NO";
    defparam led_count_274_add_4_21.INJECT1_1 = "NO";
    CCU2D add_268_9 (.A0(n1047), .B0(n2543), .C0(paddle_left_y[6]), .D0(GND_net), 
          .A1(n1047), .B1(n2543), .C1(paddle_left_y[7]), .D1(GND_net), 
          .CIN(n2032), .COUT(n2033), .S0(paddle_left_y_9__N_135[6]), .S1(paddle_left_y_9__N_135[7]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_268_9.INIT0 = 16'he1e1;
    defparam add_268_9.INIT1 = 16'he1e1;
    defparam add_268_9.INJECT1_0 = "NO";
    defparam add_268_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_25 (.A(row[3]), .B(row[4]), .Z(n2546)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam i1_2_lut_rep_25.init = 16'hdddd;
    CCU2D add_268_7 (.A0(n1047), .B0(n2543), .C0(paddle_left_y[4]), .D0(GND_net), 
          .A1(n1047), .B1(n2543), .C1(paddle_left_y[5]), .D1(GND_net), 
          .CIN(n2031), .COUT(n2032), .S0(paddle_left_y_9__N_135[4]), .S1(paddle_left_y_9__N_135[5]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_268_7.INIT0 = 16'he1e1;
    defparam add_268_7.INIT1 = 16'he1e1;
    defparam add_268_7.INJECT1_0 = "NO";
    defparam add_268_7.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_19 (.A0(n177[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2043), .COUT(n2044), .S0(n101[17]), .S1(n101[18]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_19.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_19.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_19.INJECT1_0 = "NO";
    defparam led_count_274_add_4_19.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_17 (.A0(led_count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2042), .COUT(n2043), .S0(n101[15]), .S1(n101[16]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_17.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_17.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_17.INJECT1_0 = "NO";
    defparam led_count_274_add_4_17.INJECT1_1 = "NO";
    FD1P3IX column_275__i9 (.D(n1[9]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i9.GSR = "ENABLED";
    FD1P3IX column_275__i7 (.D(n1[7]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i7.GSR = "ENABLED";
    FD1P3IX column_275__i8 (.D(n1[8]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i8.GSR = "ENABLED";
    FD1P3IX column_275__i6 (.D(n1[6]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i6.GSR = "ENABLED";
    FD1P3IX column_275__i4 (.D(n1[4]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i4.GSR = "ENABLED";
    FD1P3IX column_275__i5 (.D(n1[5]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i5.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(paddle_left_y[9]), .B(PIN8_c), .C(n5_adj_317), .D(n6), 
         .Z(n1047)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0444;
    FD1P3IX column_275__i3 (.D(n1[3]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i3.GSR = "ENABLED";
    FD1P3IX column_275__i1 (.D(n1[1]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i1.GSR = "ENABLED";
    FD1P3IX column_275__i2 (.D(n1[2]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i2.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_15 (.A(n16[9]), .B(n16[6]), .C(n16[4]), .D(n16[7]), 
         .Z(n15_adj_286)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_15.init = 16'hfffe;
    CCU2D row_273_add_4_11 (.A0(row[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1986), 
          .S0(n35[9]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273_add_4_11.INIT0 = 16'hfaaa;
    defparam row_273_add_4_11.INIT1 = 16'h0000;
    defparam row_273_add_4_11.INJECT1_0 = "NO";
    defparam row_273_add_4_11.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_15 (.A0(led_count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2041), .COUT(n2042), .S0(n101[13]), .S1(n101[14]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_15.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_15.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_15.INJECT1_0 = "NO";
    defparam led_count_274_add_4_15.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_16 (.A(n16[5]), .B(n16[0]), .C(n16[2]), .D(n16[1]), 
         .Z(n14)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i5_4_lut_adj_16.init = 16'hfefa;
    FD1P3IX row_273__i1 (.D(n35[1]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i1.GSR = "ENABLED";
    FD1P3IX row_273__i2 (.D(n35[2]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i2.GSR = "ENABLED";
    FD1P3IX row_273__i3 (.D(n35[3]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i3.GSR = "ENABLED";
    FD1P3IX row_273__i4 (.D(n35[4]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i4.GSR = "ENABLED";
    FD1P3IX row_273__i6 (.D(n35[6]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i6.GSR = "ENABLED";
    FD1P3IX row_273__i7 (.D(n35[7]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i7.GSR = "ENABLED";
    FD1P3IX row_273__i5 (.D(n35[5]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i5.GSR = "ENABLED";
    LUT4 i1145_2_lut_rep_26 (.A(row[7]), .B(row[6]), .Z(n2547)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1145_2_lut_rep_26.init = 16'h8888;
    FD1P3IX row_273__i9 (.D(n35[9]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i9.GSR = "ENABLED";
    CCU2D add_268_5 (.A0(n1047), .B0(n2543), .C0(paddle_left_y[2]), .D0(GND_net), 
          .A1(n1047), .B1(n2543), .C1(paddle_left_y[3]), .D1(GND_net), 
          .CIN(n2030), .COUT(n2031), .S0(paddle_left_y_9__N_135[2]), .S1(paddle_left_y_9__N_135[3]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_268_5.INIT0 = 16'he1e1;
    defparam add_268_5.INIT1 = 16'he1e1;
    defparam add_268_5.INJECT1_0 = "NO";
    defparam add_268_5.INJECT1_1 = "NO";
    FD1P3IX row_273__i8 (.D(n35[8]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i8.GSR = "ENABLED";
    FD1P3AX game_state__i1 (.D(game_state_1__N_233[0]), .SP(INTERNAL_OSC_enable_43), 
            .CK(INTERNAL_OSC), .Q(game_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam game_state__i1.GSR = "ENABLED";
    FD1P3IX column_275__i0 (.D(n1[0]), .SP(INTERNAL_OSC_enable_44), .CD(INTERNAL_OSC_enable_45), 
            .CK(INTERNAL_OSC), .Q(column[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_275__i0.GSR = "ENABLED";
    FD1P3AX ball_y_i9 (.D(ball_y_9__N_223[9]), .SP(ball_x_9__N_222), .CK(clk), 
            .Q(ball_y[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i9.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(paddle_left_y[4]), .B(paddle_left_y[7]), .C(n8), 
         .D(paddle_left_y[5]), .Z(n5_adj_317)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    FD1P3IX ball_y_i8 (.D(n909[8]), .SP(ball_x_9__N_222), .CD(n1295), 
            .CK(clk), .Q(ball_y[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i8.GSR = "ENABLED";
    LUT4 i5_4_lut_adj_17 (.A(n135[3]), .B(n135[0]), .C(n135[2]), .D(n135[1]), 
         .Z(n14_adj_294)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i5_4_lut_adj_17.init = 16'hfefa;
    FD1P3IX ball_y_i7 (.D(n2264), .SP(ball_x_9__N_222), .CD(n1295), .CK(clk), 
            .Q(ball_y[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i7.GSR = "ENABLED";
    FD1P3IX ball_y_i6 (.D(n2262), .SP(ball_x_9__N_222), .CD(n1295), .CK(clk), 
            .Q(ball_y[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i6.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_18 (.A(row[1]), .B(row[7]), .C(row[8]), .D(row[9]), 
         .Z(n14_adj_297)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam i6_4_lut_adj_18.init = 16'hfeff;
    LUT4 i4_2_lut (.A(n135[5]), .B(n135[7]), .Z(n13_adj_293)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(row[7]), .B(row[6]), .C(row[8]), .D(row[5]), 
         .Z(n2122)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h8000;
    CCU2D row_273_add_4_9 (.A0(row[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1985), 
          .COUT(n1986), .S0(n35[7]), .S1(n35[8]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273_add_4_9.INIT0 = 16'hfaaa;
    defparam row_273_add_4_9.INIT1 = 16'hfaaa;
    defparam row_273_add_4_9.INJECT1_0 = "NO";
    defparam row_273_add_4_9.INJECT1_1 = "NO";
    FD1P3IX ball_y_i5 (.D(n456[5]), .SP(ball_x_9__N_222), .CD(clk_enable_22), 
            .CK(clk), .Q(ball_y[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i5.GSR = "ENABLED";
    FD1P3IX ball_y_i3 (.D(n909[3]), .SP(ball_x_9__N_222), .CD(n1295), 
            .CK(clk), .Q(ball_y[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i3.GSR = "ENABLED";
    FD1P3IX ball_y_i1 (.D(n909[1]), .SP(ball_x_9__N_222), .CD(n1295), 
            .CK(clk), .Q(ball_y[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i1.GSR = "ENABLED";
    FD1P3IX ball_x_i9 (.D(n624[9]), .SP(ball_x_9__N_222), .CD(n1179), 
            .CK(clk), .Q(ball_x[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i9.GSR = "ENABLED";
    LUT4 i2_2_lut_adj_19 (.A(n373[2]), .B(n373[4]), .Z(n6_adj_318)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_19.init = 16'h8888;
    FD1P3IX ball_y_i2 (.D(n80), .SP(ball_x_9__N_222), .CD(n1295), .CK(clk), 
            .Q(ball_y[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i2.GSR = "ENABLED";
    FD1P3IX ball_y_i4 (.D(n2263), .SP(ball_x_9__N_222), .CD(n1295), .CK(clk), 
            .Q(ball_y[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i4.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_20 (.A(n434[9]), .B(n2540), .C(game_state[0]), .Z(ball_y_9__N_223[9])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam i2_3_lut_adj_20.init = 16'h8080;
    CCU2D add_186_3 (.A0(ball_dy[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2004), .COUT(n2005), .S0(n876[1]), .S1(n876[2]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_3.INIT0 = 16'ha555;
    defparam add_186_3.INIT1 = 16'ha555;
    defparam add_186_3.INJECT1_0 = "NO";
    defparam add_186_3.INJECT1_1 = "NO";
    CCU2D row_273_add_4_7 (.A0(row[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1984), 
          .COUT(n1985), .S0(n35[5]), .S1(n35[6]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273_add_4_7.INIT0 = 16'hfaaa;
    defparam row_273_add_4_7.INIT1 = 16'hfaaa;
    defparam row_273_add_4_7.INJECT1_0 = "NO";
    defparam row_273_add_4_7.INJECT1_1 = "NO";
    FD1P3IX ball_x_i5 (.D(n624[5]), .SP(ball_x_9__N_222), .CD(n1179), 
            .CK(clk), .Q(ball_x[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i5.GSR = "ENABLED";
    FD1P3JX ball_y_i0 (.D(n456[0]), .SP(ball_x_9__N_222), .PD(clk_enable_22), 
            .CK(clk), .Q(ball_y[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i0.GSR = "ENABLED";
    CCU2D add_1607_9 (.A0(n655[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2105), 
          .S0(n12_adj_362[8]), .S1(n12_adj_362[9]));
    defparam add_1607_9.INIT0 = 16'hf555;
    defparam add_1607_9.INIT1 = 16'hf555;
    defparam add_1607_9.INJECT1_0 = "NO";
    defparam add_1607_9.INJECT1_1 = "NO";
    CCU2D add_1607_7 (.A0(n655[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2104), 
          .COUT(n2105), .S0(n12_adj_362[6]), .S1(n12_adj_362[7]));
    defparam add_1607_7.INIT0 = 16'hf555;
    defparam add_1607_7.INIT1 = 16'hf555;
    defparam add_1607_7.INJECT1_0 = "NO";
    defparam add_1607_7.INJECT1_1 = "NO";
    CCU2D add_1607_5 (.A0(n655[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2103), 
          .COUT(n2104), .S0(n384[4]), .S1(n12_adj_362[5]));
    defparam add_1607_5.INIT0 = 16'hf555;
    defparam add_1607_5.INIT1 = 16'hf555;
    defparam add_1607_5.INJECT1_0 = "NO";
    defparam add_1607_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_rep_20 (.A(row[9]), .B(n2265), .C(n2122), .D(column[9]), 
         .Z(n2541)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_rep_20.init = 16'hfefa;
    LUT4 i1_4_lut_adj_21 (.A(n2537), .B(n1729), .C(n1723), .D(n2538), 
         .Z(n2258)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/users/enact/projects/vga/vga.v(154[26] 158[20])
    defparam i1_4_lut_adj_21.init = 16'haf23;
    CCU2D add_1607_3 (.A0(n655[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2102), 
          .COUT(n2103), .S0(n384[2]), .S1(n384[3]));
    defparam add_1607_3.INIT0 = 16'hf555;
    defparam add_1607_3.INIT1 = 16'hf555;
    defparam add_1607_3.INJECT1_0 = "NO";
    defparam add_1607_3.INJECT1_1 = "NO";
    FD1P3IX ball_x_i4 (.D(n624[4]), .SP(ball_x_9__N_222), .CD(n1179), 
            .CK(clk), .Q(ball_x[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i4.GSR = "ENABLED";
    CCU2D add_268_3 (.A0(paddle_left_y[0]), .B0(n1022), .C0(n1047), .D0(ball_x_9__N_222), 
          .A1(n1047), .B1(n2543), .C1(paddle_left_y[1]), .D1(GND_net), 
          .CIN(n2029), .COUT(n2030), .S0(paddle_left_y_9__N_135[0]), .S1(paddle_left_y_9__N_135[1]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_268_3.INIT0 = 16'h59aa;
    defparam add_268_3.INIT1 = 16'he1e1;
    defparam add_268_3.INJECT1_0 = "NO";
    defparam add_268_3.INJECT1_1 = "NO";
    FD1P3IX row_273__i0 (.D(n35[0]), .SP(INTERNAL_OSC_enable_45), .CD(n1200), 
            .CK(INTERNAL_OSC), .Q(row[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273__i0.GSR = "ENABLED";
    CCU2D add_1607_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[0]), .B1(n655[1]), .C1(GND_net), .D1(GND_net), .COUT(n2102), 
          .S1(n384[1]));
    defparam add_1607_1.INIT0 = 16'hF000;
    defparam add_1607_1.INIT1 = 16'ha666;
    defparam add_1607_1.INJECT1_0 = "NO";
    defparam add_1607_1.INJECT1_1 = "NO";
    FD1P3IX ball_x_i3 (.D(n624[3]), .SP(ball_x_9__N_222), .CD(n1179), 
            .CK(clk), .Q(ball_x[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i3.GSR = "ENABLED";
    LUT4 i1831_3_lut (.A(n92), .B(n10_adj_324), .C(ball_y[8]), .Z(n1295)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1831_3_lut.init = 16'h0101;
    CCU2D add_1608_9 (.A0(red_2__N_73[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_73[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2100), .S0(red_2__N_84[8]), .S1(red_2__N_84[9]));
    defparam add_1608_9.INIT0 = 16'hf555;
    defparam add_1608_9.INIT1 = 16'hf555;
    defparam add_1608_9.INJECT1_0 = "NO";
    defparam add_1608_9.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_22 (.A(n2543), .B(ball_y[6]), .C(ball_y[5]), .D(ball_y[7]), 
         .Z(n10_adj_324)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(164[17:28])
    defparam i4_4_lut_adj_22.init = 16'hfffe;
    FD1P3IX ball_x_i8 (.D(n445[8]), .SP(ball_x_9__N_222), .CD(clk_enable_13), 
            .CK(clk), .Q(ball_x[8])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i8.GSR = "ENABLED";
    FD1P3IX ball_x_i2 (.D(n624[2]), .SP(ball_x_9__N_222), .CD(n1179), 
            .CK(clk), .Q(ball_x[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=182, LSE_RLINE=200 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i2.GSR = "ENABLED";
    LUT4 n2268_bdd_3_lut (.A(n2542), .B(column[5]), .C(column[6]), .Z(clk_enable_1)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam n2268_bdd_3_lut.init = 16'h4141;
    CCU2D add_1608_7 (.A0(red_2__N_73[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_73[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2099), .COUT(n2100), .S0(red_2__N_84[6]), 
          .S1(red_2__N_84[7]));
    defparam add_1608_7.INIT0 = 16'hf555;
    defparam add_1608_7.INIT1 = 16'hf555;
    defparam add_1608_7.INJECT1_0 = "NO";
    defparam add_1608_7.INJECT1_1 = "NO";
    CCU2D add_1608_5 (.A0(red_2__N_73[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_73[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2098), .COUT(n2099), .S0(red_2__N_84[4]), 
          .S1(red_2__N_84[5]));
    defparam add_1608_5.INIT0 = 16'hf555;
    defparam add_1608_5.INIT1 = 16'hf555;
    defparam add_1608_5.INJECT1_0 = "NO";
    defparam add_1608_5.INJECT1_1 = "NO";
    CCU2D add_1608_3 (.A0(red_2__N_73[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_73[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2097), .COUT(n2098), .S0(red_2__N_84[2]), 
          .S1(red_2__N_84[3]));
    defparam add_1608_3.INIT0 = 16'hf555;
    defparam add_1608_3.INIT1 = 16'hf555;
    defparam add_1608_3.INJECT1_0 = "NO";
    defparam add_1608_3.INJECT1_1 = "NO";
    CCU2D add_1608_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(red_2__N_73[0]), .B1(red_2__N_73[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2097), .S1(red_2__N_84[1]));
    defparam add_1608_1.INIT0 = 16'hF000;
    defparam add_1608_1.INIT1 = 16'ha666;
    defparam add_1608_1.INJECT1_0 = "NO";
    defparam add_1608_1.INJECT1_1 = "NO";
    CCU2D add_1606_9 (.A0(n468[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2095), 
          .S0(n12_adj_363[8]), .S1(n12_adj_363[9]));
    defparam add_1606_9.INIT0 = 16'hf555;
    defparam add_1606_9.INIT1 = 16'hf555;
    defparam add_1606_9.INJECT1_0 = "NO";
    defparam add_1606_9.INJECT1_1 = "NO";
    CCU2D add_1606_7 (.A0(n468[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2094), 
          .COUT(n2095), .S0(n12_adj_363[6]), .S1(n12_adj_363[7]));
    defparam add_1606_7.INIT0 = 16'hf555;
    defparam add_1606_7.INIT1 = 16'hf555;
    defparam add_1606_7.INJECT1_0 = "NO";
    defparam add_1606_7.INJECT1_1 = "NO";
    CCU2D add_1606_5 (.A0(n468[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2093), 
          .COUT(n2094), .S0(n373[4]), .S1(n12_adj_363[5]));
    defparam add_1606_5.INIT0 = 16'hf555;
    defparam add_1606_5.INIT1 = 16'hf555;
    defparam add_1606_5.INJECT1_0 = "NO";
    defparam add_1606_5.INJECT1_1 = "NO";
    CCU2D add_1606_3 (.A0(n468[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2092), 
          .COUT(n2093), .S0(n373[2]), .S1(n373[3]));
    defparam add_1606_3.INIT0 = 16'hf555;
    defparam add_1606_3.INIT1 = 16'hf555;
    defparam add_1606_3.INJECT1_0 = "NO";
    defparam add_1606_3.INJECT1_1 = "NO";
    CCU2D add_1606_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[0]), .B1(n468[1]), .C1(GND_net), .D1(GND_net), .COUT(n2092), 
          .S1(n373[1]));
    defparam add_1606_1.INIT0 = 16'hF000;
    defparam add_1606_1.INIT1 = 16'ha666;
    defparam add_1606_1.INJECT1_0 = "NO";
    defparam add_1606_1.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_11 (.A0(ball_y[9]), .B0(paddle_left_y[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2091), .S0(n655[9]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_11.INIT0 = 16'h5999;
    defparam sub_88_add_2_11.INIT1 = 16'h0000;
    defparam sub_88_add_2_11.INJECT1_0 = "NO";
    defparam sub_88_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_9 (.A0(ball_y[7]), .B0(paddle_left_y[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[8]), .B1(paddle_left_y[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2090), .COUT(n2091), .S0(n655[7]), .S1(n655[8]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_9.INIT0 = 16'h5999;
    defparam sub_88_add_2_9.INIT1 = 16'h5999;
    defparam sub_88_add_2_9.INJECT1_0 = "NO";
    defparam sub_88_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_7 (.A0(ball_y[5]), .B0(paddle_left_y[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[6]), .B1(paddle_left_y[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2089), .COUT(n2090), .S0(n655[5]), .S1(n655[6]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_7.INIT0 = 16'h5999;
    defparam sub_88_add_2_7.INIT1 = 16'h5999;
    defparam sub_88_add_2_7.INJECT1_0 = "NO";
    defparam sub_88_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_5 (.A0(ball_y[3]), .B0(paddle_left_y[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[4]), .B1(paddle_left_y[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2088), .COUT(n2089), .S0(n655[3]), .S1(n655[4]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_5.INIT0 = 16'h5999;
    defparam sub_88_add_2_5.INIT1 = 16'h5999;
    defparam sub_88_add_2_5.INJECT1_0 = "NO";
    defparam sub_88_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_3 (.A0(ball_y[1]), .B0(paddle_left_y[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[2]), .B1(paddle_left_y[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2087), .COUT(n2088), .S0(n655[1]), .S1(n655[2]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_3.INIT0 = 16'h5999;
    defparam sub_88_add_2_3.INIT1 = 16'h5999;
    defparam sub_88_add_2_3.INJECT1_0 = "NO";
    defparam sub_88_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[0]), .B1(paddle_left_y[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2087), .S1(n655[0]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_1.INIT0 = 16'h0000;
    defparam sub_88_add_2_1.INIT1 = 16'h5999;
    defparam sub_88_add_2_1.INJECT1_0 = "NO";
    defparam sub_88_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_11 (.A0(ball_y[9]), .B0(paddle_right_y[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2086), .S0(n468[9]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_11.INIT0 = 16'h5999;
    defparam sub_71_add_2_11.INIT1 = 16'h0000;
    defparam sub_71_add_2_11.INJECT1_0 = "NO";
    defparam sub_71_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_9 (.A0(ball_y[7]), .B0(paddle_right_y[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[8]), .B1(paddle_right_y[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2085), .COUT(n2086), .S0(n468[7]), .S1(n468[8]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_9.INIT0 = 16'h5999;
    defparam sub_71_add_2_9.INIT1 = 16'h5999;
    defparam sub_71_add_2_9.INJECT1_0 = "NO";
    defparam sub_71_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_7 (.A0(ball_y[5]), .B0(paddle_right_y[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[6]), .B1(paddle_right_y[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2084), .COUT(n2085), .S0(n468[5]), .S1(n468[6]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_7.INIT0 = 16'h5999;
    defparam sub_71_add_2_7.INIT1 = 16'h5999;
    defparam sub_71_add_2_7.INJECT1_0 = "NO";
    defparam sub_71_add_2_7.INJECT1_1 = "NO";
    CCU2D add_1609_7 (.A0(red_2__N_169[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_169[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2014), .COUT(n2015), .S0(red_2__N_180[5]), 
          .S1(red_2__N_180[6]));
    defparam add_1609_7.INIT0 = 16'hf555;
    defparam add_1609_7.INIT1 = 16'hf555;
    defparam add_1609_7.INJECT1_0 = "NO";
    defparam add_1609_7.INJECT1_1 = "NO";
    CCU2D add_1609_5 (.A0(red_2__N_169[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_169[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2013), .COUT(n2014), .S0(red_2__N_180[3]), 
          .S1(red_2__N_180[4]));
    defparam add_1609_5.INIT0 = 16'hf555;
    defparam add_1609_5.INIT1 = 16'hf555;
    defparam add_1609_5.INJECT1_0 = "NO";
    defparam add_1609_5.INJECT1_1 = "NO";
    CCU2D add_268_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1047), .B1(n2543), .C1(GND_net), .D1(GND_net), .COUT(n2029));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_268_1.INIT0 = 16'hF000;
    defparam add_268_1.INIT1 = 16'heeee;
    defparam add_268_1.INJECT1_0 = "NO";
    defparam add_268_1.INJECT1_1 = "NO";
    CCU2D add_185_11 (.A0(ball_dx[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1991), 
          .S0(n527[9]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_11.INIT0 = 16'ha555;
    defparam add_185_11.INIT1 = 16'h0000;
    defparam add_185_11.INJECT1_0 = "NO";
    defparam add_185_11.INJECT1_1 = "NO";
    CCU2D add_186_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2004), .S1(n876[0]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_1.INIT0 = 16'hF000;
    defparam add_186_1.INIT1 = 16'haaaa;
    defparam add_186_1.INJECT1_0 = "NO";
    defparam add_186_1.INJECT1_1 = "NO";
    CCU2D add_67_10 (.A0(ball_y[8]), .B0(ball_dy[8]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[9]), .B1(ball_dy[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2002), .S0(n434[8]), .S1(n434[9]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_10.INIT0 = 16'h5666;
    defparam add_67_10.INIT1 = 16'h5666;
    defparam add_67_10.INJECT1_0 = "NO";
    defparam add_67_10.INJECT1_1 = "NO";
    LUT4 i1_4_lut_rep_19_then_4_lut (.A(n92), .B(ball_y[8]), .C(ball_y[6]), 
         .D(ball_y[7]), .Z(n2549)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    defparam i1_4_lut_rep_19_then_4_lut.init = 16'hbfff;
    LUT4 i4_2_lut_adj_23 (.A(n12_adj_361[5]), .B(n12_adj_361[7]), .Z(n13_adj_308)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut_adj_23.init = 16'heeee;
    LUT4 i6_4_lut_adj_24 (.A(n12[6]), .B(n12[9]), .C(n12[8]), .D(n12[4]), 
         .Z(n15_adj_290)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_24.init = 16'hfffe;
    LUT4 i1_4_lut_rep_19_else_4_lut (.A(n92), .B(ball_y[8]), .C(ball_y[6]), 
         .D(ball_y[7]), .Z(n2548)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    defparam i1_4_lut_rep_19_else_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(n329[0]), .B(n12_adj_361[2]), .C(n329[1]), .Z(n10_adj_310)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i1834_2_lut_2_lut_3_lut (.A(n1729), .B(n2538), .C(n2543), .Z(n1179)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1834_2_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_adj_25 (.A(n434[8]), .B(n2539), .C(game_state[0]), .Z(n909[8])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_25.init = 16'hb3b3;
    LUT4 i4_4_lut_adj_26 (.A(n7_adj_333), .B(n2265), .C(column[4]), .D(column[9]), 
         .Z(n1705)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_26.init = 16'hfffe;
    LUT4 i3_4_lut_rep_21 (.A(column[8]), .B(column[7]), .C(column[4]), 
         .D(n2243), .Z(n2542)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(122[13:46])
    defparam i3_4_lut_rep_21.init = 16'hfbff;
    CCU2D row_273_add_4_5 (.A0(row[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1983), 
          .COUT(n1984), .S0(n35[3]), .S1(n35[4]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273_add_4_5.INIT0 = 16'hfaaa;
    defparam row_273_add_4_5.INIT1 = 16'hfaaa;
    defparam row_273_add_4_5.INJECT1_0 = "NO";
    defparam row_273_add_4_5.INJECT1_1 = "NO";
    CCU2D add_67_8 (.A0(ball_y[6]), .B0(ball_dy[6]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[7]), .B1(ball_dy[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2001), .COUT(n2002), .S0(n434[6]), .S1(n434[7]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_8.INIT0 = 16'h5666;
    defparam add_67_8.INIT1 = 16'h5666;
    defparam add_67_8.INJECT1_0 = "NO";
    defparam add_67_8.INJECT1_1 = "NO";
    CCU2D add_1609_3 (.A0(red_2__N_169[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_169[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2012), .COUT(n2013), .S0(red_2__N_180[1]), 
          .S1(red_2__N_180[2]));
    defparam add_1609_3.INIT0 = 16'hf555;
    defparam add_1609_3.INIT1 = 16'hf555;
    defparam add_1609_3.INJECT1_0 = "NO";
    defparam add_1609_3.INJECT1_1 = "NO";
    CCU2D add_1609_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(red_2__N_169[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2012));
    defparam add_1609_1.INIT0 = 16'hF000;
    defparam add_1609_1.INIT1 = 16'h0aaa;
    defparam add_1609_1.INJECT1_0 = "NO";
    defparam add_1609_1.INJECT1_1 = "NO";
    LUT4 i1823_2_lut_2_lut_3_lut (.A(column[5]), .B(column[6]), .C(n2542), 
         .Z(o_VGA_HSync_N_275)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1823_2_lut_2_lut_3_lut.init = 16'h0808;
    CCU2D row_273_add_4_3 (.A0(row[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1982), 
          .COUT(n1983), .S0(n35[1]), .S1(n35[2]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273_add_4_3.INIT0 = 16'hfaaa;
    defparam row_273_add_4_3.INIT1 = 16'hfaaa;
    defparam row_273_add_4_3.INJECT1_0 = "NO";
    defparam row_273_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(n2537), .B(n1723), .C(game_state[0]), .D(n422[1]), 
         .Z(n624[1])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf111;
    LUT4 i1_4_lut_adj_27 (.A(column[9]), .B(n2154), .C(n2170), .D(n2147), 
         .Z(blue[0])) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(107[13] 108[50])
    defparam i1_4_lut_adj_27.init = 16'h20a0;
    LUT4 i1364_4_lut (.A(n655[5]), .B(n2152), .C(n10_adj_334), .D(n655[9]), 
         .Z(n1729)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1364_4_lut.init = 16'hccc8;
    LUT4 i5_3_lut_adj_28 (.A(red_2__N_73[5]), .B(n10_adj_335), .C(red_2__N_73[9]), 
         .Z(n2154)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_adj_28.init = 16'hfefe;
    LUT4 i442_2_lut (.A(game_state[0]), .B(n434[5]), .Z(n456[5])) /* synthesis lut_function=((B)+!A) */ ;
    defparam i442_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_adj_29 (.A(n5_adj_336), .B(n2265), .C(column[6]), .D(column[4]), 
         .Z(n2170)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_29.init = 16'heccc;
    LUT4 i1_3_lut_adj_30 (.A(n434[3]), .B(n2539), .C(game_state[0]), .Z(n909[3])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_30.init = 16'hb3b3;
    LUT4 i7_4_lut (.A(ball_x[0]), .B(n14_adj_337), .C(n10_adj_338), .D(ball_x[1]), 
         .Z(n1135)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(n2537), .B(n1723), .C(game_state[0]), .D(n422[6]), 
         .Z(n2139)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut.init = 16'hff1f;
    LUT4 i6_4_lut_adj_31 (.A(ball_x[4]), .B(ball_x[2]), .C(ball_x[3]), 
         .D(ball_x[6]), .Z(n14_adj_337)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i6_4_lut_adj_31.init = 16'hfffe;
    LUT4 i2_4_lut_adj_32 (.A(n1158), .B(n1703), .C(n1663), .D(column[3]), 
         .Z(n7_adj_333)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_32.init = 16'hfeee;
    LUT4 i1_3_lut_4_lut_adj_33 (.A(n2537), .B(n1723), .C(game_state[0]), 
         .D(n422[9]), .Z(n624[9])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_33.init = 16'hf111;
    LUT4 i2_2_lut_adj_34 (.A(ball_x[8]), .B(ball_x[5]), .Z(n10_adj_338)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i2_2_lut_adj_34.init = 16'heeee;
    LUT4 i5_4_lut_adj_35 (.A(n12_adj_362[5]), .B(n7_adj_339), .C(n12_adj_362[9]), 
         .D(n8_adj_340), .Z(n2152)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_35.init = 16'hfffe;
    LUT4 i1_3_lut_adj_36 (.A(n434[1]), .B(n2539), .C(game_state[0]), .Z(n909[1])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_36.init = 16'hb3b3;
    CCU2D led_count_274_add_4_13 (.A0(led_count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2040), .COUT(n2041), .S0(n101[11]), .S1(n101[12]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_13.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_13.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_13.INJECT1_0 = "NO";
    defparam led_count_274_add_4_13.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_11 (.A0(led_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2039), .COUT(n2040), .S0(n101[9]), .S1(n101[10]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_11.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_11.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_11.INJECT1_0 = "NO";
    defparam led_count_274_add_4_11.INJECT1_1 = "NO";
    CCU2D add_185_9 (.A0(ball_dx[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1990), .COUT(n1991), .S0(n527[7]), .S1(n527[8]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_9.INIT0 = 16'ha555;
    defparam add_185_9.INIT1 = 16'ha555;
    defparam add_185_9.INJECT1_0 = "NO";
    defparam add_185_9.INJECT1_1 = "NO";
    CCU2D add_271_11 (.A0(n1119), .B0(n2543), .C0(paddle_right_y[8]), 
          .D0(GND_net), .A1(n1119), .B1(n2543), .C1(paddle_right_y[9]), 
          .D1(GND_net), .CIN(n2024), .S0(paddle_right_y_9__N_145[8]), 
          .S1(paddle_right_y_9__N_145[9]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_271_11.INIT0 = 16'he1e1;
    defparam add_271_11.INIT1 = 16'he1e1;
    defparam add_271_11.INJECT1_0 = "NO";
    defparam add_271_11.INJECT1_1 = "NO";
    CCU2D add_67_6 (.A0(ball_y[4]), .B0(ball_dy[4]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[5]), .B1(ball_dy[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2000), .COUT(n2001), .S0(n434[4]), .S1(n434[5]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_6.INIT0 = 16'h5666;
    defparam add_67_6.INIT1 = 16'h5666;
    defparam add_67_6.INJECT1_0 = "NO";
    defparam add_67_6.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_37 (.A(n2535), .B(n2536), .C(game_state[0]), .D(n422[7]), 
         .Z(ball_x_9__N_212[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam i2_4_lut_adj_37.init = 16'h8000;
    LUT4 i5_4_lut_adj_38 (.A(red_2__N_84[5]), .B(n7_adj_341), .C(red_2__N_84[9]), 
         .D(n8_adj_342), .Z(n2147)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_38.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_39 (.A(n2537), .B(n1723), .C(game_state[0]), 
         .D(n422[5]), .Z(n624[5])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_39.init = 16'hf111;
    LUT4 i4_4_lut_adj_40 (.A(n2125), .B(n655[6]), .C(n655[8]), .D(n655[7]), 
         .Z(n10_adj_334)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_40.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_41 (.A(n2537), .B(n1723), .C(game_state[0]), 
         .D(n422[4]), .Z(n624[4])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_41.init = 16'hf111;
    LUT4 i4_2_lut_adj_42 (.A(n12[5]), .B(n12[7]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut_adj_42.init = 16'heeee;
    LUT4 i1_4_lut_adj_43 (.A(n384[1]), .B(n12_adj_362[8]), .C(n6_adj_345), 
         .D(n384[3]), .Z(n7_adj_339)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_43.init = 16'heccc;
    LUT4 i4_4_lut_adj_44 (.A(n2118), .B(red_2__N_73[6]), .C(red_2__N_73[8]), 
         .D(red_2__N_73[7]), .Z(n10_adj_335)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_44.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_45 (.A(n2537), .B(n1723), .C(game_state[0]), 
         .D(n422[3]), .Z(n624[3])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_45.init = 16'hf111;
    LUT4 i1_3_lut_4_lut_adj_46 (.A(n2537), .B(n1723), .C(game_state[0]), 
         .D(n422[2]), .Z(n624[2])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_46.init = 16'hf111;
    LUT4 i1338_4_lut (.A(red_2__N_169[5]), .B(n2145), .C(n10_adj_346), 
         .D(red_2__N_169[9]), .Z(n1703)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1338_4_lut.init = 16'hccc8;
    LUT4 i2_2_lut_adj_47 (.A(n12_adj_362[6]), .B(n12_adj_362[7]), .Z(n8_adj_340)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_47.init = 16'heeee;
    CCU2D add_66_10 (.A0(ball_x[8]), .B0(ball_dx[8]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[9]), .B1(ball_dx[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1996), .S0(n422[8]), .S1(n422[9]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_10.INIT0 = 16'h5666;
    defparam add_66_10.INIT1 = 16'h5666;
    defparam add_66_10.INJECT1_0 = "NO";
    defparam add_66_10.INJECT1_1 = "NO";
    CCU2D add_66_8 (.A0(ball_x[6]), .B0(ball_dx[6]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[7]), .B1(ball_dx[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1995), .COUT(n1996), .S0(n422[6]), .S1(n422[7]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_8.INIT0 = 16'h5666;
    defparam add_66_8.INIT1 = 16'h5666;
    defparam add_66_8.INJECT1_0 = "NO";
    defparam add_66_8.INJECT1_1 = "NO";
    CCU2D add_271_9 (.A0(n1119), .B0(n2543), .C0(paddle_right_y[6]), .D0(GND_net), 
          .A1(n1119), .B1(n2543), .C1(paddle_right_y[7]), .D1(GND_net), 
          .CIN(n2023), .COUT(n2024), .S0(paddle_right_y_9__N_145[6]), 
          .S1(paddle_right_y_9__N_145[7]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_271_9.INIT0 = 16'he1e1;
    defparam add_271_9.INIT1 = 16'he1e1;
    defparam add_271_9.INJECT1_0 = "NO";
    defparam add_271_9.INJECT1_1 = "NO";
    CCU2D add_66_6 (.A0(ball_x[4]), .B0(ball_dx[4]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[5]), .B1(ball_dx[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1994), .COUT(n1995), .S0(n422[4]), .S1(n422[5]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_6.INIT0 = 16'h5666;
    defparam add_66_6.INIT1 = 16'h5666;
    defparam add_66_6.INJECT1_0 = "NO";
    defparam add_66_6.INJECT1_1 = "NO";
    CCU2D led_count_274_add_4_9 (.A0(led_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2038), .COUT(n2039), .S0(n101[7]), .S1(n101[8]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_274_add_4_9.INIT0 = 16'hfaaa;
    defparam led_count_274_add_4_9.INIT1 = 16'hfaaa;
    defparam led_count_274_add_4_9.INJECT1_0 = "NO";
    defparam led_count_274_add_4_9.INJECT1_1 = "NO";
    CCU2D add_271_7 (.A0(n1119), .B0(n2543), .C0(paddle_right_y[4]), .D0(GND_net), 
          .A1(n1119), .B1(n2543), .C1(paddle_right_y[5]), .D1(GND_net), 
          .CIN(n2022), .COUT(n2023), .S0(paddle_right_y_9__N_145[4]), 
          .S1(paddle_right_y_9__N_145[5]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_271_7.INIT0 = 16'he1e1;
    defparam add_271_7.INIT1 = 16'he1e1;
    defparam add_271_7.INJECT1_0 = "NO";
    defparam add_271_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_48 (.A(game_state[0]), .B(n2539), .C(n434[7]), 
         .Z(n2264)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_48.init = 16'hf7f7;
    LUT4 i3_4_lut (.A(red_2__N_73[1]), .B(red_2__N_73[2]), .C(red_2__N_73[3]), 
         .D(red_2__N_73[4]), .Z(n2118)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_49 (.A(n340[0]), .B(n12[2]), .C(n340[1]), .Z(n10_adj_291)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_49.init = 16'hecec;
    LUT4 i1_3_lut_adj_50 (.A(n434[2]), .B(n2539), .C(game_state[0]), .Z(n80)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_50.init = 16'hb3b3;
    LUT4 i2_2_lut_adj_51 (.A(n384[2]), .B(n384[4]), .Z(n6_adj_345)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_51.init = 16'h8888;
    LUT4 i3_4_lut_adj_52 (.A(n655[1]), .B(n655[2]), .C(n655[3]), .D(n655[4]), 
         .Z(n2125)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_52.init = 16'h8000;
    LUT4 i1122_3_lut (.A(ball_x[0]), .B(game_state[0]), .C(ball_dx[0]), 
         .Z(n445[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/enact/projects/vga/vga.v(136[13] 139[16])
    defparam i1122_3_lut.init = 16'h4848;
    LUT4 i2_4_lut_adj_53 (.A(paddle_right_y[9]), .B(PIN10_c), .C(n5_adj_347), 
         .D(n6_adj_348), .Z(n1119)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut_adj_53.init = 16'h0444;
    LUT4 i1125_3_lut (.A(ball_y[0]), .B(game_state[0]), .C(ball_dy[0]), 
         .Z(n456[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/enact/projects/vga/vga.v(136[13] 139[16])
    defparam i1125_3_lut.init = 16'h4848;
    LUT4 i116_4_lut (.A(PIN7_c), .B(paddle_left_y[9]), .C(n10_adj_349), 
         .D(paddle_left_y[7]), .Z(n1022)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(169[17:62])
    defparam i116_4_lut.init = 16'haaa8;
    LUT4 i4_4_lut_adj_54 (.A(paddle_left_y[6]), .B(paddle_left_y[5]), .C(n2111), 
         .D(paddle_left_y[8]), .Z(n10_adj_349)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_54.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_55 (.A(game_state[0]), .B(n2539), .C(n434[6]), 
         .Z(n2262)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_55.init = 16'hf7f7;
    LUT4 i4_4_lut_adj_56 (.A(paddle_left_y[2]), .B(paddle_left_y[4]), .C(paddle_left_y[0]), 
         .D(n6_adj_350), .Z(n2111)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_56.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(game_state[0]), .B(n2539), .C(n434[4]), 
         .Z(n2263)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_57.init = 16'hf7f7;
    LUT4 equal_12_i34_1_lut_4_lut (.A(n19_adj_300), .B(n32), .C(n28), 
         .D(n20), .Z(ball_x_9__N_222)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam equal_12_i34_1_lut_4_lut.init = 16'h0001;
    LUT4 i1298_2_lut (.A(column[1]), .B(column[2]), .Z(n1663)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1298_2_lut.init = 16'heeee;
    CCU2D add_66_4 (.A0(ball_x[2]), .B0(ball_dx[2]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[3]), .B1(ball_dx[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1993), .COUT(n1994), .S0(n422[2]), .S1(n422[3]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_4.INIT0 = 16'h5666;
    defparam add_66_4.INIT1 = 16'h5666;
    defparam add_66_4.INJECT1_0 = "NO";
    defparam add_66_4.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_58 (.A(paddle_right_y[4]), .B(paddle_right_y[7]), 
         .C(n8_adj_351), .D(paddle_right_y[5]), .Z(n5_adj_347)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_58.init = 16'hccc8;
    LUT4 i5_4_lut_adj_59 (.A(n9_adj_352), .B(n2108), .C(n8_adj_353), .D(red_2__N_180[6]), 
         .Z(n2145)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(36[16:19])
    defparam i5_4_lut_adj_59.init = 16'hfffe;
    CCU2D row_273_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1982), 
          .S1(n35[0]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_273_add_4_1.INIT0 = 16'hF000;
    defparam row_273_add_4_1.INIT1 = 16'h0555;
    defparam row_273_add_4_1.INJECT1_0 = "NO";
    defparam row_273_add_4_1.INJECT1_1 = "NO";
    CCU2D add_185_7 (.A0(ball_dx[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1989), .COUT(n1990), .S0(n527[5]), .S1(n527[6]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_7.INIT0 = 16'ha555;
    defparam add_185_7.INIT1 = 16'ha555;
    defparam add_185_7.INJECT1_0 = "NO";
    defparam add_185_7.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_60 (.A(paddle_right_y[6]), .B(paddle_right_y[8]), 
         .Z(n6_adj_348)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_60.init = 16'h8888;
    CCU2D add_185_5 (.A0(ball_dx[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1988), .COUT(n1989), .S0(n527[3]), .S1(n527[4]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_5.INIT0 = 16'ha555;
    defparam add_185_5.INIT1 = 16'ha555;
    defparam add_185_5.INJECT1_0 = "NO";
    defparam add_185_5.INJECT1_1 = "NO";
    CCU2D add_185_3 (.A0(ball_dx[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1987), .COUT(n1988), .S0(n527[1]), .S1(n527[2]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_3.INIT0 = 16'ha555;
    defparam add_185_3.INIT1 = 16'ha555;
    defparam add_185_3.INJECT1_0 = "NO";
    defparam add_185_3.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_5 (.A0(ball_y[3]), .B0(paddle_right_y[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[4]), .B1(paddle_right_y[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2083), .COUT(n2084), .S0(n468[3]), .S1(n468[4]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_5.INIT0 = 16'h5999;
    defparam sub_71_add_2_5.INIT1 = 16'h5999;
    defparam sub_71_add_2_5.INJECT1_0 = "NO";
    defparam sub_71_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_3 (.A0(ball_y[1]), .B0(paddle_right_y[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[2]), .B1(paddle_right_y[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2082), .COUT(n2083), .S0(n468[1]), .S1(n468[2]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_3.INIT0 = 16'h5999;
    defparam sub_71_add_2_3.INIT1 = 16'h5999;
    defparam sub_71_add_2_3.INJECT1_0 = "NO";
    defparam sub_71_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[0]), .B1(paddle_right_y[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2082), .S1(n468[0]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_1.INIT0 = 16'h0000;
    defparam sub_71_add_2_1.INIT1 = 16'h5999;
    defparam sub_71_add_2_1.INJECT1_0 = "NO";
    defparam sub_71_add_2_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_61 (.A(paddle_left_y[3]), .B(paddle_left_y[1]), .Z(n6_adj_350)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i1841_2_lut_2_lut (.A(n2540), .B(n2543), .Z(clk_enable_22)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1841_2_lut_2_lut.init = 16'h1111;
    LUT4 i1_3_lut_adj_62 (.A(n2242), .B(column[5]), .C(column[3]), .Z(n5_adj_336)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_62.init = 16'hc8c8;
    LUT4 i1358_4_lut (.A(n468[5]), .B(n43_adj_354), .C(n10_adj_355), .D(n468[9]), 
         .Z(n1723)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1358_4_lut.init = 16'hccc8;
    LUT4 i5_4_lut_adj_63 (.A(n9_adj_356), .B(n7_adj_357), .C(n12_adj_363[5]), 
         .D(n12_adj_363[8]), .Z(n43_adj_354)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_63.init = 16'hfffe;
    CCU2D paddle_right_y_9__I_0_171_add_2_11 (.A0(paddle_right_y[9]), .B0(row[9]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2081), .S0(red_2__N_73[9]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_11.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_11.INIT1 = 16'h0000;
    defparam paddle_right_y_9__I_0_171_add_2_11.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_11.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_9 (.A0(paddle_right_y[7]), .B0(row[7]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[8]), .B1(row[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2080), .COUT(n2081), .S0(red_2__N_73[7]), 
          .S1(red_2__N_73[8]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_9.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_9.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_9.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_9.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_7 (.A0(paddle_right_y[5]), .B0(row[5]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[6]), .B1(row[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2079), .COUT(n2080), .S0(red_2__N_73[5]), 
          .S1(red_2__N_73[6]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_7.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_7.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_7.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_7.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_5 (.A0(paddle_right_y[3]), .B0(row[3]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[4]), .B1(row[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2078), .COUT(n2079), .S0(red_2__N_73[3]), 
          .S1(red_2__N_73[4]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_5.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_5.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_5.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_5.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_3 (.A0(paddle_right_y[1]), .B0(row[1]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[2]), .B1(row[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2077), .COUT(n2078), .S0(red_2__N_73[1]), 
          .S1(red_2__N_73[2]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_3.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_3.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_3.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_3.INJECT1_1 = "NO";
    LUT4 i3_3_lut_adj_64 (.A(paddle_right_y[3]), .B(paddle_right_y[1]), 
         .C(paddle_right_y[2]), .Z(n8_adj_351)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut_adj_64.init = 16'hfefe;
    CCU2D paddle_right_y_9__I_0_171_add_2_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[0]), .B1(row[0]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2077), .S1(red_2__N_73[0]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_1.INIT0 = 16'h0000;
    defparam paddle_right_y_9__I_0_171_add_2_1.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_1.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_11 (.A0(paddle_left_y[9]), .B0(row[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2076), .S0(red_2__N_169[9]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_11.INIT0 = 16'h5999;
    defparam sub_27_add_2_11.INIT1 = 16'h0000;
    defparam sub_27_add_2_11.INJECT1_0 = "NO";
    defparam sub_27_add_2_11.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_65 (.A(n2126), .B(red_2__N_169[6]), .C(red_2__N_169[8]), 
         .D(red_2__N_169[7]), .Z(n10_adj_346)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_65.init = 16'hfffe;
    CCU2D sub_27_add_2_9 (.A0(paddle_left_y[7]), .B0(row[7]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[8]), .B1(row[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2075), .COUT(n2076), .S0(red_2__N_169[7]), 
          .S1(red_2__N_169[8]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_9.INIT0 = 16'h5999;
    defparam sub_27_add_2_9.INIT1 = 16'h5999;
    defparam sub_27_add_2_9.INJECT1_0 = "NO";
    defparam sub_27_add_2_9.INJECT1_1 = "NO";
    LUT4 i1852_3_lut_3_lut (.A(n2541), .B(blue[0]), .C(n1705), .Z(PIN18_c_0)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1852_3_lut_3_lut.init = 16'h0101;
    LUT4 i4_4_lut_adj_66 (.A(n2120), .B(n468[6]), .C(n468[8]), .D(n468[7]), 
         .Z(n10_adj_355)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_66.init = 16'hfffe;
    CCU2D sub_27_add_2_7 (.A0(paddle_left_y[5]), .B0(row[5]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[6]), .B1(row[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2074), .COUT(n2075), .S0(red_2__N_169[5]), 
          .S1(red_2__N_169[6]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_7.INIT0 = 16'h5999;
    defparam sub_27_add_2_7.INIT1 = 16'h5999;
    defparam sub_27_add_2_7.INJECT1_0 = "NO";
    defparam sub_27_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_5 (.A0(paddle_left_y[3]), .B0(row[3]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[4]), .B1(row[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2073), .COUT(n2074), .S0(red_2__N_169[3]), 
          .S1(red_2__N_169[4]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_5.INIT0 = 16'h5999;
    defparam sub_27_add_2_5.INIT1 = 16'h5999;
    defparam sub_27_add_2_5.INJECT1_0 = "NO";
    defparam sub_27_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_67 (.A(red_2__N_84[1]), .B(red_2__N_84[8]), .C(n6_adj_358), 
         .D(red_2__N_84[3]), .Z(n7_adj_341)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_67.init = 16'heccc;
    CCU2D sub_27_add_2_3 (.A0(paddle_left_y[1]), .B0(row[1]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[2]), .B1(row[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2072), .COUT(n2073), .S0(red_2__N_169[1]), 
          .S1(red_2__N_169[2]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_3.INIT0 = 16'h5999;
    defparam sub_27_add_2_3.INIT1 = 16'h5999;
    defparam sub_27_add_2_3.INJECT1_0 = "NO";
    defparam sub_27_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(paddle_left_y[0]), .B1(row[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2072), .S1(red_2__N_169[0]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_1.INIT0 = 16'h0000;
    defparam sub_27_add_2_1.INIT1 = 16'h5999;
    defparam sub_27_add_2_1.INJECT1_0 = "NO";
    defparam sub_27_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_68 (.A(red_2__N_84[6]), .B(red_2__N_84[7]), .Z(n8_adj_342)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_68.init = 16'heeee;
    CCU2D sub_20_add_2_11 (.A0(ball_x[9]), .B0(column[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2071), .S0(n135[9]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_11.INIT0 = 16'h5999;
    defparam sub_20_add_2_11.INIT1 = 16'h0000;
    defparam sub_20_add_2_11.INJECT1_0 = "NO";
    defparam sub_20_add_2_11.INJECT1_1 = "NO";
    LUT4 i3_2_lut_adj_69 (.A(red_2__N_180[9]), .B(red_2__N_180[8]), .Z(n9_adj_352)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(36[16:19])
    defparam i3_2_lut_adj_69.init = 16'heeee;
    LUT4 i3_2_lut_adj_70 (.A(n12_adj_363[9]), .B(n12_adj_363[7]), .Z(n9_adj_356)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut_adj_70.init = 16'heeee;
    CCU2D sub_20_add_2_9 (.A0(ball_x[7]), .B0(column[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[8]), .B1(column[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2070), .COUT(n2071), .S0(n135[7]), .S1(n135[8]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_9.INIT0 = 16'h5999;
    defparam sub_20_add_2_9.INIT1 = 16'h5999;
    defparam sub_20_add_2_9.INJECT1_0 = "NO";
    defparam sub_20_add_2_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_71 (.A(red_2__N_84[2]), .B(red_2__N_84[4]), .Z(n6_adj_358)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_71.init = 16'h8888;
    CCU2D sub_20_add_2_7 (.A0(ball_x[5]), .B0(column[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[6]), .B1(column[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2069), .COUT(n2070), .S0(n135[5]), .S1(n135[6]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_7.INIT0 = 16'h5999;
    defparam sub_20_add_2_7.INIT1 = 16'h5999;
    defparam sub_20_add_2_7.INJECT1_0 = "NO";
    defparam sub_20_add_2_7.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_72 (.A(red_2__N_180[4]), .B(red_2__N_180[1]), .C(red_2__N_180[2]), 
         .D(red_2__N_180[3]), .Z(n2108)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/enact/projects/vga/vga.v(36[16:19])
    defparam i3_4_lut_adj_72.init = 16'h8000;
    LUT4 i1855_3_lut_4_lut_4_lut (.A(n2543), .B(n2536), .C(n2538), .D(n1729), 
         .Z(clk_enable_13)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;
    defparam i1855_3_lut_4_lut_4_lut.init = 16'h1115;
    LUT4 i2_2_lut_adj_73 (.A(led_count[10]), .B(led_count[1]), .Z(n19_adj_300)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i2_2_lut_adj_73.init = 16'heeee;
    CCU2D sub_20_add_2_5 (.A0(ball_x[3]), .B0(column[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[4]), .B1(column[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2068), .COUT(n2069), .S0(n135[3]), .S1(n135[4]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_5.INIT0 = 16'h5999;
    defparam sub_20_add_2_5.INIT1 = 16'h5999;
    defparam sub_20_add_2_5.INJECT1_0 = "NO";
    defparam sub_20_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut_rep_16 (.A(n1135), .B(ball_x[7]), .C(ball_x[9]), .Z(n2537)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut_rep_16.init = 16'hbfbf;
    CCU2D sub_20_add_2_3 (.A0(ball_x[1]), .B0(column[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[2]), .B1(column[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2067), .COUT(n2068), .S0(n135[1]), .S1(n135[2]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_3.INIT0 = 16'h5999;
    defparam sub_20_add_2_3.INIT1 = 16'h5999;
    defparam sub_20_add_2_3.INJECT1_0 = "NO";
    defparam sub_20_add_2_3.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(n29), .B(led_count[5]), .C(n26), .D(led_count[0]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_74 (.A(column[5]), .B(column[6]), .Z(n1158)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(122[13:46])
    defparam i1_2_lut_adj_74.init = 16'heeee;
    CCU2D sub_20_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[0]), .B1(column[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2067), .S1(n135[0]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_1.INIT0 = 16'h0000;
    defparam sub_20_add_2_1.INIT1 = 16'h5999;
    defparam sub_20_add_2_1.INJECT1_0 = "NO";
    defparam sub_20_add_2_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_75 (.A(column[9]), .B(column[3]), .C(n2242), .Z(n2243)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_75.init = 16'h8080;
    LUT4 i2_2_lut_adj_76 (.A(red_2__N_180[7]), .B(red_2__N_180[5]), .Z(n8_adj_353)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(36[16:19])
    defparam i2_2_lut_adj_76.init = 16'heeee;
    CCU2D sub_15_add_2_11 (.A0(ball_y[9]), .B0(row[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2066), .S0(n16[9]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_11.INIT0 = 16'h5999;
    defparam sub_15_add_2_11.INIT1 = 16'h0000;
    defparam sub_15_add_2_11.INJECT1_0 = "NO";
    defparam sub_15_add_2_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_77 (.A(red_2__N_169[1]), .B(red_2__N_169[2]), .C(red_2__N_169[3]), 
         .D(red_2__N_169[4]), .Z(n2126)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_77.init = 16'h8000;
    LUT4 i2_3_lut_adj_78 (.A(column[1]), .B(column[0]), .C(column[2]), 
         .Z(n2242)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_78.init = 16'h8080;
    LUT4 i5_4_lut_adj_79 (.A(n9_adj_359), .B(n2547), .C(n8_adj_360), .D(row[5]), 
         .Z(clk_enable_2)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_4_lut_adj_79.init = 16'h0800;
    CCU2D sub_15_add_2_9 (.A0(ball_y[7]), .B0(row[7]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[8]), .B1(row[8]), .C1(GND_net), .D1(GND_net), .CIN(n2065), 
          .COUT(n2066), .S0(n16[7]), .S1(n16[8]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_9.INIT0 = 16'h5999;
    defparam sub_15_add_2_9.INIT1 = 16'h5999;
    defparam sub_15_add_2_9.INJECT1_0 = "NO";
    defparam sub_15_add_2_9.INJECT1_1 = "NO";
    LUT4 i1806_2_lut_rep_15_4_lut (.A(n1135), .B(ball_x[7]), .C(ball_x[9]), 
         .D(n1723), .Z(n2536)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1806_2_lut_rep_15_4_lut.init = 16'hffbf;
    CCU2D sub_15_add_2_7 (.A0(ball_y[5]), .B0(row[5]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[6]), .B1(row[6]), .C1(GND_net), .D1(GND_net), .CIN(n2064), 
          .COUT(n2065), .S0(n16[5]), .S1(n16[6]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_7.INIT0 = 16'h5999;
    defparam sub_15_add_2_7.INIT1 = 16'h5999;
    defparam sub_15_add_2_7.INJECT1_0 = "NO";
    defparam sub_15_add_2_7.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(led_count[13]), .B(led_count[6]), .C(led_count[14]), 
         .D(led_count[9]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_80 (.A(row[3]), .B(row[4]), .C(row[8]), .D(row[0]), 
         .Z(n9_adj_359)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_80.init = 16'h2000;
    LUT4 i6_4_lut_adj_81 (.A(n12_adj_361[6]), .B(n12_adj_361[9]), .C(n12_adj_361[8]), 
         .D(n12_adj_361[4]), .Z(n15_adj_307)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_81.init = 16'hfffe;
    LUT4 i1825_4_lut (.A(n2298), .B(row[8]), .C(n8_adj_360), .D(n2546), 
         .Z(o_VGA_VSync_N_279)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(125[9:67])
    defparam i1825_4_lut.init = 16'h0008;
    LUT4 i444_2_lut (.A(game_state[0]), .B(n422[8]), .Z(n445[8])) /* synthesis lut_function=((B)+!A) */ ;
    defparam i444_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_adj_82 (.A(n12_adj_363[6]), .B(n373[1]), .C(n6_adj_318), 
         .D(n373[3]), .Z(n7_adj_357)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_82.init = 16'heaaa;
    LUT4 i1_2_lut_adj_83 (.A(column[7]), .B(column[8]), .Z(n2265)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_83.init = 16'heeee;
    LUT4 i1810_4_lut (.A(row[0]), .B(n2547), .C(row[1]), .D(row[5]), 
         .Z(n2298)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1810_4_lut.init = 16'h8000;
    CCU2D sub_15_add_2_5 (.A0(ball_y[3]), .B0(row[3]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[4]), .B1(row[4]), .C1(GND_net), .D1(GND_net), .CIN(n2063), 
          .COUT(n2064), .S0(n16[3]), .S1(n16[4]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_5.INIT0 = 16'h5999;
    defparam sub_15_add_2_5.INIT1 = 16'h5999;
    defparam sub_15_add_2_5.INJECT1_0 = "NO";
    defparam sub_15_add_2_5.INJECT1_1 = "NO";
    LUT4 i1120_3_lut (.A(blue[0]), .B(n2541), .C(n2290), .Z(PIN17_c_0)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/enact/projects/vga/vga.v(90[56:105])
    defparam i1120_3_lut.init = 16'h2323;
    LUT4 i1121_2_lut (.A(blue[0]), .B(n2541), .Z(PIN14_c_0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(91[57:105])
    defparam i1121_2_lut.init = 16'h2222;
    LUT4 i1802_4_lut (.A(n2159), .B(n1705), .C(n1699), .D(n2157), .Z(n2290)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1802_4_lut.init = 16'hc8c0;
    PFUMX i1908 (.BLUT(n2548), .ALUT(n2549), .C0(ball_y[5]), .Z(n2540));
    LUT4 i3_4_lut_adj_84 (.A(n468[1]), .B(n468[2]), .C(n468[3]), .D(n468[4]), 
         .Z(n2120)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_84.init = 16'h8000;
    CCU2D sub_15_add_2_3 (.A0(ball_y[1]), .B0(row[1]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[2]), .B1(row[2]), .C1(GND_net), .D1(GND_net), .CIN(n2062), 
          .COUT(n2063), .S0(n16[1]), .S1(n16[2]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_3.INIT0 = 16'h5999;
    defparam sub_15_add_2_3.INIT1 = 16'h5999;
    defparam sub_15_add_2_3.INJECT1_0 = "NO";
    defparam sub_15_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[0]), .B1(row[0]), .C1(GND_net), .D1(GND_net), .COUT(n2062), 
          .S1(n16[0]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_1.INIT0 = 16'h0000;
    defparam sub_15_add_2_1.INIT1 = 16'h5999;
    defparam sub_15_add_2_1.INJECT1_0 = "NO";
    defparam sub_15_add_2_1.INJECT1_1 = "NO";
    CCU2D unary_minus_181_add_3_11 (.A0(n135[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2061), .S0(n12[9]));
    defparam unary_minus_181_add_3_11.INIT0 = 16'hf555;
    defparam unary_minus_181_add_3_11.INIT1 = 16'h0000;
    defparam unary_minus_181_add_3_11.INJECT1_0 = "NO";
    defparam unary_minus_181_add_3_11.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_85 (.A(row[9]), .B(row[2]), .Z(n8_adj_360)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(125[13:51])
    defparam i2_2_lut_adj_85.init = 16'heeee;
    CCU2D unary_minus_181_add_3_9 (.A0(n135[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2060), .COUT(n2061), .S0(n12[7]), .S1(n12[8]));
    defparam unary_minus_181_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_181_add_3_9.INIT1 = 16'hf555;
    defparam unary_minus_181_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_181_add_3_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_17 (.A(ball_x[7]), .B(ball_x[9]), .C(n1135), .Z(n2538)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i2_3_lut_rep_17.init = 16'hfefe;
    CCU2D unary_minus_181_add_3_7 (.A0(n135[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2059), .COUT(n2060), .S0(n12[5]), .S1(n12[6]));
    defparam unary_minus_181_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_181_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_181_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_181_add_3_7.INJECT1_1 = "NO";
    
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
// Verilog Description of module ClockDivider
//

module ClockDivider (clk, INTERNAL_OSC, GND_net, n1173) /* synthesis syn_module_defined=1 */ ;
    output clk;
    input INTERNAL_OSC;
    input GND_net;
    output n1173;
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(133[6:9])
    wire INTERNAL_OSC /* synthesis SET_AS_NETWORK=INTERNAL_OSC, is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(74[6:18])
    
    wire clk_out_25mhz_N_16;
    wire [6:0]counter;   // c:/users/enact/projects/vga/clock_divider.v(6[15:22])
    
    wire n12, n1980;
    wire [6:0]n33;
    
    wire n1979, n1978;
    
    FD1S3AX clk_out_25mhz_12 (.D(clk_out_25mhz_N_16), .CK(INTERNAL_OSC), 
            .Q(clk)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=135, LSE_RLINE=138 */ ;   // c:/users/enact/projects/vga/clock_divider.v(8[12] 14[8])
    defparam clk_out_25mhz_12.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(counter[0]), .B(counter[5]), .C(counter[4]), .D(counter[3]), 
         .Z(n12)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/enact/projects/vga/clock_divider.v(10[13:25])
    defparam i5_4_lut.init = 16'hfffd;
    CCU2D counter_272_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1980), .S0(n33[5]), .S1(n33[6]));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_272_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_272_add_4_7.INJECT1_0 = "NO";
    defparam counter_272_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_272_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1979), .COUT(n1980), .S0(n33[3]), .S1(n33[4]));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_272_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_272_add_4_5.INJECT1_0 = "NO";
    defparam counter_272_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_272_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1978), .COUT(n1979), .S0(n33[1]), .S1(n33[2]));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_272_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_272_add_4_3.INJECT1_0 = "NO";
    defparam counter_272_add_4_3.INJECT1_1 = "NO";
    FD1S3IX counter_272__i0 (.D(n33[0]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i0.GSR = "ENABLED";
    CCU2D counter_272_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1978), .S1(n33[0]));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272_add_4_1.INIT0 = 16'hF000;
    defparam counter_272_add_4_1.INIT1 = 16'h0555;
    defparam counter_272_add_4_1.INJECT1_0 = "NO";
    defparam counter_272_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_272__i6 (.D(n33[6]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i6.GSR = "ENABLED";
    FD1S3IX counter_272__i5 (.D(n33[5]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i5.GSR = "ENABLED";
    FD1S3IX counter_272__i4 (.D(n33[4]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i4.GSR = "ENABLED";
    FD1S3IX counter_272__i3 (.D(n33[3]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i3.GSR = "ENABLED";
    FD1S3IX counter_272__i2 (.D(n33[2]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i2.GSR = "ENABLED";
    FD1S3IX counter_272__i1 (.D(n33[1]), .CK(INTERNAL_OSC), .CD(n1173), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_272__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk), .B(n1173), .Z(clk_out_25mhz_N_16)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1821_4_lut (.A(counter[2]), .B(n12), .C(counter[6]), .D(counter[1]), 
         .Z(n1173)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/enact/projects/vga/clock_divider.v(10[13:25])
    defparam i1821_4_lut.init = 16'h0001;
    
endmodule
