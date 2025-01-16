// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Dec 22 12:02:16 2024
//
// Verilog Description of module ClockDivider
//

module ClockDivider (INTERNAL_OSC, clk_out_25mhz) /* synthesis syn_module_defined=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(1[8:20])
    input INTERNAL_OSC;   // c:/users/enact/projects/vga/clock_divider.v(2[16:28])
    output clk_out_25mhz;   // c:/users/enact/projects/vga/clock_divider.v(3[16:29])
    
    wire INTERNAL_OSC_c /* synthesis SET_AS_NETWORK=INTERNAL_OSC_c, is_clock=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(2[16:28])
    
    wire GND_net, VCC_net, clk_out_25mhz_c;
    wire [6:0]counter;   // c:/users/enact/projects/vga/clock_divider.v(6[15:22])
    
    wire n12, clk_out_25mhz_N_16, n34, n35, n36, n37, n38, n39, 
        n40, n86, n85, n84, n83;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX clk_out_25mhz_12 (.D(clk_out_25mhz_N_16), .CK(INTERNAL_OSC_c), 
            .Q(clk_out_25mhz_c));   // c:/users/enact/projects/vga/clock_divider.v(8[12] 14[8])
    defparam clk_out_25mhz_12.GSR = "ENABLED";
    FD1S3IX counter_20__i6 (.D(n34), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i6.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    OB clk_out_25mhz_pad (.I(clk_out_25mhz_c), .O(clk_out_25mhz));   // c:/users/enact/projects/vga/clock_divider.v(3[16:29])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    IB INTERNAL_OSC_pad (.I(INTERNAL_OSC), .O(INTERNAL_OSC_c));   // c:/users/enact/projects/vga/clock_divider.v(2[16:28])
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX counter_20__i0 (.D(n40), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i0.GSR = "ENABLED";
    FD1S3IX counter_20__i5 (.D(n35), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i5.GSR = "ENABLED";
    FD1S3IX counter_20__i4 (.D(n36), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i4.GSR = "ENABLED";
    FD1S3IX counter_20__i3 (.D(n37), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i3.GSR = "ENABLED";
    FD1S3IX counter_20__i2 (.D(n38), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i2.GSR = "ENABLED";
    FD1S3IX counter_20__i1 (.D(n39), .CK(INTERNAL_OSC_c), .CD(n83), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_out_25mhz_c), .B(n83), .Z(clk_out_25mhz_N_16)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i32_4_lut (.A(counter[2]), .B(n12), .C(counter[6]), .D(counter[1]), 
         .Z(n83)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/enact/projects/vga/clock_divider.v(10[13:25])
    defparam i32_4_lut.init = 16'h0001;
    LUT4 i5_4_lut (.A(counter[0]), .B(counter[5]), .C(counter[4]), .D(counter[3]), 
         .Z(n12)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/enact/projects/vga/clock_divider.v(10[13:25])
    defparam i5_4_lut.init = 16'hfffd;
    CCU2D counter_20_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n86), .S0(n35), .S1(n34));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_20_add_4_7.INJECT1_0 = "NO";
    defparam counter_20_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_20_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n85), .COUT(n86), .S0(n37), .S1(n36));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_20_add_4_5.INJECT1_0 = "NO";
    defparam counter_20_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_20_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n84), .COUT(n85), .S0(n39), .S1(n38));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_20_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_20_add_4_3.INJECT1_0 = "NO";
    defparam counter_20_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_20_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n84), .S1(n40));   // c:/users/enact/projects/vga/clock_divider.v(9[20:31])
    defparam counter_20_add_4_1.INIT0 = 16'hF000;
    defparam counter_20_add_4_1.INIT1 = 16'h0555;
    defparam counter_20_add_4_1.INJECT1_0 = "NO";
    defparam counter_20_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

