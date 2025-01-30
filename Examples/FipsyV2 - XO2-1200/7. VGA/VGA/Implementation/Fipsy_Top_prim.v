// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jan 23 19:12:17 2025
//
// Verilog Description of module Fipsy_Top
//

module Fipsy_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN20, PIN19, 
            PIN18, PIN17, PIN14, LEDn) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(45[8:17])
    input PIN7;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[7:11])
    input PIN8;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[13:17])
    input PIN9;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[19:23])
    input PIN10;   // c:/users/enact/projects/vga/source/fipsy_top.v(51[25:30])
    output PIN11;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[49:54])
    output PIN20;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[8:13])
    output PIN19;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[15:20])
    output PIN18;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[22:27])
    output PIN17;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[29:34])
    output PIN14;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[36:41])
    output LEDn;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[43:47])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[49:54])
    wire INTERNAL_OSC /* synthesis is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(74[6:18])
    
    wire GND_net, PIN10_c, PIN7_c, PIN8_c, PIN9_c, PIN20_c, PIN19_c, 
        PIN18_c_0, PIN17_c_0, PIN14_c_0, LEDn_c_23, VCC_net;
    
    VHI i5 (.Z(VCC_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(INTERNAL_OSC)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133";
    VGA vga_inst (.PIN11_c(PIN11_c), .GND_net(GND_net), .LEDn_c_23(LEDn_c_23), 
        .PIN20_c(PIN20_c), .PIN19_c(PIN19_c), .PIN7_c(PIN7_c), .PIN10_c(PIN10_c), 
        .PIN9_c(PIN9_c), .PIN14_c_0(PIN14_c_0), .PIN17_c_0(PIN17_c_0), 
        .PIN18_c_0(PIN18_c_0), .PIN8_c(PIN8_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(188[5] 206[2])
    IB PIN10_pad (.I(PIN10), .O(PIN10_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[25:30])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    IB PIN9_pad (.I(PIN9), .O(PIN9_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[19:23])
    IB PIN8_pad (.I(PIN8), .O(PIN8_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[13:17])
    IB PIN7_pad (.I(PIN7), .O(PIN7_c));   // c:/users/enact/projects/vga/source/fipsy_top.v(51[7:11])
    OB LEDn_pad (.I(LEDn_c_23), .O(LEDn));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[43:47])
    OB PIN14_pad (.I(PIN14_c_0), .O(PIN14));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[36:41])
    GSR GSR_INST (.GSR(VCC_net));
    OB PIN17_pad (.I(PIN17_c_0), .O(PIN17));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[29:34])
    OB PIN18_pad (.I(PIN18_c_0), .O(PIN18));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[22:27])
    OB PIN19_pad (.I(PIN19_c), .O(PIN19));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[15:20])
    OB PIN20_pad (.I(PIN20_c), .O(PIN20));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[8:13])
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // c:/users/enact/projects/vga/source/fipsy_top.v(52[49:54])
    TSALL TSALL_INST (.TSALL(GND_net));
    pll Clk_25MHz_inst (.INTERNAL_OSC(INTERNAL_OSC), .PIN11_c(PIN11_c), 
        .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(135[5:54])
    
endmodule
//
// Verilog Description of module VGA
//

module VGA (PIN11_c, GND_net, LEDn_c_23, PIN20_c, PIN19_c, PIN7_c, 
            PIN10_c, PIN9_c, PIN14_c_0, PIN17_c_0, PIN18_c_0, PIN8_c) /* synthesis syn_module_defined=1 */ ;
    input PIN11_c;
    input GND_net;
    output LEDn_c_23;
    output PIN20_c;
    output PIN19_c;
    input PIN7_c;
    input PIN10_c;
    input PIN9_c;
    output PIN14_c_0;
    output PIN17_c_0;
    output PIN18_c_0;
    input PIN8_c;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[49:54])
    wire [9:0]ball_x;   // c:/users/enact/projects/vga/vga.v(42[15:21])
    
    wire ball_x_9__N_206, PIN11_c_enable_13;
    wire [9:0]n445;
    
    wire n1822;
    wire [9:0]ball_y;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    wire [9:0]ball_dy;   // c:/users/enact/projects/vga/vga.v(42[40:47])
    wire [9:0]n434;
    
    wire n1823, n1858;
    wire [23:0]led_count;   // c:/users/enact/projects/vga/vga.v(25[16:25])
    wire [23:0]n101;
    
    wire n1859, n1853, n1047, n2385;
    wire [9:0]paddle_left_y;   // c:/users/enact/projects/vga/vga.v(43[15:28])
    wire [9:0]paddle_left_y_9__N_119;
    
    wire n1854, n1809;
    wire [9:0]n1;
    wire [9:0]n259;
    wire [9:0]n18;
    
    wire n1810, n10, n1852, n19, n32, n28, n20, n1843, n1119;
    wire [9:0]paddle_right_y;   // c:/users/enact/projects/vga/vga.v(43[30:44])
    wire [9:0]paddle_right_y_9__N_129;
    
    wire n1844, n10_adj_270, n1505, n1821, n1129;
    wire [9:0]n624;
    
    wire n7, n2097;
    wire [9:0]column;   // c:/users/enact/projects/vga/vga.v(33[15:21])
    
    wire n1557, PIN11_c_enable_22;
    wire [9:0]n456;
    
    wire n1851, n1022, n1813, n1089, n1555, n1517, n2078, n1842, 
        n1094, n1884;
    wire [9:0]red_2__N_57;
    wire [9:0]red_2__N_68;
    
    wire n1885, n13, n1857, PIN11_c_enable_33;
    wire [9:0]n21;
    wire [9:0]red_2__N_153;
    
    wire n1979, n10_adj_272, n1868, n1883, n1882, n1878, n1877, 
        PIN11_c_enable_1, o_VGA_HSync_N_259, PIN11_c_enable_2, o_VGA_VSync_N_263, 
        n1930;
    wire [9:0]n468;
    wire [9:0]n22;
    wire [9:0]ball_dx;   // c:/users/enact/projects/vga/vga.v(42[31:38])
    wire [31:0]n527;
    wire [31:0]n876;
    
    wire n1867;
    wire [23:0]n177;
    
    wire n1876, n1866, n1875, n1865, n1874, n1864, n1873;
    wire [9:0]row;   // c:/users/enact/projects/vga/vga.v(33[23:26])
    wire [9:0]n35;
    
    wire n1929, n1863, n10_adj_279, n1872, n1940, n1928;
    wire [9:0]n303;
    
    wire n6_adj_280, n1834, n1871, n92, n2386, n2081, n6_adj_281, 
        n1870, n1927, n2382, n1925;
    wire [9:0]n655;
    wire [9:0]n23;
    
    wire n6_adj_284, n1939, n1957, n8, n1953;
    wire [9:0]red_2__N_164;
    
    wire n10_adj_285, n1924, n1818;
    wire [9:0]n422;
    
    wire n5_adj_288, n6_adj_289, n1923;
    wire [9:0]n314;
    
    wire n1838, n1922, n1812, n1921, n1920, n1837, n1811, n1862, 
        n1861, n1846;
    wire [1:0]game_state;   // c:/users/enact/projects/vga/vga.v(45[15:25])
    
    wire PIN11_c_enable_23;
    wire [1:0]game_state_1__N_217;
    
    wire n1845, n1149, n1807, n1808, n8_adj_298, n1869, n1830, 
        n2080, n1829, n1836, n1835, n1919, n1806, n1918, n1917, 
        n1805;
    wire [9:0]ball_y_9__N_207;
    
    wire n1817, n1239, n2101;
    wire [9:0]n909;
    
    wire n2103, n1828, n2102, n80;
    wire [9:0]ball_x_9__N_196;
    
    wire n1916, n1915, n1827, n1826, n1816, n1815, n1990, n1824, 
        n1804, n1914, n10_adj_299, n1860, n1913, n1912, n1911, 
        n1910, n1909, n1908, n1948, n2387, n2094, n2153, n2388, 
        n2141, n2379, n2380, n2390, n10_adj_303, n2389, n1074, 
        n1565, n1585, n2384, n2383, n2179, n12;
    wire [2:0]blue;   // c:/users/enact/projects/vga/vga.v(36[28:32])
    
    wire n1980, n1997, n1981, n10_adj_304, n1946, n10_adj_305, n6_adj_306, 
        n7_adj_307, n8_adj_308, n5_adj_309, n13_adj_310, n10_adj_311, 
        n1956, n2381, n1955, n14, n10_adj_312, n1855, n1972, n10_adj_316, 
        n29, n26, n2131, n7_adj_317, n8_adj_318, n1954, n5_adj_319, 
        n1583, n1976, n1907, n15_adj_320, n1581, n1986, n16, n1906, 
        n1905, n1904, n15_adj_321, n1987, n13_adj_322, n14_adj_323, 
        n1903, n15_adj_324, n13_adj_325, n1902, n1901;
    wire [9:0]n135;
    
    wire n1900, n1899, n1898, n1897, n1896, n15_adj_326, n13_adj_327;
    wire [9:0]n24;
    
    wire n10_adj_329, n1895, n1894, n2139, n1893, n1892, n1891, 
        n1890, n1889, n1888;
    wire [9:0]n270;
    
    wire n1887, n1886;
    
    FD1P3IX ball_x_i8 (.D(n445[8]), .SP(ball_x_9__N_206), .CD(PIN11_c_enable_13), 
            .CK(PIN11_c), .Q(ball_x[8])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i8.GSR = "ENABLED";
    CCU2D add_67_6 (.A0(ball_y[4]), .B0(ball_dy[4]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[5]), .B1(ball_dy[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1822), .COUT(n1823), .S0(n434[4]), .S1(n434[5]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_6.INIT0 = 16'h5666;
    defparam add_67_6.INIT1 = 16'h5666;
    defparam add_67_6.INJECT1_0 = "NO";
    defparam add_67_6.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_5 (.A0(led_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1858), .COUT(n1859), .S0(n101[3]), .S1(n101[4]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_5.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_5.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_5.INJECT1_0 = "NO";
    defparam led_count_235_add_4_5.INJECT1_1 = "NO";
    CCU2D add_230_7 (.A0(n1047), .B0(n2385), .C0(paddle_left_y[4]), .D0(GND_net), 
          .A1(n1047), .B1(n2385), .C1(paddle_left_y[5]), .D1(GND_net), 
          .CIN(n1853), .COUT(n1854), .S0(paddle_left_y_9__N_119[4]), .S1(paddle_left_y_9__N_119[5]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_230_7.INIT0 = 16'he1e1;
    defparam add_230_7.INIT1 = 16'he1e1;
    defparam add_230_7.INJECT1_0 = "NO";
    defparam add_230_7.INJECT1_1 = "NO";
    CCU2D unary_minus_152_add_3_3 (.A0(n1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1809), .COUT(n1810), .S0(n259[1]), .S1(n18[2]));
    defparam unary_minus_152_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_152_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_152_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_152_add_3_3.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(n259[0]), .B(n18[2]), .C(n259[1]), .Z(n10)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    CCU2D add_230_5 (.A0(n1047), .B0(n2385), .C0(paddle_left_y[2]), .D0(GND_net), 
          .A1(n1047), .B1(n2385), .C1(paddle_left_y[3]), .D1(GND_net), 
          .CIN(n1852), .COUT(n1853), .S0(paddle_left_y_9__N_119[2]), .S1(paddle_left_y_9__N_119[3]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_230_5.INIT0 = 16'he1e1;
    defparam add_230_5.INIT1 = 16'he1e1;
    defparam add_230_5.INJECT1_0 = "NO";
    defparam add_230_5.INJECT1_1 = "NO";
    LUT4 i16_4_lut_rep_21 (.A(n19), .B(n32), .C(n28), .D(n20), .Z(n2385)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i16_4_lut_rep_21.init = 16'hfffe;
    LUT4 equal_11_i34_1_lut_4_lut (.A(n19), .B(n32), .C(n28), .D(n20), 
         .Z(ball_x_9__N_206)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam equal_11_i34_1_lut_4_lut.init = 16'h0001;
    CCU2D add_233_5 (.A0(n1119), .B0(n2385), .C0(paddle_right_y[2]), .D0(GND_net), 
          .A1(n1119), .B1(n2385), .C1(paddle_right_y[3]), .D1(GND_net), 
          .CIN(n1843), .COUT(n1844), .S0(paddle_right_y_9__N_129[2]), 
          .S1(paddle_right_y_9__N_129[3]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_233_5.INIT0 = 16'he1e1;
    defparam add_233_5.INIT1 = 16'he1e1;
    defparam add_233_5.INJECT1_0 = "NO";
    defparam add_233_5.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(ball_y[4]), .B(ball_y[0]), .C(ball_y[9]), .D(ball_y[1]), 
         .Z(n10_adj_270)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1161_2_lut (.A(n1[0]), .B(n1[1]), .Z(n1505)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1161_2_lut.init = 16'h8888;
    CCU2D add_67_4 (.A0(ball_y[2]), .B0(ball_dy[2]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[3]), .B1(ball_dy[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1821), .COUT(n1822), .S0(n434[2]), .S1(n434[3]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_4.INIT0 = 16'h5666;
    defparam add_67_4.INIT1 = 16'h5666;
    defparam add_67_4.INJECT1_0 = "NO";
    defparam add_67_4.INJECT1_1 = "NO";
    FD1P3IX ball_x_i4 (.D(n624[4]), .SP(ball_x_9__N_206), .CD(n1129), 
            .CK(PIN11_c), .Q(ball_x[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i4.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_11 (.A(n7), .B(n2097), .C(column[4]), .D(column[9]), 
         .Z(n1557)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_11.init = 16'hfffe;
    FD1P3JX ball_y_i0 (.D(n456[0]), .SP(ball_x_9__N_206), .PD(PIN11_c_enable_22), 
            .CK(PIN11_c), .Q(ball_y[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i0.GSR = "ENABLED";
    FD1P3IX ball_x_i3 (.D(n624[3]), .SP(ball_x_9__N_206), .CD(n1129), 
            .CK(PIN11_c), .Q(ball_x[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i3.GSR = "ENABLED";
    FD1P3IX ball_x_i9 (.D(n624[9]), .SP(ball_x_9__N_206), .CD(n1129), 
            .CK(PIN11_c), .Q(ball_x[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i9.GSR = "ENABLED";
    CCU2D add_230_3 (.A0(paddle_left_y[0]), .B0(n1022), .C0(n1047), .D0(ball_x_9__N_206), 
          .A1(n1047), .B1(n2385), .C1(paddle_left_y[1]), .D1(GND_net), 
          .CIN(n1851), .COUT(n1852), .S0(paddle_left_y_9__N_119[0]), .S1(paddle_left_y_9__N_119[1]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_230_3.INIT0 = 16'h59aa;
    defparam add_230_3.INIT1 = 16'he1e1;
    defparam add_230_3.INJECT1_0 = "NO";
    defparam add_230_3.INJECT1_1 = "NO";
    CCU2D unary_minus_152_add_3_11 (.A0(n1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1813), .S0(n18[9]));
    defparam unary_minus_152_add_3_11.INIT0 = 16'hf555;
    defparam unary_minus_152_add_3_11.INIT1 = 16'h0000;
    defparam unary_minus_152_add_3_11.INJECT1_0 = "NO";
    defparam unary_minus_152_add_3_11.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n1089), .B(n1555), .C(n1517), .D(column[3]), .Z(n7)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    CCU2D add_230_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1047), .B1(n2385), .C1(GND_net), .D1(GND_net), .COUT(n1851));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_230_1.INIT0 = 16'hF000;
    defparam add_230_1.INIT1 = 16'heeee;
    defparam add_230_1.INJECT1_0 = "NO";
    defparam add_230_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(ball_y[8]), .B(ball_y[5]), .C(ball_y[7]), .Z(n2078)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D add_233_3 (.A0(paddle_right_y[0]), .B0(n1094), .C0(n1119), .D0(ball_x_9__N_206), 
          .A1(n1119), .B1(n2385), .C1(paddle_right_y[1]), .D1(GND_net), 
          .CIN(n1842), .COUT(n1843), .S0(paddle_right_y_9__N_129[0]), 
          .S1(paddle_right_y_9__N_129[1]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_233_3.INIT0 = 16'h59aa;
    defparam add_233_3.INIT1 = 16'he1e1;
    defparam add_233_3.INJECT1_0 = "NO";
    defparam add_233_3.INJECT1_1 = "NO";
    CCU2D add_1450_7 (.A0(red_2__N_57[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_57[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1884), .COUT(n1885), .S0(red_2__N_68[5]), 
          .S1(red_2__N_68[6]));
    defparam add_1450_7.INIT0 = 16'hf555;
    defparam add_1450_7.INIT1 = 16'hf555;
    defparam add_1450_7.INJECT1_0 = "NO";
    defparam add_1450_7.INJECT1_1 = "NO";
    FD1P3IX ball_x_i2 (.D(n624[2]), .SP(ball_x_9__N_206), .CD(n1129), 
            .CK(PIN11_c), .Q(ball_x[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i2.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(n1[6]), .B(n1[8]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    CCU2D led_count_235_add_4_3 (.A0(led_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1857), .COUT(n1858), .S0(n101[1]), .S1(n101[2]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_3.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_3.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_3.INJECT1_0 = "NO";
    defparam led_count_235_add_4_3.INJECT1_1 = "NO";
    FD1S3IX column_236__i9 (.D(n21[9]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i9.GSR = "ENABLED";
    CCU2D add_233_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1119), .B1(n2385), .C1(GND_net), .D1(GND_net), .COUT(n1842));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_233_1.INIT0 = 16'hF000;
    defparam add_233_1.INIT1 = 16'heeee;
    defparam add_233_1.INJECT1_0 = "NO";
    defparam add_233_1.INJECT1_1 = "NO";
    LUT4 i1211_4_lut (.A(red_2__N_153[5]), .B(n1979), .C(n10_adj_272), 
         .D(red_2__N_153[9]), .Z(n1555)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1211_4_lut.init = 16'hccc8;
    CCU2D led_count_235_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1857), .S1(n101[0]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_1.INIT0 = 16'hF000;
    defparam led_count_235_add_4_1.INIT1 = 16'h0555;
    defparam led_count_235_add_4_1.INJECT1_0 = "NO";
    defparam led_count_235_add_4_1.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_25 (.A0(LEDn_c_23), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1868), .S0(n101[23]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_25.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_25.INIT1 = 16'h0000;
    defparam led_count_235_add_4_25.INJECT1_0 = "NO";
    defparam led_count_235_add_4_25.INJECT1_1 = "NO";
    CCU2D add_1450_5 (.A0(red_2__N_57[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_57[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1883), .COUT(n1884), .S0(red_2__N_68[3]), 
          .S1(red_2__N_68[4]));
    defparam add_1450_5.INIT0 = 16'hf555;
    defparam add_1450_5.INIT1 = 16'hf555;
    defparam add_1450_5.INJECT1_0 = "NO";
    defparam add_1450_5.INJECT1_1 = "NO";
    CCU2D add_1450_3 (.A0(red_2__N_57[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_57[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1882), .COUT(n1883), .S0(red_2__N_68[1]), 
          .S1(red_2__N_68[2]));
    defparam add_1450_3.INIT0 = 16'hf555;
    defparam add_1450_3.INIT1 = 16'hf555;
    defparam add_1450_3.INJECT1_0 = "NO";
    defparam add_1450_3.INJECT1_1 = "NO";
    CCU2D add_1450_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(red_2__N_57[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1882));
    defparam add_1450_1.INIT0 = 16'hF000;
    defparam add_1450_1.INIT1 = 16'h0aaa;
    defparam add_1450_1.INJECT1_0 = "NO";
    defparam add_1450_1.INJECT1_1 = "NO";
    CCU2D column_236_add_4_11 (.A0(column[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1878), .S0(n21[9]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236_add_4_11.INIT0 = 16'hfaaa;
    defparam column_236_add_4_11.INIT1 = 16'h0000;
    defparam column_236_add_4_11.INJECT1_0 = "NO";
    defparam column_236_add_4_11.INJECT1_1 = "NO";
    FD1S3IX column_236__i8 (.D(n21[8]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i8.GSR = "ENABLED";
    FD1S3IX column_236__i7 (.D(n21[7]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i7.GSR = "ENABLED";
    FD1S3IX column_236__i6 (.D(n21[6]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i6.GSR = "ENABLED";
    CCU2D column_236_add_4_9 (.A0(column[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1877), .COUT(n1878), .S0(n21[7]), .S1(n21[8]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236_add_4_9.INIT0 = 16'hfaaa;
    defparam column_236_add_4_9.INIT1 = 16'hfaaa;
    defparam column_236_add_4_9.INJECT1_0 = "NO";
    defparam column_236_add_4_9.INJECT1_1 = "NO";
    FD1S3IX column_236__i5 (.D(n21[5]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i5.GSR = "ENABLED";
    FD1S3IX column_236__i4 (.D(n21[4]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i4.GSR = "ENABLED";
    FD1S3IX column_236__i3 (.D(n21[3]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i3.GSR = "ENABLED";
    FD1S3IX column_236__i2 (.D(n21[2]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i2.GSR = "ENABLED";
    FD1P3AY hsync_156 (.D(o_VGA_HSync_N_259), .SP(PIN11_c_enable_1), .CK(PIN11_c), 
            .Q(PIN20_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam hsync_156.GSR = "ENABLED";
    FD1P3AY vsync_157 (.D(o_VGA_VSync_N_263), .SP(PIN11_c_enable_2), .CK(PIN11_c), 
            .Q(PIN19_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam vsync_157.GSR = "ENABLED";
    CCU2D add_1448_9 (.A0(n468[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1930), 
          .S0(n22[8]), .S1(n22[9]));
    defparam add_1448_9.INIT0 = 16'hf555;
    defparam add_1448_9.INIT1 = 16'hf555;
    defparam add_1448_9.INJECT1_0 = "NO";
    defparam add_1448_9.INJECT1_1 = "NO";
    FD1P3AY ball_dx_i0 (.D(n527[0]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i0.GSR = "ENABLED";
    FD1S3IX column_236__i1 (.D(n21[1]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i1.GSR = "ENABLED";
    FD1P3AY ball_dy_i0 (.D(n876[0]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i0.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i0 (.D(paddle_left_y_9__N_119[0]), .CK(PIN11_c), 
            .Q(paddle_left_y[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i0.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i0 (.D(paddle_right_y_9__N_129[0]), .CK(PIN11_c), 
            .Q(paddle_right_y[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i0.GSR = "ENABLED";
    CCU2D led_count_235_add_4_23 (.A0(n177[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1867), .COUT(n1868), .S0(n101[21]), .S1(n101[22]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_23.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_23.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_23.INJECT1_0 = "NO";
    defparam led_count_235_add_4_23.INJECT1_1 = "NO";
    CCU2D column_236_add_4_7 (.A0(column[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1876), .COUT(n1877), .S0(n21[5]), .S1(n21[6]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236_add_4_7.INIT0 = 16'hfaaa;
    defparam column_236_add_4_7.INIT1 = 16'hfaaa;
    defparam column_236_add_4_7.INJECT1_0 = "NO";
    defparam column_236_add_4_7.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_21 (.A0(n177[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1866), .COUT(n1867), .S0(n101[19]), .S1(n101[20]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_21.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_21.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_21.INJECT1_0 = "NO";
    defparam led_count_235_add_4_21.INJECT1_1 = "NO";
    CCU2D column_236_add_4_5 (.A0(column[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1875), .COUT(n1876), .S0(n21[3]), .S1(n21[4]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236_add_4_5.INIT0 = 16'hfaaa;
    defparam column_236_add_4_5.INIT1 = 16'hfaaa;
    defparam column_236_add_4_5.INJECT1_0 = "NO";
    defparam column_236_add_4_5.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_19 (.A0(n177[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n177[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1865), .COUT(n1866), .S0(n101[17]), .S1(n101[18]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_19.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_19.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_19.INJECT1_0 = "NO";
    defparam led_count_235_add_4_19.INJECT1_1 = "NO";
    CCU2D column_236_add_4_3 (.A0(column[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1874), .COUT(n1875), .S0(n21[1]), .S1(n21[2]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236_add_4_3.INIT0 = 16'hfaaa;
    defparam column_236_add_4_3.INIT1 = 16'hfaaa;
    defparam column_236_add_4_3.INJECT1_0 = "NO";
    defparam column_236_add_4_3.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_17 (.A0(led_count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1864), .COUT(n1865), .S0(n101[15]), .S1(n101[16]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_17.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_17.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_17.INJECT1_0 = "NO";
    defparam led_count_235_add_4_17.INJECT1_1 = "NO";
    CCU2D column_236_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(column[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1874), .S1(n21[0]));   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236_add_4_1.INIT0 = 16'hF000;
    defparam column_236_add_4_1.INIT1 = 16'h0555;
    defparam column_236_add_4_1.INJECT1_0 = "NO";
    defparam column_236_add_4_1.INJECT1_1 = "NO";
    CCU2D row_234_add_4_11 (.A0(row[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1873), 
          .S0(n35[9]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234_add_4_11.INIT0 = 16'hfaaa;
    defparam row_234_add_4_11.INIT1 = 16'h0000;
    defparam row_234_add_4_11.INJECT1_0 = "NO";
    defparam row_234_add_4_11.INJECT1_1 = "NO";
    FD1P3AX ball_dx_i1 (.D(n527[1]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i1.GSR = "ENABLED";
    FD1P3AX ball_dx_i2 (.D(n527[2]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i2.GSR = "ENABLED";
    FD1P3AX ball_dx_i3 (.D(n527[3]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i3.GSR = "ENABLED";
    FD1P3AX ball_dx_i4 (.D(n527[4]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i4.GSR = "ENABLED";
    FD1P3AX ball_dx_i5 (.D(n527[5]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i5.GSR = "ENABLED";
    FD1P3AX ball_dx_i6 (.D(n527[6]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i6.GSR = "ENABLED";
    FD1P3AX ball_dx_i7 (.D(n527[7]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i7.GSR = "ENABLED";
    FD1P3AX ball_dx_i8 (.D(n527[8]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i8.GSR = "ENABLED";
    FD1P3AX ball_dx_i9 (.D(n527[9]), .SP(PIN11_c_enable_13), .CK(PIN11_c), 
            .Q(ball_dx[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dx_i9.GSR = "ENABLED";
    FD1P3AX ball_dy_i1 (.D(n876[1]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i1.GSR = "ENABLED";
    FD1P3AX ball_dy_i2 (.D(n876[2]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i2.GSR = "ENABLED";
    FD1P3AX ball_dy_i3 (.D(n876[3]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i3.GSR = "ENABLED";
    FD1P3AX ball_dy_i4 (.D(n876[4]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i4.GSR = "ENABLED";
    FD1P3AX ball_dy_i5 (.D(n876[5]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i5.GSR = "ENABLED";
    FD1P3AX ball_dy_i6 (.D(n876[6]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i6.GSR = "ENABLED";
    FD1P3AX ball_dy_i7 (.D(n876[7]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i7.GSR = "ENABLED";
    FD1P3AX ball_dy_i8 (.D(n876[8]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i8.GSR = "ENABLED";
    FD1P3AX ball_dy_i9 (.D(n876[9]), .SP(PIN11_c_enable_22), .CK(PIN11_c), 
            .Q(ball_dy[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_dy_i9.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i1 (.D(paddle_left_y_9__N_119[1]), .CK(PIN11_c), 
            .Q(paddle_left_y[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i1.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i2 (.D(paddle_left_y_9__N_119[2]), .CK(PIN11_c), 
            .Q(paddle_left_y[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i2.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i3 (.D(paddle_left_y_9__N_119[3]), .CK(PIN11_c), 
            .Q(paddle_left_y[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i3.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i4 (.D(paddle_left_y_9__N_119[4]), .CK(PIN11_c), 
            .Q(paddle_left_y[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i4.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i5 (.D(paddle_left_y_9__N_119[5]), .CK(PIN11_c), 
            .Q(paddle_left_y[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i5.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i6 (.D(paddle_left_y_9__N_119[6]), .CK(PIN11_c), 
            .Q(paddle_left_y[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i6.GSR = "ENABLED";
    FD1S3AY paddle_left_y_i7 (.D(paddle_left_y_9__N_119[7]), .CK(PIN11_c), 
            .Q(paddle_left_y[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i7.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i8 (.D(paddle_left_y_9__N_119[8]), .CK(PIN11_c), 
            .Q(paddle_left_y[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i8.GSR = "ENABLED";
    FD1S3AX paddle_left_y_i9 (.D(paddle_left_y_9__N_119[9]), .CK(PIN11_c), 
            .Q(paddle_left_y[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_left_y_i9.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i1 (.D(paddle_right_y_9__N_129[1]), .CK(PIN11_c), 
            .Q(paddle_right_y[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i1.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i2 (.D(paddle_right_y_9__N_129[2]), .CK(PIN11_c), 
            .Q(paddle_right_y[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i2.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i3 (.D(paddle_right_y_9__N_129[3]), .CK(PIN11_c), 
            .Q(paddle_right_y[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i3.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i4 (.D(paddle_right_y_9__N_129[4]), .CK(PIN11_c), 
            .Q(paddle_right_y[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i4.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i5 (.D(paddle_right_y_9__N_129[5]), .CK(PIN11_c), 
            .Q(paddle_right_y[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i5.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i6 (.D(paddle_right_y_9__N_129[6]), .CK(PIN11_c), 
            .Q(paddle_right_y[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i6.GSR = "ENABLED";
    FD1S3AY paddle_right_y_i7 (.D(paddle_right_y_9__N_129[7]), .CK(PIN11_c), 
            .Q(paddle_right_y[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i7.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i8 (.D(paddle_right_y_9__N_129[8]), .CK(PIN11_c), 
            .Q(paddle_right_y[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i8.GSR = "ENABLED";
    FD1S3AX paddle_right_y_i9 (.D(paddle_right_y_9__N_129[9]), .CK(PIN11_c), 
            .Q(paddle_right_y[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam paddle_right_y_i9.GSR = "ENABLED";
    CCU2D add_1448_7 (.A0(n468[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1929), 
          .COUT(n1930), .S0(n22[6]), .S1(n22[7]));
    defparam add_1448_7.INIT0 = 16'hf555;
    defparam add_1448_7.INIT1 = 16'hf555;
    defparam add_1448_7.INJECT1_0 = "NO";
    defparam add_1448_7.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_15 (.A0(led_count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1863), .COUT(n1864), .S0(n101[13]), .S1(n101[14]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_15.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_15.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_15.INJECT1_0 = "NO";
    defparam led_count_235_add_4_15.INJECT1_1 = "NO";
    LUT4 i116_4_lut (.A(PIN7_c), .B(paddle_left_y[9]), .C(n10_adj_279), 
         .D(paddle_left_y[7]), .Z(n1022)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(169[17:62])
    defparam i116_4_lut.init = 16'haaa8;
    CCU2D row_234_add_4_9 (.A0(row[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1872), 
          .COUT(n1873), .S0(n35[7]), .S1(n35[8]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234_add_4_9.INIT0 = 16'hfaaa;
    defparam row_234_add_4_9.INIT1 = 16'hfaaa;
    defparam row_234_add_4_9.INJECT1_0 = "NO";
    defparam row_234_add_4_9.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_12 (.A(paddle_left_y[6]), .B(paddle_left_y[5]), .C(n1940), 
         .D(paddle_left_y[8]), .Z(n10_adj_279)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_12.init = 16'hfffe;
    CCU2D add_1448_5 (.A0(n468[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1928), 
          .COUT(n1929), .S0(n303[4]), .S1(n22[5]));
    defparam add_1448_5.INIT0 = 16'hf555;
    defparam add_1448_5.INIT1 = 16'hf555;
    defparam add_1448_5.INJECT1_0 = "NO";
    defparam add_1448_5.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_13 (.A(paddle_left_y[2]), .B(paddle_left_y[4]), .C(paddle_left_y[0]), 
         .D(n6_adj_280), .Z(n1940)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_13.init = 16'h8000;
    CCU2D add_1451_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(red_2__N_153[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1834));
    defparam add_1451_1.INIT0 = 16'hF000;
    defparam add_1451_1.INIT1 = 16'h0aaa;
    defparam add_1451_1.INJECT1_0 = "NO";
    defparam add_1451_1.INJECT1_1 = "NO";
    CCU2D add_67_2 (.A0(ball_y[0]), .B0(ball_dy[0]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[1]), .B1(ball_dy[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1821), .S1(n434[1]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_2.INIT0 = 16'h7000;
    defparam add_67_2.INIT1 = 16'h5666;
    defparam add_67_2.INJECT1_0 = "NO";
    defparam add_67_2.INJECT1_1 = "NO";
    CCU2D row_234_add_4_7 (.A0(row[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1871), 
          .COUT(n1872), .S0(n35[5]), .S1(n35[6]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234_add_4_7.INIT0 = 16'hfaaa;
    defparam row_234_add_4_7.INIT1 = 16'hfaaa;
    defparam row_234_add_4_7.INJECT1_0 = "NO";
    defparam row_234_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(paddle_left_y[3]), .B(paddle_left_y[1]), .Z(n6_adj_280)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_22 (.A(ball_y[6]), .B(n92), .C(n2078), .Z(n2386)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut_rep_22.init = 16'hdfdf;
    LUT4 i1719_4_lut (.A(column[8]), .B(n2081), .C(n1089), .D(n6_adj_281), 
         .Z(PIN11_c_enable_33)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(122[13:46])
    defparam i1719_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_adj_14 (.A(column[7]), .B(column[4]), .Z(n6_adj_281)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/enact/projects/vga/vga.v(122[13:46])
    defparam i1_2_lut_adj_14.init = 16'hbbbb;
    CCU2D row_234_add_4_5 (.A0(row[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1870), 
          .COUT(n1871), .S0(n35[3]), .S1(n35[4]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234_add_4_5.INIT0 = 16'hfaaa;
    defparam row_234_add_4_5.INIT1 = 16'hfaaa;
    defparam row_234_add_4_5.INJECT1_0 = "NO";
    defparam row_234_add_4_5.INJECT1_1 = "NO";
    CCU2D add_1448_3 (.A0(n468[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1927), 
          .COUT(n1928), .S0(n303[2]), .S1(n303[3]));
    defparam add_1448_3.INIT0 = 16'hf555;
    defparam add_1448_3.INIT1 = 16'hf555;
    defparam add_1448_3.INJECT1_0 = "NO";
    defparam add_1448_3.INJECT1_1 = "NO";
    LUT4 i1712_2_lut_2_lut (.A(n2382), .B(n2385), .Z(PIN11_c_enable_22)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1712_2_lut_2_lut.init = 16'h1111;
    CCU2D add_1448_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[0]), .B1(n468[1]), .C1(GND_net), .D1(GND_net), .COUT(n1927), 
          .S1(n303[1]));
    defparam add_1448_1.INIT0 = 16'hF000;
    defparam add_1448_1.INIT1 = 16'ha666;
    defparam add_1448_1.INJECT1_0 = "NO";
    defparam add_1448_1.INJECT1_1 = "NO";
    CCU2D add_1449_9 (.A0(n655[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1925), 
          .S0(n23[8]), .S1(n23[9]));
    defparam add_1449_9.INIT0 = 16'hf555;
    defparam add_1449_9.INIT1 = 16'hf555;
    defparam add_1449_9.INJECT1_0 = "NO";
    defparam add_1449_9.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_15 (.A(paddle_right_y[2]), .B(paddle_right_y[4]), 
         .C(paddle_right_y[0]), .D(n6_adj_284), .Z(n1939)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_15.init = 16'h8000;
    LUT4 i4_4_lut_adj_16 (.A(n1957), .B(red_2__N_153[6]), .C(red_2__N_153[8]), 
         .D(red_2__N_153[7]), .Z(n10_adj_272)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_16.init = 16'hfffe;
    LUT4 i3_3_lut (.A(paddle_left_y[3]), .B(paddle_left_y[1]), .C(paddle_left_y[2]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_17 (.A(n1953), .B(red_2__N_164[6]), .C(red_2__N_164[8]), 
         .D(red_2__N_164[7]), .Z(n10_adj_285)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_17.init = 16'hfffe;
    FD1S3IX column_236__i0 (.D(n21[0]), .CK(PIN11_c), .CD(PIN11_c_enable_33), 
            .Q(column[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(114[19:29])
    defparam column_236__i0.GSR = "ENABLED";
    CCU2D add_1449_7 (.A0(n655[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1924), 
          .COUT(n1925), .S0(n23[6]), .S1(n23[7]));
    defparam add_1449_7.INIT0 = 16'hf555;
    defparam add_1449_7.INIT1 = 16'hf555;
    defparam add_1449_7.INJECT1_0 = "NO";
    defparam add_1449_7.INJECT1_1 = "NO";
    CCU2D add_66_10 (.A0(ball_x[8]), .B0(ball_dx[8]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[9]), .B1(ball_dx[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1818), .S0(n422[8]), .S1(n422[9]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_10.INIT0 = 16'h5666;
    defparam add_66_10.INIT1 = 16'h5666;
    defparam add_66_10.INJECT1_0 = "NO";
    defparam add_66_10.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_18 (.A(paddle_right_y[9]), .B(PIN10_c), .C(n5_adj_288), 
         .D(n6_adj_289), .Z(n1119)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut_adj_18.init = 16'h0444;
    LUT4 i3_4_lut (.A(red_2__N_164[1]), .B(red_2__N_164[2]), .C(red_2__N_164[3]), 
         .D(red_2__N_164[4]), .Z(n1953)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    CCU2D add_1449_5 (.A0(n655[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1923), 
          .COUT(n1924), .S0(n314[4]), .S1(n23[5]));
    defparam add_1449_5.INIT0 = 16'hf555;
    defparam add_1449_5.INIT1 = 16'hf555;
    defparam add_1449_5.INJECT1_0 = "NO";
    defparam add_1449_5.INJECT1_1 = "NO";
    CCU2D add_1451_11 (.A0(red_2__N_153[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1838), .S0(red_2__N_164[9]));
    defparam add_1451_11.INIT0 = 16'hf555;
    defparam add_1451_11.INIT1 = 16'h0000;
    defparam add_1451_11.INJECT1_0 = "NO";
    defparam add_1451_11.INJECT1_1 = "NO";
    CCU2D add_1449_3 (.A0(n655[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1922), 
          .COUT(n1923), .S0(n314[2]), .S1(n314[3]));
    defparam add_1449_3.INIT0 = 16'hf555;
    defparam add_1449_3.INIT1 = 16'hf555;
    defparam add_1449_3.INJECT1_0 = "NO";
    defparam add_1449_3.INJECT1_1 = "NO";
    CCU2D unary_minus_152_add_3_9 (.A0(n1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1812), .COUT(n1813), .S0(n18[7]), .S1(n18[8]));
    defparam unary_minus_152_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_152_add_3_9.INIT1 = 16'hf555;
    defparam unary_minus_152_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_152_add_3_9.INJECT1_1 = "NO";
    CCU2D add_1449_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n655[0]), .B1(n655[1]), .C1(GND_net), .D1(GND_net), .COUT(n1922), 
          .S1(n314[1]));
    defparam add_1449_1.INIT0 = 16'hF000;
    defparam add_1449_1.INIT1 = 16'ha666;
    defparam add_1449_1.INJECT1_0 = "NO";
    defparam add_1449_1.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_11 (.A0(ball_y[9]), .B0(paddle_left_y[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1921), .S0(n655[9]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_11.INIT0 = 16'h5999;
    defparam sub_88_add_2_11.INIT1 = 16'h0000;
    defparam sub_88_add_2_11.INJECT1_0 = "NO";
    defparam sub_88_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_9 (.A0(ball_y[7]), .B0(paddle_left_y[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[8]), .B1(paddle_left_y[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1920), .COUT(n1921), .S0(n655[7]), .S1(n655[8]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_9.INIT0 = 16'h5999;
    defparam sub_88_add_2_9.INIT1 = 16'h5999;
    defparam sub_88_add_2_9.INJECT1_0 = "NO";
    defparam sub_88_add_2_9.INJECT1_1 = "NO";
    CCU2D add_1451_9 (.A0(red_2__N_153[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_153[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1837), .COUT(n1838), .S0(red_2__N_164[7]), 
          .S1(red_2__N_164[8]));
    defparam add_1451_9.INIT0 = 16'hf555;
    defparam add_1451_9.INIT1 = 16'hf555;
    defparam add_1451_9.INJECT1_0 = "NO";
    defparam add_1451_9.INJECT1_1 = "NO";
    CCU2D unary_minus_152_add_3_7 (.A0(n1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1811), .COUT(n1812), .S0(n18[5]), .S1(n18[6]));
    defparam unary_minus_152_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_152_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_152_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_152_add_3_7.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_13 (.A0(led_count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1862), .COUT(n1863), .S0(n101[11]), .S1(n101[12]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_13.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_13.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_13.INJECT1_0 = "NO";
    defparam led_count_235_add_4_13.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_11 (.A0(led_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1861), .COUT(n1862), .S0(n101[9]), .S1(n101[10]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_11.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_11.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_11.INJECT1_0 = "NO";
    defparam led_count_235_add_4_11.INJECT1_1 = "NO";
    CCU2D add_233_11 (.A0(n1119), .B0(n2385), .C0(paddle_right_y[8]), 
          .D0(GND_net), .A1(n1119), .B1(n2385), .C1(paddle_right_y[9]), 
          .D1(GND_net), .CIN(n1846), .S0(paddle_right_y_9__N_129[8]), 
          .S1(paddle_right_y_9__N_129[9]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_233_11.INIT0 = 16'he1e1;
    defparam add_233_11.INIT1 = 16'he1e1;
    defparam add_233_11.INJECT1_0 = "NO";
    defparam add_233_11.INJECT1_1 = "NO";
    FD1S3AX led_count_235__i23 (.D(n101[23]), .CK(PIN11_c), .Q(LEDn_c_23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i23.GSR = "ENABLED";
    FD1P3AX game_state__i1 (.D(game_state_1__N_217[0]), .SP(PIN11_c_enable_23), 
            .CK(PIN11_c), .Q(game_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam game_state__i1.GSR = "ENABLED";
    CCU2D add_233_9 (.A0(n1119), .B0(n2385), .C0(paddle_right_y[6]), .D0(GND_net), 
          .A1(n1119), .B1(n2385), .C1(paddle_right_y[7]), .D1(GND_net), 
          .CIN(n1845), .COUT(n1846), .S0(paddle_right_y_9__N_129[6]), 
          .S1(paddle_right_y_9__N_129[7]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_233_9.INIT0 = 16'he1e1;
    defparam add_233_9.INIT1 = 16'he1e1;
    defparam add_233_9.INJECT1_0 = "NO";
    defparam add_233_9.INJECT1_1 = "NO";
    FD1P3IX row_234__i2 (.D(n35[2]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i2.GSR = "ENABLED";
    FD1P3IX row_234__i1 (.D(n35[1]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i1.GSR = "ENABLED";
    CCU2D add_185_9 (.A0(ball_dx[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1807), .COUT(n1808), .S0(n527[7]), .S1(n527[8]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_9.INIT0 = 16'ha555;
    defparam add_185_9.INIT1 = 16'ha555;
    defparam add_185_9.INJECT1_0 = "NO";
    defparam add_185_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(paddle_right_y[4]), .B(paddle_right_y[7]), .C(n8_adj_298), 
         .D(paddle_right_y[5]), .Z(n5_adj_288)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    CCU2D row_234_add_4_3 (.A0(row[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1869), 
          .COUT(n1870), .S0(n35[1]), .S1(n35[2]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234_add_4_3.INIT0 = 16'hfaaa;
    defparam row_234_add_4_3.INIT1 = 16'hfaaa;
    defparam row_234_add_4_3.INJECT1_0 = "NO";
    defparam row_234_add_4_3.INJECT1_1 = "NO";
    CCU2D add_186_11 (.A0(ball_dy[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1830), 
          .S0(n876[9]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_11.INIT0 = 16'ha555;
    defparam add_186_11.INIT1 = 16'h0000;
    defparam add_186_11.INJECT1_0 = "NO";
    defparam add_186_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_19 (.A(n2080), .B(column[3]), .C(column[9]), .Z(n2081)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_19.init = 16'h8080;
    CCU2D add_186_9 (.A0(ball_dy[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1829), .COUT(n1830), .S0(n876[7]), .S1(n876[8]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_9.INIT0 = 16'ha555;
    defparam add_186_9.INIT1 = 16'ha555;
    defparam add_186_9.INJECT1_0 = "NO";
    defparam add_186_9.INJECT1_1 = "NO";
    FD1P3IX row_234__i3 (.D(n35[3]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i3.GSR = "ENABLED";
    FD1P3IX row_234__i4 (.D(n35[4]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i4.GSR = "ENABLED";
    FD1P3IX row_234__i5 (.D(n35[5]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i5.GSR = "ENABLED";
    CCU2D add_1451_7 (.A0(red_2__N_153[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_153[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1836), .COUT(n1837), .S0(red_2__N_164[5]), 
          .S1(red_2__N_164[6]));
    defparam add_1451_7.INIT0 = 16'hf555;
    defparam add_1451_7.INIT1 = 16'hf555;
    defparam add_1451_7.INJECT1_0 = "NO";
    defparam add_1451_7.INJECT1_1 = "NO";
    CCU2D add_1451_5 (.A0(red_2__N_153[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_153[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1835), .COUT(n1836), .S0(red_2__N_164[3]), 
          .S1(red_2__N_164[4]));
    defparam add_1451_5.INIT0 = 16'hf555;
    defparam add_1451_5.INIT1 = 16'hf555;
    defparam add_1451_5.INJECT1_0 = "NO";
    defparam add_1451_5.INJECT1_1 = "NO";
    FD1P3IX row_234__i6 (.D(n35[6]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i6.GSR = "ENABLED";
    CCU2D sub_88_add_2_7 (.A0(ball_y[5]), .B0(paddle_left_y[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[6]), .B1(paddle_left_y[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1919), .COUT(n1920), .S0(n655[5]), .S1(n655[6]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_7.INIT0 = 16'h5999;
    defparam sub_88_add_2_7.INIT1 = 16'h5999;
    defparam sub_88_add_2_7.INJECT1_0 = "NO";
    defparam sub_88_add_2_7.INJECT1_1 = "NO";
    CCU2D add_185_7 (.A0(ball_dx[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1806), .COUT(n1807), .S0(n527[5]), .S1(n527[6]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_7.INIT0 = 16'ha555;
    defparam add_185_7.INIT1 = 16'ha555;
    defparam add_185_7.INJECT1_0 = "NO";
    defparam add_185_7.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_5 (.A0(ball_y[3]), .B0(paddle_left_y[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[4]), .B1(paddle_left_y[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1918), .COUT(n1919), .S0(n655[3]), .S1(n655[4]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_5.INIT0 = 16'h5999;
    defparam sub_88_add_2_5.INIT1 = 16'h5999;
    defparam sub_88_add_2_5.INJECT1_0 = "NO";
    defparam sub_88_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_3 (.A0(ball_y[1]), .B0(paddle_left_y[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[2]), .B1(paddle_left_y[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1917), .COUT(n1918), .S0(n655[1]), .S1(n655[2]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_3.INIT0 = 16'h5999;
    defparam sub_88_add_2_3.INIT1 = 16'h5999;
    defparam sub_88_add_2_3.INJECT1_0 = "NO";
    defparam sub_88_add_2_3.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_20 (.A(red_2__N_153[1]), .B(red_2__N_153[2]), .C(red_2__N_153[3]), 
         .D(red_2__N_153[4]), .Z(n1957)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_20.init = 16'h8000;
    FD1P3IX row_234__i8 (.D(n35[8]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i8.GSR = "ENABLED";
    FD1P3IX row_234__i9 (.D(n35[9]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i9.GSR = "ENABLED";
    FD1P3IX row_234__i7 (.D(n35[7]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i7.GSR = "ENABLED";
    CCU2D unary_minus_152_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1809), .S1(n259[0]));
    defparam unary_minus_152_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_152_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_152_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_152_add_3_1.INJECT1_1 = "NO";
    CCU2D add_185_5 (.A0(ball_dx[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1805), .COUT(n1806), .S0(n527[3]), .S1(n527[4]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_5.INIT0 = 16'ha555;
    defparam add_185_5.INIT1 = 16'ha555;
    defparam add_185_5.INJECT1_0 = "NO";
    defparam add_185_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_21 (.A(column[6]), .B(column[5]), .Z(n1089)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(122[13:46])
    defparam i1_2_lut_adj_21.init = 16'heeee;
    FD1P3IX row_234__i0 (.D(n35[0]), .SP(PIN11_c_enable_33), .CD(n1149), 
            .CK(PIN11_c), .Q(row[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234__i0.GSR = "ENABLED";
    FD1P3AX ball_y_i9 (.D(ball_y_9__N_207[9]), .SP(ball_x_9__N_206), .CK(PIN11_c), 
            .Q(ball_y[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i9.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_22 (.A(column[1]), .B(column[2]), .C(column[0]), 
         .Z(n2080)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_22.init = 16'h8080;
    CCU2D add_66_8 (.A0(ball_x[6]), .B0(ball_dx[6]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[7]), .B1(ball_dx[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1817), .COUT(n1818), .S0(n422[6]), .S1(n422[7]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_8.INIT0 = 16'h5666;
    defparam add_66_8.INIT1 = 16'h5666;
    defparam add_66_8.INJECT1_0 = "NO";
    defparam add_66_8.INJECT1_1 = "NO";
    FD1P3IX ball_y_i5 (.D(n456[5]), .SP(ball_x_9__N_206), .CD(PIN11_c_enable_22), 
            .CK(PIN11_c), .Q(ball_y[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i5.GSR = "ENABLED";
    FD1P3IX ball_y_i4 (.D(n2101), .SP(ball_x_9__N_206), .CD(n1239), .CK(PIN11_c), 
            .Q(ball_y[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i4.GSR = "ENABLED";
    FD1P3IX ball_y_i3 (.D(n909[3]), .SP(ball_x_9__N_206), .CD(n1239), 
            .CK(PIN11_c), .Q(ball_y[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i3.GSR = "ENABLED";
    FD1P3IX ball_y_i7 (.D(n2103), .SP(ball_x_9__N_206), .CD(n1239), .CK(PIN11_c), 
            .Q(ball_y[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(game_state[0]), .B(n2386), .C(n434[4]), .Z(n2101)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf7f7;
    CCU2D add_186_7 (.A0(ball_dy[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1828), .COUT(n1829), .S0(n876[5]), .S1(n876[6]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_7.INIT0 = 16'ha555;
    defparam add_186_7.INIT1 = 16'ha555;
    defparam add_186_7.INJECT1_0 = "NO";
    defparam add_186_7.INJECT1_1 = "NO";
    FD1P3IX ball_y_i8 (.D(n909[8]), .SP(ball_x_9__N_206), .CD(n1239), 
            .CK(PIN11_c), .Q(ball_y[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i8.GSR = "ENABLED";
    FD1P3IX ball_y_i6 (.D(n2102), .SP(ball_x_9__N_206), .CD(n1239), .CK(PIN11_c), 
            .Q(ball_y[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i6.GSR = "ENABLED";
    FD1P3IX ball_y_i2 (.D(n80), .SP(ball_x_9__N_206), .CD(n1239), .CK(PIN11_c), 
            .Q(ball_y[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i2.GSR = "ENABLED";
    FD1P3AX ball_x_i7 (.D(ball_x_9__N_196[7]), .SP(ball_x_9__N_206), .CK(PIN11_c), 
            .Q(ball_x[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i7.GSR = "ENABLED";
    CCU2D sub_88_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[0]), .B1(paddle_left_y[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1917), .S1(n655[0]));   // c:/users/enact/projects/vga/vga.v(151[21:43])
    defparam sub_88_add_2_1.INIT0 = 16'h0000;
    defparam sub_88_add_2_1.INIT1 = 16'h5999;
    defparam sub_88_add_2_1.INJECT1_0 = "NO";
    defparam sub_88_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_11 (.A0(ball_y[9]), .B0(paddle_right_y[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1916), .S0(n468[9]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_11.INIT0 = 16'h5999;
    defparam sub_71_add_2_11.INIT1 = 16'h0000;
    defparam sub_71_add_2_11.INJECT1_0 = "NO";
    defparam sub_71_add_2_11.INJECT1_1 = "NO";
    FD1P3IX ball_x_i1 (.D(n624[1]), .SP(ball_x_9__N_206), .CD(n1129), 
            .CK(PIN11_c), .Q(ball_x[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i1.GSR = "ENABLED";
    CCU2D sub_71_add_2_9 (.A0(ball_y[7]), .B0(paddle_right_y[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[8]), .B1(paddle_right_y[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1915), .COUT(n1916), .S0(n468[7]), .S1(n468[8]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_9.INIT0 = 16'h5999;
    defparam sub_71_add_2_9.INIT1 = 16'h5999;
    defparam sub_71_add_2_9.INJECT1_0 = "NO";
    defparam sub_71_add_2_9.INJECT1_1 = "NO";
    CCU2D add_1451_3 (.A0(red_2__N_153[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_153[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1834), .COUT(n1835), .S0(red_2__N_164[1]), 
          .S1(red_2__N_164[2]));
    defparam add_1451_3.INIT0 = 16'hf555;
    defparam add_1451_3.INIT1 = 16'hf555;
    defparam add_1451_3.INJECT1_0 = "NO";
    defparam add_1451_3.INJECT1_1 = "NO";
    CCU2D add_186_5 (.A0(ball_dy[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1827), .COUT(n1828), .S0(n876[3]), .S1(n876[4]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_5.INIT0 = 16'ha555;
    defparam add_186_5.INIT1 = 16'ha555;
    defparam add_186_5.INJECT1_0 = "NO";
    defparam add_186_5.INJECT1_1 = "NO";
    CCU2D add_186_3 (.A0(ball_dy[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1826), .COUT(n1827), .S0(n876[1]), .S1(n876[2]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_3.INIT0 = 16'ha555;
    defparam add_186_3.INIT1 = 16'ha555;
    defparam add_186_3.INJECT1_0 = "NO";
    defparam add_186_3.INJECT1_1 = "NO";
    CCU2D row_234_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1869), 
          .S1(n35[0]));   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam row_234_add_4_1.INIT0 = 16'hF000;
    defparam row_234_add_4_1.INIT1 = 16'h0555;
    defparam row_234_add_4_1.INJECT1_0 = "NO";
    defparam row_234_add_4_1.INJECT1_1 = "NO";
    CCU2D add_66_6 (.A0(ball_x[4]), .B0(ball_dx[4]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[5]), .B1(ball_dx[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1816), .COUT(n1817), .S0(n422[4]), .S1(n422[5]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_6.INIT0 = 16'h5666;
    defparam add_66_6.INIT1 = 16'h5666;
    defparam add_66_6.INJECT1_0 = "NO";
    defparam add_66_6.INJECT1_1 = "NO";
    CCU2D add_66_4 (.A0(ball_x[2]), .B0(ball_dx[2]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[3]), .B1(ball_dx[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1815), .COUT(n1816), .S0(n422[2]), .S1(n422[3]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_4.INIT0 = 16'h5666;
    defparam add_66_4.INIT1 = 16'h5666;
    defparam add_66_4.INJECT1_0 = "NO";
    defparam add_66_4.INJECT1_1 = "NO";
    FD1P3IX ball_x_i6 (.D(n1990), .SP(ball_x_9__N_206), .CD(n1129), .CK(PIN11_c), 
            .Q(ball_x[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i6.GSR = "ENABLED";
    CCU2D add_186_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dy[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1826), .S1(n876[0]));   // c:/users/enact/projects/vga/vga.v(162[28:40])
    defparam add_186_1.INIT0 = 16'hF000;
    defparam add_186_1.INIT1 = 16'haaaa;
    defparam add_186_1.INJECT1_0 = "NO";
    defparam add_186_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(paddle_right_y[6]), .B(paddle_right_y[8]), .Z(n6_adj_289)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_3_lut_adj_23 (.A(paddle_right_y[3]), .B(paddle_right_y[1]), 
         .C(paddle_right_y[2]), .Z(n8_adj_298)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_3_lut_adj_23.init = 16'hfefe;
    CCU2D add_233_7 (.A0(n1119), .B0(n2385), .C0(paddle_right_y[4]), .D0(GND_net), 
          .A1(n1119), .B1(n2385), .C1(paddle_right_y[5]), .D1(GND_net), 
          .CIN(n1844), .COUT(n1845), .S0(paddle_right_y_9__N_129[4]), 
          .S1(paddle_right_y_9__N_129[5]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_233_7.INIT0 = 16'he1e1;
    defparam add_233_7.INIT1 = 16'he1e1;
    defparam add_233_7.INJECT1_0 = "NO";
    defparam add_233_7.INJECT1_1 = "NO";
    CCU2D add_67_10 (.A0(ball_y[8]), .B0(ball_dy[8]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[9]), .B1(ball_dy[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1824), .S0(n434[8]), .S1(n434[9]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_10.INIT0 = 16'h5666;
    defparam add_67_10.INIT1 = 16'h5666;
    defparam add_67_10.INJECT1_0 = "NO";
    defparam add_67_10.INJECT1_1 = "NO";
    CCU2D add_185_3 (.A0(ball_dx[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1804), .COUT(n1805), .S0(n527[1]), .S1(n527[2]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_3.INIT0 = 16'ha555;
    defparam add_185_3.INIT1 = 16'ha555;
    defparam add_185_3.INJECT1_0 = "NO";
    defparam add_185_3.INJECT1_1 = "NO";
    CCU2D add_185_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_dx[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1804), .S1(n527[0]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_1.INIT0 = 16'hF000;
    defparam add_185_1.INIT1 = 16'haaaa;
    defparam add_185_1.INJECT1_0 = "NO";
    defparam add_185_1.INJECT1_1 = "NO";
    FD1P3IX ball_x_i5 (.D(n624[5]), .SP(ball_x_9__N_206), .CD(n1129), 
            .CK(PIN11_c), .Q(ball_x[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i5.GSR = "ENABLED";
    FD1P3IX ball_y_i1 (.D(n909[1]), .SP(ball_x_9__N_206), .CD(n1239), 
            .CK(PIN11_c), .Q(ball_y[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_y_i1.GSR = "ENABLED";
    CCU2D sub_71_add_2_7 (.A0(ball_y[5]), .B0(paddle_right_y[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[6]), .B1(paddle_right_y[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1914), .COUT(n1915), .S0(n468[5]), .S1(n468[6]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_7.INIT0 = 16'h5999;
    defparam sub_71_add_2_7.INIT1 = 16'h5999;
    defparam sub_71_add_2_7.INJECT1_0 = "NO";
    defparam sub_71_add_2_7.INJECT1_1 = "NO";
    LUT4 i124_4_lut (.A(PIN9_c), .B(paddle_right_y[9]), .C(n10_adj_299), 
         .D(paddle_right_y[7]), .Z(n1094)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(171[17:63])
    defparam i124_4_lut.init = 16'haaa8;
    CCU2D led_count_235_add_4_9 (.A0(led_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1860), .COUT(n1861), .S0(n101[7]), .S1(n101[8]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_9.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_9.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_9.INJECT1_0 = "NO";
    defparam led_count_235_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_5 (.A0(ball_y[3]), .B0(paddle_right_y[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[4]), .B1(paddle_right_y[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1913), .COUT(n1914), .S0(n468[3]), .S1(n468[4]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_5.INIT0 = 16'h5999;
    defparam sub_71_add_2_5.INIT1 = 16'h5999;
    defparam sub_71_add_2_5.INJECT1_0 = "NO";
    defparam sub_71_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_3 (.A0(ball_y[1]), .B0(paddle_right_y[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y[2]), .B1(paddle_right_y[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1912), .COUT(n1913), .S0(n468[1]), .S1(n468[2]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_3.INIT0 = 16'h5999;
    defparam sub_71_add_2_3.INIT1 = 16'h5999;
    defparam sub_71_add_2_3.INJECT1_0 = "NO";
    defparam sub_71_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[0]), .B1(paddle_right_y[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1912), .S1(n468[0]));   // c:/users/enact/projects/vga/vga.v(141[21:44])
    defparam sub_71_add_2_1.INIT0 = 16'h0000;
    defparam sub_71_add_2_1.INIT1 = 16'h5999;
    defparam sub_71_add_2_1.INJECT1_0 = "NO";
    defparam sub_71_add_2_1.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_11 (.A0(paddle_right_y[9]), .B0(row[9]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1911), .S0(red_2__N_57[9]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_11.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_11.INIT1 = 16'h0000;
    defparam paddle_right_y_9__I_0_171_add_2_11.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_11.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_9 (.A0(paddle_right_y[7]), .B0(row[7]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[8]), .B1(row[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1910), .COUT(n1911), .S0(red_2__N_57[7]), 
          .S1(red_2__N_57[8]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_9.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_9.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_9.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_9.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_7 (.A0(paddle_right_y[5]), .B0(row[5]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[6]), .B1(row[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1909), .COUT(n1910), .S0(red_2__N_57[5]), 
          .S1(red_2__N_57[6]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_7.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_7.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_7.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_7.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_5 (.A0(paddle_right_y[3]), .B0(row[3]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[4]), .B1(row[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1908), .COUT(n1909), .S0(red_2__N_57[3]), 
          .S1(red_2__N_57[4]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_5.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_5.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_5.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_5.INJECT1_1 = "NO";
    CCU2D led_count_235_add_4_7 (.A0(led_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1859), .COUT(n1860), .S0(n101[5]), .S1(n101[6]));   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235_add_4_7.INIT0 = 16'hfaaa;
    defparam led_count_235_add_4_7.INIT1 = 16'hfaaa;
    defparam led_count_235_add_4_7.INJECT1_0 = "NO";
    defparam led_count_235_add_4_7.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_24 (.A(paddle_right_y[6]), .B(paddle_right_y[5]), 
         .C(n1939), .D(paddle_right_y[8]), .Z(n10_adj_299)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_24.init = 16'hfffe;
    LUT4 i1_4_lut_rep_23 (.A(row[9]), .B(n2097), .C(n1948), .D(column[9]), 
         .Z(n2387)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_rep_23.init = 16'hfefa;
    LUT4 i1709_3_lut_3_lut_4_lut (.A(PIN7_c), .B(game_state[0]), .C(n2094), 
         .D(n2385), .Z(PIN11_c_enable_23)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(131[13] 135[16])
    defparam i1709_3_lut_3_lut_4_lut.init = 16'h002f;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(game_state[0]), .B(n2386), .C(n434[7]), 
         .Z(n2103)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'hf7f7;
    LUT4 i1700_4_lut (.A(row[2]), .B(n2153), .C(row[9]), .D(n2388), 
         .Z(PIN11_c_enable_2)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1700_4_lut.init = 16'h0004;
    CCU2D add_67_8 (.A0(ball_y[6]), .B0(ball_dy[6]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[7]), .B1(ball_dy[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1823), .COUT(n1824), .S0(n434[6]), .S1(n434[7]));   // c:/users/enact/projects/vga/vga.v(138[27:43])
    defparam add_67_8.INIT0 = 16'h5666;
    defparam add_67_8.INIT1 = 16'h5666;
    defparam add_67_8.INJECT1_0 = "NO";
    defparam add_67_8.INJECT1_1 = "NO";
    FD1S3AX led_count_235__i22 (.D(n101[22]), .CK(PIN11_c), .Q(n177[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i22.GSR = "ENABLED";
    FD1S3AX led_count_235__i21 (.D(n101[21]), .CK(PIN11_c), .Q(n177[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i21.GSR = "ENABLED";
    FD1S3AX led_count_235__i20 (.D(n101[20]), .CK(PIN11_c), .Q(n177[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i20.GSR = "ENABLED";
    FD1S3AX led_count_235__i19 (.D(n101[19]), .CK(PIN11_c), .Q(n177[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i19.GSR = "ENABLED";
    FD1S3AX led_count_235__i18 (.D(n101[18]), .CK(PIN11_c), .Q(n177[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i18.GSR = "ENABLED";
    FD1S3AX led_count_235__i17 (.D(n101[17]), .CK(PIN11_c), .Q(n177[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i17.GSR = "ENABLED";
    FD1S3AX led_count_235__i16 (.D(n101[16]), .CK(PIN11_c), .Q(led_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i16.GSR = "ENABLED";
    FD1S3AX led_count_235__i15 (.D(n101[15]), .CK(PIN11_c), .Q(led_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i15.GSR = "ENABLED";
    FD1S3AX led_count_235__i14 (.D(n101[14]), .CK(PIN11_c), .Q(led_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i14.GSR = "ENABLED";
    FD1S3AX led_count_235__i13 (.D(n101[13]), .CK(PIN11_c), .Q(led_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i13.GSR = "ENABLED";
    FD1S3AX led_count_235__i12 (.D(n101[12]), .CK(PIN11_c), .Q(led_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i12.GSR = "ENABLED";
    FD1S3AX led_count_235__i11 (.D(n101[11]), .CK(PIN11_c), .Q(led_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i11.GSR = "ENABLED";
    LUT4 i1683_4_lut (.A(row[7]), .B(row[5]), .C(row[8]), .D(n2141), 
         .Z(n2153)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1683_4_lut.init = 16'h8000;
    FD1S3AX led_count_235__i10 (.D(n101[10]), .CK(PIN11_c), .Q(led_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i10.GSR = "ENABLED";
    FD1S3AX led_count_235__i9 (.D(n101[9]), .CK(PIN11_c), .Q(led_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i9.GSR = "ENABLED";
    FD1S3AX led_count_235__i8 (.D(n101[8]), .CK(PIN11_c), .Q(led_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i8.GSR = "ENABLED";
    FD1S3AX led_count_235__i7 (.D(n101[7]), .CK(PIN11_c), .Q(led_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i7.GSR = "ENABLED";
    FD1S3AX led_count_235__i6 (.D(n101[6]), .CK(PIN11_c), .Q(led_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i6.GSR = "ENABLED";
    FD1S3AX led_count_235__i5 (.D(n101[5]), .CK(PIN11_c), .Q(led_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i5.GSR = "ENABLED";
    FD1S3AX led_count_235__i4 (.D(n101[4]), .CK(PIN11_c), .Q(led_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i4.GSR = "ENABLED";
    FD1S3AX led_count_235__i3 (.D(n101[3]), .CK(PIN11_c), .Q(led_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i3.GSR = "ENABLED";
    FD1S3AX led_count_235__i2 (.D(n101[2]), .CK(PIN11_c), .Q(led_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i2.GSR = "ENABLED";
    FD1S3AX led_count_235__i1 (.D(n101[1]), .CK(PIN11_c), .Q(led_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i1.GSR = "ENABLED";
    LUT4 i1671_2_lut (.A(row[0]), .B(row[6]), .Z(n2141)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1671_2_lut.init = 16'h8888;
    LUT4 i1696_2_lut (.A(row[1]), .B(PIN11_c_enable_2), .Z(o_VGA_VSync_N_263)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/enact/projects/vga/vga.v(125[9:67])
    defparam i1696_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_26 (.A(n434[1]), .B(n2386), .C(game_state[0]), .Z(n909[1])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_26.init = 16'hb3b3;
    LUT4 i2_3_lut_4_lut (.A(n2379), .B(n2380), .C(game_state[0]), .D(n422[7]), 
         .Z(ball_x_9__N_196[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_rep_18_then_4_lut (.A(n92), .B(ball_y[8]), .C(ball_y[6]), 
         .D(ball_y[7]), .Z(n2390)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    defparam i1_4_lut_rep_18_then_4_lut.init = 16'hbfff;
    LUT4 i4_4_lut_adj_27 (.A(n2385), .B(ball_y[6]), .C(ball_y[5]), .D(ball_y[7]), 
         .Z(n10_adj_303)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(164[17:28])
    defparam i4_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_4_lut_rep_18_else_4_lut (.A(n92), .B(ball_y[8]), .C(ball_y[6]), 
         .D(ball_y[7]), .Z(n2389)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(42[23:29])
    defparam i1_4_lut_rep_18_else_4_lut.init = 16'hfffe;
    LUT4 i420_2_lut (.A(game_state[0]), .B(n422[8]), .Z(n445[8])) /* synthesis lut_function=((B)+!A) */ ;
    defparam i420_2_lut.init = 16'hdddd;
    LUT4 i1013_3_lut (.A(ball_x[0]), .B(game_state[0]), .C(ball_dx[0]), 
         .Z(n445[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/enact/projects/vga/vga.v(136[13] 139[16])
    defparam i1013_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_rep_16_4_lut (.A(n1074), .B(ball_x[7]), .C(ball_x[9]), 
         .D(n1565), .Z(n2380)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_2_lut_rep_16_4_lut.init = 16'hffbf;
    LUT4 i1725_2_lut_2_lut_3_lut_4_lut (.A(n1585), .B(n2384), .C(n2385), 
         .D(n2380), .Z(PIN11_c_enable_13)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1725_2_lut_2_lut_3_lut_4_lut.init = 16'h010f;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(PIN7_c), .B(game_state[0]), .C(n2094), 
         .Z(game_state_1__N_217[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(131[13] 135[16])
    defparam i1_2_lut_3_lut_adj_28.init = 16'h2020;
    LUT4 i1_2_lut_rep_24 (.A(row[4]), .B(row[3]), .Z(n2388)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_24.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_29 (.A(n1565), .B(n1585), .C(n2383), .D(n2384), 
         .Z(n2094)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A ((D)+!B)) */ ;
    defparam i1_4_lut_adj_29.init = 16'hf531;
    LUT4 i1703_2_lut_2_lut_3_lut (.A(n1585), .B(n2384), .C(n2385), .Z(n1129)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1703_2_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i1706_2_lut (.A(PIN11_c_enable_33), .B(n2179), .Z(n1149)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1706_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_adj_30 (.A(led_count[10]), .B(led_count[1]), .Z(n19)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i2_2_lut_adj_30.init = 16'heeee;
    LUT4 i4_3_lut_4_lut (.A(row[4]), .B(row[3]), .C(row[9]), .D(row[2]), 
         .Z(n12)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i4_3_lut_4_lut.init = 16'hbfff;
    LUT4 i1_3_lut_adj_31 (.A(n434[3]), .B(n2386), .C(game_state[0]), .Z(n909[3])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_31.init = 16'hb3b3;
    LUT4 i5_3_lut (.A(red_2__N_164[5]), .B(n10_adj_285), .C(red_2__N_164[9]), 
         .Z(n1979)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1010_2_lut (.A(blue[0]), .B(n2387), .Z(PIN14_c_0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(91[57:105])
    defparam i1010_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_rep_19 (.A(n1074), .B(ball_x[7]), .C(ball_x[9]), .Z(n2383)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_rep_19.init = 16'hbfbf;
    LUT4 i1_4_lut_adj_32 (.A(column[9]), .B(n1980), .C(n1997), .D(n1981), 
         .Z(blue[0])) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;   // c:/users/enact/projects/vga/vga.v(107[13] 108[50])
    defparam i1_4_lut_adj_32.init = 16'h20a0;
    LUT4 i5_3_lut_adj_33 (.A(red_2__N_57[5]), .B(n10_adj_304), .C(red_2__N_57[9]), 
         .Z(n1980)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_adj_33.init = 16'hfefe;
    LUT4 i4_4_lut_adj_34 (.A(n1946), .B(n655[6]), .C(n655[8]), .D(n655[7]), 
         .Z(n10_adj_305)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_34.init = 16'hfffe;
    LUT4 i1_4_lut_adj_35 (.A(n314[1]), .B(n23[8]), .C(n6_adj_306), .D(n314[3]), 
         .Z(n7_adj_307)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_35.init = 16'heccc;
    LUT4 i2_2_lut_adj_36 (.A(n23[6]), .B(n23[7]), .Z(n8_adj_308)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_36.init = 16'heeee;
    LUT4 i2_2_lut_adj_37 (.A(n314[2]), .B(n314[4]), .Z(n6_adj_306)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_37.init = 16'h8888;
    LUT4 i1_4_lut_adj_38 (.A(n5_adj_309), .B(n2097), .C(column[6]), .D(column[4]), 
         .Z(n1997)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_38.init = 16'heccc;
    CCU2D add_185_11 (.A0(ball_dx[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1808), 
          .S0(n527[9]));   // c:/users/enact/projects/vga/vga.v(143[32:44])
    defparam add_185_11.INIT0 = 16'ha555;
    defparam add_185_11.INIT1 = 16'h0000;
    defparam add_185_11.INJECT1_0 = "NO";
    defparam add_185_11.INJECT1_1 = "NO";
    LUT4 i1705_4_lut (.A(n13_adj_310), .B(row[8]), .C(n12), .D(row[7]), 
         .Z(n2179)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1705_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_adj_39 (.A(game_state[0]), .B(n2386), .C(n434[6]), 
         .Z(n2102)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_39.init = 16'hf7f7;
    LUT4 i5_3_lut_adj_40 (.A(red_2__N_68[5]), .B(n10_adj_311), .C(red_2__N_68[9]), 
         .Z(n1981)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_adj_40.init = 16'hfefe;
    LUT4 i4_4_lut_adj_41 (.A(n1956), .B(red_2__N_57[6]), .C(red_2__N_57[8]), 
         .D(red_2__N_57[7]), .Z(n10_adj_304)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_41.init = 16'hfffe;
    LUT4 i3_4_lut_adj_42 (.A(n655[1]), .B(n655[2]), .C(n655[3]), .D(n655[4]), 
         .Z(n1946)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_42.init = 16'h8000;
    CCU2D add_66_2 (.A0(ball_x[0]), .B0(ball_dx[0]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[1]), .B1(ball_dx[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1815), .S1(n422[1]));   // c:/users/enact/projects/vga/vga.v(137[27:43])
    defparam add_66_2.INIT0 = 16'h7000;
    defparam add_66_2.INIT1 = 16'h5666;
    defparam add_66_2.INJECT1_0 = "NO";
    defparam add_66_2.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_43 (.A(red_2__N_57[1]), .B(red_2__N_57[2]), .C(red_2__N_57[3]), 
         .D(red_2__N_57[4]), .Z(n1956)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_43.init = 16'h8000;
    LUT4 i3_4_lut_rep_17 (.A(column[8]), .B(column[4]), .C(column[7]), 
         .D(n2081), .Z(n2381)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut_rep_17.init = 16'hefff;
    LUT4 i1_3_lut_adj_44 (.A(n2080), .B(column[5]), .C(column[3]), .Z(n5_adj_309)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_44.init = 16'hc8c8;
    LUT4 i4_4_lut_adj_45 (.A(n1955), .B(red_2__N_68[6]), .C(red_2__N_68[8]), 
         .D(red_2__N_68[7]), .Z(n10_adj_311)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_45.init = 16'hfffe;
    LUT4 i3_4_lut_adj_46 (.A(red_2__N_68[1]), .B(red_2__N_68[2]), .C(red_2__N_68[3]), 
         .D(red_2__N_68[4]), .Z(n1955)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_46.init = 16'h8000;
    LUT4 i3_4_lut_adj_47 (.A(row[5]), .B(row[6]), .C(row[8]), .D(row[7]), 
         .Z(n1948)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_47.init = 16'h8000;
    LUT4 i1_2_lut_adj_48 (.A(column[8]), .B(column[7]), .Z(n2097)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_48.init = 16'heeee;
    LUT4 n2110_bdd_3_lut (.A(n2381), .B(column[6]), .C(column[5]), .Z(PIN11_c_enable_1)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam n2110_bdd_3_lut.init = 16'h4141;
    LUT4 i1_3_lut_4_lut (.A(n1565), .B(n2383), .C(game_state[0]), .D(n422[4]), 
         .Z(n624[4])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_4_lut.init = 16'hf111;
    LUT4 i7_4_lut (.A(ball_x[0]), .B(n14), .C(n10_adj_312), .D(ball_x[1]), 
         .Z(n1074)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_49 (.A(n434[8]), .B(n2386), .C(game_state[0]), .Z(n909[8])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_49.init = 16'hb3b3;
    CCU2D add_230_11 (.A0(n1047), .B0(n2385), .C0(paddle_left_y[8]), .D0(GND_net), 
          .A1(n1047), .B1(n2385), .C1(paddle_left_y[9]), .D1(GND_net), 
          .CIN(n1855), .S0(paddle_left_y_9__N_119[8]), .S1(paddle_left_y_9__N_119[9]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_230_11.INIT0 = 16'he1e1;
    defparam add_230_11.INIT1 = 16'he1e1;
    defparam add_230_11.INJECT1_0 = "NO";
    defparam add_230_11.INJECT1_1 = "NO";
    CCU2D unary_minus_152_add_3_5 (.A0(n1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1810), .COUT(n1811), .S0(n18[3]), .S1(n18[4]));
    defparam unary_minus_152_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_152_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_152_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_152_add_3_5.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(ball_x[4]), .B(ball_x[2]), .C(ball_x[3]), .D(ball_x[6]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_50 (.A(n1565), .B(n2383), .C(game_state[0]), 
         .D(n422[3]), .Z(n624[3])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_4_lut_adj_50.init = 16'hf111;
    LUT4 i2_2_lut_adj_51 (.A(ball_x[8]), .B(ball_x[5]), .Z(n10_adj_312)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i2_2_lut_adj_51.init = 16'heeee;
    LUT4 i1_3_lut_adj_52 (.A(n434[2]), .B(n2386), .C(game_state[0]), .Z(n80)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam i1_3_lut_adj_52.init = 16'hb3b3;
    LUT4 i1221_4_lut (.A(n1972), .B(n468[5]), .C(n10_adj_316), .D(n468[9]), 
         .Z(n1565)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1221_4_lut.init = 16'haaa8;
    LUT4 i15_4_lut (.A(n29), .B(led_count[5]), .C(n26), .D(led_count[0]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1661_2_lut (.A(paddle_left_y[6]), .B(paddle_left_y[8]), .Z(n2131)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1661_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_53 (.A(n1565), .B(n2383), .C(n422[9]), .D(game_state[0]), 
         .Z(n624[9])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_4_lut_adj_53.init = 16'hf111;
    LUT4 i1_3_lut_4_lut_adj_54 (.A(n1565), .B(n2383), .C(game_state[0]), 
         .D(n422[2]), .Z(n624[2])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_4_lut_adj_54.init = 16'hf111;
    LUT4 i5_4_lut (.A(n22[5]), .B(n7_adj_317), .C(n22[9]), .D(n8_adj_318), 
         .Z(n1972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_55 (.A(n1954), .B(n468[6]), .C(n468[8]), .D(n468[7]), 
         .Z(n10_adj_316)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_55.init = 16'hfffe;
    LUT4 i11_4_lut (.A(led_count[13]), .B(led_count[6]), .C(led_count[14]), 
         .D(led_count[9]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_56 (.A(n5_adj_319), .B(n22[8]), .C(n303[1]), .D(n303[4]), 
         .Z(n7_adj_317)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_56.init = 16'heccc;
    LUT4 i3_2_lut (.A(led_count[2]), .B(led_count[7]), .Z(n20)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_57 (.A(n1565), .B(n2383), .C(game_state[0]), 
         .D(n422[1]), .Z(n624[1])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_4_lut_adj_57.init = 16'hf111;
    LUT4 i1694_2_lut_2_lut_3_lut (.A(column[5]), .B(column[6]), .C(n2381), 
         .Z(o_VGA_HSync_N_259)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1694_2_lut_2_lut_3_lut.init = 16'h0808;
    LUT4 i2_3_lut_4_lut_adj_58 (.A(n1565), .B(n2383), .C(game_state[0]), 
         .D(n422[6]), .Z(n1990)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i2_3_lut_4_lut_adj_58.init = 16'hff1f;
    LUT4 i1_3_lut_4_lut_adj_59 (.A(n1565), .B(n2383), .C(n422[5]), .D(game_state[0]), 
         .Z(n624[5])) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_3_lut_4_lut_adj_59.init = 16'hf111;
    LUT4 i2_2_lut_adj_60 (.A(n22[6]), .B(n22[7]), .Z(n8_adj_318)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_60.init = 16'heeee;
    LUT4 i1009_4_lut (.A(blue[0]), .B(n2387), .C(n1583), .D(n1557), 
         .Z(PIN17_c_0)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D))))) */ ;   // c:/users/enact/projects/vga/vga.v(90[56:105])
    defparam i1009_4_lut.init = 16'h2333;
    LUT4 i1_2_lut_adj_61 (.A(n303[3]), .B(n303[2]), .Z(n5_adj_319)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i2_3_lut_rep_20 (.A(ball_x[9]), .B(n1074), .C(ball_x[7]), .Z(n2384)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i2_3_lut_rep_20.init = 16'hfefe;
    LUT4 i5_4_lut_adj_62 (.A(row[0]), .B(row[5]), .C(row[6]), .D(row[1]), 
         .Z(n13_adj_310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(117[20:27])
    defparam i5_4_lut_adj_62.init = 16'hfffe;
    LUT4 i1241_4_lut (.A(n655[5]), .B(n1976), .C(n10_adj_305), .D(n655[9]), 
         .Z(n1585)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1241_4_lut.init = 16'hccc8;
    CCU2D paddle_right_y_9__I_0_171_add_2_3 (.A0(paddle_right_y[1]), .B0(row[1]), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[2]), .B1(row[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n1907), .COUT(n1908), .S0(red_2__N_57[1]), 
          .S1(red_2__N_57[2]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_3.INIT0 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_3.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_3.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_63 (.A(paddle_right_y[3]), .B(paddle_right_y[1]), 
         .Z(n6_adj_284)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_63.init = 16'h8888;
    LUT4 i1239_4_lut (.A(n15_adj_320), .B(n1581), .C(n1986), .D(n16), 
         .Z(n1583)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1239_4_lut.init = 16'hfcec;
    LUT4 i3_4_lut_adj_64 (.A(n468[1]), .B(n468[2]), .C(n468[3]), .D(n468[4]), 
         .Z(n1954)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_64.init = 16'h8000;
    LUT4 i5_4_lut_adj_65 (.A(n23[5]), .B(n7_adj_307), .C(n23[9]), .D(n8_adj_308), 
         .Z(n1976)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_65.init = 16'hfffe;
    CCU2D add_230_9 (.A0(n1047), .B0(n2385), .C0(paddle_left_y[6]), .D0(GND_net), 
          .A1(n1047), .B1(n2385), .C1(paddle_left_y[7]), .D1(GND_net), 
          .CIN(n1854), .COUT(n1855), .S0(paddle_left_y_9__N_119[6]), .S1(paddle_left_y_9__N_119[7]));   // c:/users/enact/projects/vga/vga.v(130[9] 173[12])
    defparam add_230_9.INIT0 = 16'he1e1;
    defparam add_230_9.INIT1 = 16'he1e1;
    defparam add_230_9.INJECT1_0 = "NO";
    defparam add_230_9.INJECT1_1 = "NO";
    CCU2D paddle_right_y_9__I_0_171_add_2_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(paddle_right_y[0]), .B1(row[0]), 
          .C1(GND_net), .D1(GND_net), .COUT(n1907), .S1(red_2__N_57[0]));   // c:/users/enact/projects/vga/vga.v(107[14:34])
    defparam paddle_right_y_9__I_0_171_add_2_1.INIT0 = 16'h0000;
    defparam paddle_right_y_9__I_0_171_add_2_1.INIT1 = 16'h5999;
    defparam paddle_right_y_9__I_0_171_add_2_1.INJECT1_0 = "NO";
    defparam paddle_right_y_9__I_0_171_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_11 (.A0(paddle_left_y[9]), .B0(row[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1906), .S0(red_2__N_153[9]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_11.INIT0 = 16'h5999;
    defparam sub_27_add_2_11.INIT1 = 16'h0000;
    defparam sub_27_add_2_11.INJECT1_0 = "NO";
    defparam sub_27_add_2_11.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_66 (.A(n1[7]), .B(n1[3]), .C(n1[9]), .D(n1[5]), 
         .Z(n15_adj_320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_66.init = 16'hfffe;
    CCU2D sub_27_add_2_9 (.A0(paddle_left_y[7]), .B0(row[7]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[8]), .B1(row[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1905), .COUT(n1906), .S0(red_2__N_153[7]), 
          .S1(red_2__N_153[8]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_9.INIT0 = 16'h5999;
    defparam sub_27_add_2_9.INIT1 = 16'h5999;
    defparam sub_27_add_2_9.INJECT1_0 = "NO";
    defparam sub_27_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_7 (.A0(paddle_left_y[5]), .B0(row[5]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[6]), .B1(row[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1904), .COUT(n1905), .S0(red_2__N_153[5]), 
          .S1(red_2__N_153[6]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_7.INIT0 = 16'h5999;
    defparam sub_27_add_2_7.INIT1 = 16'h5999;
    defparam sub_27_add_2_7.INJECT1_0 = "NO";
    defparam sub_27_add_2_7.INJECT1_1 = "NO";
    LUT4 i1237_4_lut (.A(n15_adj_321), .B(n1987), .C(n13_adj_322), .D(n14_adj_323), 
         .Z(n1581)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1237_4_lut.init = 16'hccc8;
    CCU2D sub_27_add_2_5 (.A0(paddle_left_y[3]), .B0(row[3]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[4]), .B1(row[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1903), .COUT(n1904), .S0(red_2__N_153[3]), 
          .S1(red_2__N_153[4]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_5.INIT0 = 16'h5999;
    defparam sub_27_add_2_5.INIT1 = 16'h5999;
    defparam sub_27_add_2_5.INJECT1_0 = "NO";
    defparam sub_27_add_2_5.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n15_adj_324), .B(n13_adj_325), .C(n18[3]), .D(n10), 
         .Z(n1986)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    CCU2D sub_27_add_2_3 (.A0(paddle_left_y[1]), .B0(row[1]), .C0(GND_net), 
          .D0(GND_net), .A1(paddle_left_y[2]), .B1(row[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1902), .COUT(n1903), .S0(red_2__N_153[1]), 
          .S1(red_2__N_153[2]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_3.INIT0 = 16'h5999;
    defparam sub_27_add_2_3.INIT1 = 16'h5999;
    defparam sub_27_add_2_3.INJECT1_0 = "NO";
    defparam sub_27_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(paddle_left_y[0]), .B1(row[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1902), .S1(red_2__N_153[0]));   // c:/users/enact/projects/vga/vga.v(103[14:33])
    defparam sub_27_add_2_1.INIT0 = 16'h0000;
    defparam sub_27_add_2_1.INIT1 = 16'h5999;
    defparam sub_27_add_2_1.INJECT1_0 = "NO";
    defparam sub_27_add_2_1.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(led_count[12]), .B(led_count[15]), .C(led_count[16]), 
         .D(led_count[11]), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i12_4_lut.init = 16'hfffe;
    CCU2D sub_20_add_2_11 (.A0(ball_x[9]), .B0(column[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1901), .S0(n135[9]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_11.INIT0 = 16'h5999;
    defparam sub_20_add_2_11.INIT1 = 16'h0000;
    defparam sub_20_add_2_11.INJECT1_0 = "NO";
    defparam sub_20_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_20_add_2_9 (.A0(ball_x[7]), .B0(column[7]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[8]), .B1(column[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1900), .COUT(n1901), .S0(n135[7]), .S1(n135[8]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_9.INIT0 = 16'h5999;
    defparam sub_20_add_2_9.INIT1 = 16'h5999;
    defparam sub_20_add_2_9.INJECT1_0 = "NO";
    defparam sub_20_add_2_9.INJECT1_1 = "NO";
    LUT4 i9_3_lut (.A(led_count[8]), .B(led_count[4]), .C(led_count[3]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/enact/projects/vga/vga.v(130[13:33])
    defparam i9_3_lut.init = 16'hfefe;
    CCU2D sub_20_add_2_7 (.A0(ball_x[5]), .B0(column[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[6]), .B1(column[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1899), .COUT(n1900), .S0(n135[5]), .S1(n135[6]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_7.INIT0 = 16'h5999;
    defparam sub_20_add_2_7.INIT1 = 16'h5999;
    defparam sub_20_add_2_7.INJECT1_0 = "NO";
    defparam sub_20_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_20_add_2_5 (.A0(ball_x[3]), .B0(column[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[4]), .B1(column[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1898), .COUT(n1899), .S0(n135[3]), .S1(n135[4]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_5.INIT0 = 16'h5999;
    defparam sub_20_add_2_5.INIT1 = 16'h5999;
    defparam sub_20_add_2_5.INJECT1_0 = "NO";
    defparam sub_20_add_2_5.INJECT1_1 = "NO";
    LUT4 i1017_3_lut (.A(ball_y[0]), .B(game_state[0]), .C(ball_dy[0]), 
         .Z(n456[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/enact/projects/vga/vga.v(136[13] 139[16])
    defparam i1017_3_lut.init = 16'h4848;
    CCU2D sub_20_add_2_3 (.A0(ball_x[1]), .B0(column[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x[2]), .B1(column[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1897), .COUT(n1898), .S0(n135[1]), .S1(n135[2]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_3.INIT0 = 16'h5999;
    defparam sub_20_add_2_3.INIT1 = 16'h5999;
    defparam sub_20_add_2_3.INJECT1_0 = "NO";
    defparam sub_20_add_2_3.INJECT1_1 = "NO";
    LUT4 i7_4_lut_adj_67 (.A(n13), .B(n1[4]), .C(n1505), .D(n1[2]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_67.init = 16'hfffe;
    LUT4 i1173_2_lut (.A(column[1]), .B(column[2]), .Z(n1517)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1173_2_lut.init = 16'heeee;
    CCU2D sub_20_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x[0]), .B1(column[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1897), .S1(n135[0]));   // c:/users/enact/projects/vga/vga.v(100[21:36])
    defparam sub_20_add_2_1.INIT0 = 16'h0000;
    defparam sub_20_add_2_1.INIT1 = 16'h5999;
    defparam sub_20_add_2_1.INJECT1_0 = "NO";
    defparam sub_20_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_11 (.A0(ball_y[9]), .B0(row[9]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1896), .S0(n1[9]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_11.INIT0 = 16'h5999;
    defparam sub_15_add_2_11.INIT1 = 16'h0000;
    defparam sub_15_add_2_11.INJECT1_0 = "NO";
    defparam sub_15_add_2_11.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_68 (.A(n135[6]), .B(n135[9]), .C(n135[8]), .D(n135[4]), 
         .Z(n15_adj_321)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_68.init = 16'hfffe;
    LUT4 i8_4_lut_adj_69 (.A(n15_adj_326), .B(n13_adj_327), .C(n24[3]), 
         .D(n10_adj_329), .Z(n1987)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut_adj_69.init = 16'hfffe;
    LUT4 i5_3_lut_adj_70 (.A(ball_y[2]), .B(n10_adj_270), .C(ball_y[3]), 
         .Z(n92)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_adj_70.init = 16'hfefe;
    LUT4 i4_2_lut_adj_71 (.A(n135[5]), .B(n135[7]), .Z(n13_adj_322)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut_adj_71.init = 16'heeee;
    LUT4 i2_3_lut_adj_72 (.A(n434[9]), .B(n2382), .C(game_state[0]), .Z(ball_y_9__N_207[9])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam i2_3_lut_adj_72.init = 16'h8080;
    CCU2D sub_15_add_2_9 (.A0(ball_y[7]), .B0(row[7]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[8]), .B1(row[8]), .C1(GND_net), .D1(GND_net), .CIN(n1895), 
          .COUT(n1896), .S0(n1[7]), .S1(n1[8]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_9.INIT0 = 16'h5999;
    defparam sub_15_add_2_9.INIT1 = 16'h5999;
    defparam sub_15_add_2_9.INJECT1_0 = "NO";
    defparam sub_15_add_2_9.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_73 (.A(n135[3]), .B(n135[0]), .C(n135[2]), .D(n135[1]), 
         .Z(n14_adj_323)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i5_4_lut_adj_73.init = 16'hfefa;
    CCU2D sub_15_add_2_7 (.A0(ball_y[5]), .B0(row[5]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[6]), .B1(row[6]), .C1(GND_net), .D1(GND_net), .CIN(n1894), 
          .COUT(n1895), .S0(n1[5]), .S1(n1[6]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_7.INIT0 = 16'h5999;
    defparam sub_15_add_2_7.INIT1 = 16'h5999;
    defparam sub_15_add_2_7.INJECT1_0 = "NO";
    defparam sub_15_add_2_7.INJECT1_1 = "NO";
    LUT4 i418_2_lut (.A(game_state[0]), .B(n434[5]), .Z(n456[5])) /* synthesis lut_function=((B)+!A) */ ;
    defparam i418_2_lut.init = 16'hdddd;
    LUT4 i1722_3_lut_3_lut (.A(n2387), .B(blue[0]), .C(n1557), .Z(PIN18_c_0)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1722_3_lut_3_lut.init = 16'h0101;
    LUT4 i6_4_lut_adj_74 (.A(n24[6]), .B(n24[9]), .C(n24[8]), .D(n24[4]), 
         .Z(n15_adj_326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_74.init = 16'hfffe;
    PFUMX i1769 (.BLUT(n2389), .ALUT(n2390), .C0(ball_y[5]), .Z(n2382));
    LUT4 i2_4_lut_adj_75 (.A(paddle_left_y[9]), .B(PIN8_c), .C(n2139), 
         .D(n2131), .Z(n1047)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut_adj_75.init = 16'h0444;
    LUT4 i1728_3_lut (.A(n92), .B(n10_adj_303), .C(ball_y[8]), .Z(n1239)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1728_3_lut.init = 16'h0101;
    CCU2D sub_15_add_2_5 (.A0(ball_y[3]), .B0(row[3]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[4]), .B1(row[4]), .C1(GND_net), .D1(GND_net), .CIN(n1893), 
          .COUT(n1894), .S0(n1[3]), .S1(n1[4]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_5.INIT0 = 16'h5999;
    defparam sub_15_add_2_5.INIT1 = 16'h5999;
    defparam sub_15_add_2_5.INJECT1_0 = "NO";
    defparam sub_15_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_3 (.A0(ball_y[1]), .B0(row[1]), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[2]), .B1(row[2]), .C1(GND_net), .D1(GND_net), .CIN(n1892), 
          .COUT(n1893), .S0(n1[1]), .S1(n1[2]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_3.INIT0 = 16'h5999;
    defparam sub_15_add_2_3.INIT1 = 16'h5999;
    defparam sub_15_add_2_3.INJECT1_0 = "NO";
    defparam sub_15_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_15_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y[0]), .B1(row[0]), .C1(GND_net), .D1(GND_net), .COUT(n1892), 
          .S1(n1[0]));   // c:/users/enact/projects/vga/vga.v(99[14:26])
    defparam sub_15_add_2_1.INIT0 = 16'h0000;
    defparam sub_15_add_2_1.INIT1 = 16'h5999;
    defparam sub_15_add_2_1.INJECT1_0 = "NO";
    defparam sub_15_add_2_1.INJECT1_1 = "NO";
    CCU2D unary_minus_153_add_3_11 (.A0(n135[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1891), .S0(n24[9]));
    defparam unary_minus_153_add_3_11.INIT0 = 16'hf555;
    defparam unary_minus_153_add_3_11.INIT1 = 16'h0000;
    defparam unary_minus_153_add_3_11.INJECT1_0 = "NO";
    defparam unary_minus_153_add_3_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_15_4_lut (.A(ball_x[9]), .B(n1074), .C(ball_x[7]), 
         .D(n1585), .Z(n2379)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/enact/projects/vga/vga.v(140[17:35])
    defparam i1_2_lut_rep_15_4_lut.init = 16'hfffe;
    FD1P3JX ball_x_i0 (.D(n445[0]), .SP(ball_x_9__N_206), .PD(PIN11_c_enable_13), 
            .CK(PIN11_c), .Q(ball_x[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=188, LSE_RLINE=206 */ ;   // c:/users/enact/projects/vga/vga.v(113[12] 174[8])
    defparam ball_x_i0.GSR = "ENABLED";
    CCU2D unary_minus_153_add_3_9 (.A0(n135[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1890), .COUT(n1891), .S0(n24[7]), .S1(n24[8]));
    defparam unary_minus_153_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_153_add_3_9.INIT1 = 16'hf555;
    defparam unary_minus_153_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_153_add_3_9.INJECT1_1 = "NO";
    CCU2D unary_minus_153_add_3_7 (.A0(n135[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1889), .COUT(n1890), .S0(n24[5]), .S1(n24[6]));
    defparam unary_minus_153_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_153_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_153_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_153_add_3_7.INJECT1_1 = "NO";
    CCU2D unary_minus_153_add_3_5 (.A0(n135[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1888), .COUT(n1889), .S0(n24[3]), .S1(n24[4]));
    defparam unary_minus_153_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_153_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_153_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_153_add_3_5.INJECT1_1 = "NO";
    LUT4 i4_2_lut_adj_76 (.A(n24[5]), .B(n24[7]), .Z(n13_adj_327)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut_adj_76.init = 16'heeee;
    LUT4 i1_3_lut_adj_77 (.A(n270[0]), .B(n24[2]), .C(n270[1]), .Z(n10_adj_329)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_77.init = 16'hecec;
    CCU2D unary_minus_153_add_3_3 (.A0(n135[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1887), .COUT(n1888), .S0(n270[1]), .S1(n24[2]));
    defparam unary_minus_153_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_153_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_153_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_153_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_153_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n135[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1887), .S1(n270[0]));
    defparam unary_minus_153_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_153_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_153_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_153_add_3_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_78 (.A(n18[6]), .B(n18[9]), .C(n18[8]), .D(n18[4]), 
         .Z(n15_adj_324)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_78.init = 16'hfffe;
    CCU2D add_1450_11 (.A0(red_2__N_57[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1886), .S0(red_2__N_68[9]));
    defparam add_1450_11.INIT0 = 16'hf555;
    defparam add_1450_11.INIT1 = 16'h0000;
    defparam add_1450_11.INJECT1_0 = "NO";
    defparam add_1450_11.INJECT1_1 = "NO";
    LUT4 i4_2_lut_adj_79 (.A(n18[5]), .B(n18[7]), .Z(n13_adj_325)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut_adj_79.init = 16'heeee;
    LUT4 i1669_4_lut (.A(paddle_left_y[4]), .B(paddle_left_y[7]), .C(n8), 
         .D(paddle_left_y[5]), .Z(n2139)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1669_4_lut.init = 16'hccc8;
    CCU2D add_1450_9 (.A0(red_2__N_57[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(red_2__N_57[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1885), .COUT(n1886), .S0(red_2__N_68[7]), 
          .S1(red_2__N_68[8]));
    defparam add_1450_9.INIT0 = 16'hf555;
    defparam add_1450_9.INIT1 = 16'hf555;
    defparam add_1450_9.INJECT1_0 = "NO";
    defparam add_1450_9.INJECT1_1 = "NO";
    FD1S3AX led_count_235__i0 (.D(n101[0]), .CK(PIN11_c), .Q(led_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/vga.v(127[22:35])
    defparam led_count_235__i0.GSR = "ENABLED";
    
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
// Verilog Description of module pll
//

module pll (INTERNAL_OSC, PIN11_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input INTERNAL_OSC;
    output PIN11_c;
    input GND_net;
    
    wire INTERNAL_OSC /* synthesis is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(74[6:18])
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(52[49:54])
    
    EHXPLLJ PLLInst_0 (.CLKI(INTERNAL_OSC), .CLKFB(PIN11_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(PIN11_c)) /* synthesis FREQUENCY_PIN_CLKOP="24.937500", FREQUENCY_PIN_CLKI="133.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=54, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/enact/projects/vga/source/fipsy_top.v(135[5:54])
    defparam PLLInst_0.CLKI_DIV = 16;
    defparam PLLInst_0.CLKFB_DIV = 3;
    defparam PLLInst_0.CLKOP_DIV = 21;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 20;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
