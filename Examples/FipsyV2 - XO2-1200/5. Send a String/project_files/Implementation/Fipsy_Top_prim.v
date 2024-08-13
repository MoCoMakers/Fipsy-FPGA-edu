// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Dec 08 16:23:11 2017
//
// Verilog Description of module Fipsy_Top
//

module Fipsy_Top (PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, 
            PIN14, PIN17, PIN18, PIN19, PIN20, LEDn) /* synthesis syn_module_defined=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(45[8:17])
    output PIN7 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[7:11])
    output PIN8 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[13:17])
    output PIN9 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[19:23])
    input PIN10 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[25:30])
    output PIN11 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[32:37])
    output PIN12 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[39:44])
    output PIN13 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[46:51])
    output PIN14 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[53:58])
    output PIN17 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[60:65])
    output PIN18 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[67:72])
    output PIN19 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[74:79])
    output PIN20 /* synthesis .original_dir=IN_OUT */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[81:86])
    output LEDn;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(54[8:12])
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[32:37])
    
    wire GND_net, PIN10_c, PIN20_c_19, LEDn_c, VCC_net;
    
    VHI i6 (.Z(VCC_net));
    OB PIN8_pad (.I(GND_net), .O(PIN8));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[13:17])
    TSALL TSALL_INST (.TSALL(GND_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(PIN11_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "2.08";
    FreqDiv20Bit FreqDiv20Bit_inst (.PIN20_c_19(PIN20_c_19), .PIN11_c(PIN11_c), 
            .PIN10_c(PIN10_c), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(154[14] 158[32])
    OB PIN7_pad (.I(GND_net), .O(PIN7));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[7:11])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 PIN20_I_0_1_lut (.A(PIN20_c_19), .Z(LEDn_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(163[15:22])
    defparam PIN20_I_0_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB PIN9_pad (.I(GND_net), .O(PIN9));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[19:23])
    OB PIN11_pad (.I(PIN11_c), .O(PIN11));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[32:37])
    OB PIN12_pad (.I(GND_net), .O(PIN12));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[39:44])
    OB PIN13_pad (.I(GND_net), .O(PIN13));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[46:51])
    OB PIN14_pad (.I(GND_net), .O(PIN14));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[53:58])
    OB PIN17_pad (.I(GND_net), .O(PIN17));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[60:65])
    OB PIN18_pad (.I(GND_net), .O(PIN18));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[67:72])
    OB PIN19_pad (.I(GND_net), .O(PIN19));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[74:79])
    OB PIN20_pad (.I(PIN20_c_19), .O(PIN20));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[81:86])
    OB LEDn_pad (.I(LEDn_c), .O(LEDn));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(54[8:12])
    IB PIN10_pad (.I(PIN10), .O(PIN10_c));   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[25:30])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module FreqDiv20Bit
//

module FreqDiv20Bit (PIN20_c_19, PIN11_c, PIN10_c, GND_net) /* synthesis syn_module_defined=1 */ ;
    output PIN20_c_19;
    input PIN11_c;
    input PIN10_c;
    input GND_net;
    
    wire PIN11_c /* synthesis SET_AS_NETWORK=PIN11_c, is_clock=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/fipsy_top.v(52[32:37])
    wire [19:0]n85;
    wire [19:0]n149;
    
    wire n37, n36, n35, n34, n33, n32, n31, n30, n29, n28;
    
    FD1S3IX count_8__i19 (.D(n85[19]), .CK(PIN11_c), .CD(PIN10_c), .Q(PIN20_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i19.GSR = "ENABLED";
    FD1S3IX count_8__i0 (.D(n85[0]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i0.GSR = "ENABLED";
    FD1S3IX count_8__i18 (.D(n85[18]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i18.GSR = "ENABLED";
    FD1S3IX count_8__i17 (.D(n85[17]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i17.GSR = "ENABLED";
    FD1S3IX count_8__i16 (.D(n85[16]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i16.GSR = "ENABLED";
    FD1S3IX count_8__i15 (.D(n85[15]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i15.GSR = "ENABLED";
    FD1S3IX count_8__i14 (.D(n85[14]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i14.GSR = "ENABLED";
    FD1S3IX count_8__i13 (.D(n85[13]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i13.GSR = "ENABLED";
    FD1S3IX count_8__i12 (.D(n85[12]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i12.GSR = "ENABLED";
    FD1S3IX count_8__i11 (.D(n85[11]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i11.GSR = "ENABLED";
    FD1S3IX count_8__i10 (.D(n85[10]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i10.GSR = "ENABLED";
    FD1S3IX count_8__i9 (.D(n85[9]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i9.GSR = "ENABLED";
    FD1S3IX count_8__i8 (.D(n85[8]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i8.GSR = "ENABLED";
    FD1S3IX count_8__i7 (.D(n85[7]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i7.GSR = "ENABLED";
    FD1S3IX count_8__i6 (.D(n85[6]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i6.GSR = "ENABLED";
    FD1S3IX count_8__i5 (.D(n85[5]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i5.GSR = "ENABLED";
    FD1S3IX count_8__i4 (.D(n85[4]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i4.GSR = "ENABLED";
    FD1S3IX count_8__i3 (.D(n85[3]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i3.GSR = "ENABLED";
    FD1S3IX count_8__i2 (.D(n85[2]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i2.GSR = "ENABLED";
    FD1S3IX count_8__i1 (.D(n85[1]), .CK(PIN11_c), .CD(PIN10_c), .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8__i1.GSR = "ENABLED";
    CCU2D count_8_add_4_21 (.A0(PIN20_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37), .S0(n85[19]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_21.INIT0 = 16'hfaaa;
    defparam count_8_add_4_21.INIT1 = 16'h0000;
    defparam count_8_add_4_21.INJECT1_0 = "NO";
    defparam count_8_add_4_21.INJECT1_1 = "NO";
    CCU2D count_8_add_4_19 (.A0(n149[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n36), .COUT(n37), .S0(n85[17]), .S1(n85[18]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_19.INIT0 = 16'hfaaa;
    defparam count_8_add_4_19.INIT1 = 16'hfaaa;
    defparam count_8_add_4_19.INJECT1_0 = "NO";
    defparam count_8_add_4_19.INJECT1_1 = "NO";
    CCU2D count_8_add_4_17 (.A0(n149[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n35), .COUT(n36), .S0(n85[15]), .S1(n85[16]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_17.INIT0 = 16'hfaaa;
    defparam count_8_add_4_17.INIT1 = 16'hfaaa;
    defparam count_8_add_4_17.INJECT1_0 = "NO";
    defparam count_8_add_4_17.INJECT1_1 = "NO";
    CCU2D count_8_add_4_15 (.A0(n149[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n34), .COUT(n35), .S0(n85[13]), .S1(n85[14]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_15.INIT0 = 16'hfaaa;
    defparam count_8_add_4_15.INIT1 = 16'hfaaa;
    defparam count_8_add_4_15.INJECT1_0 = "NO";
    defparam count_8_add_4_15.INJECT1_1 = "NO";
    CCU2D count_8_add_4_13 (.A0(n149[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n33), .COUT(n34), .S0(n85[11]), .S1(n85[12]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_13.INIT0 = 16'hfaaa;
    defparam count_8_add_4_13.INIT1 = 16'hfaaa;
    defparam count_8_add_4_13.INJECT1_0 = "NO";
    defparam count_8_add_4_13.INJECT1_1 = "NO";
    CCU2D count_8_add_4_11 (.A0(n149[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32), .COUT(n33), .S0(n85[9]), .S1(n85[10]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_11.INIT0 = 16'hfaaa;
    defparam count_8_add_4_11.INIT1 = 16'hfaaa;
    defparam count_8_add_4_11.INJECT1_0 = "NO";
    defparam count_8_add_4_11.INJECT1_1 = "NO";
    CCU2D count_8_add_4_9 (.A0(n149[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n149[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n31), 
          .COUT(n32), .S0(n85[7]), .S1(n85[8]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_9.INIT0 = 16'hfaaa;
    defparam count_8_add_4_9.INIT1 = 16'hfaaa;
    defparam count_8_add_4_9.INJECT1_0 = "NO";
    defparam count_8_add_4_9.INJECT1_1 = "NO";
    CCU2D count_8_add_4_7 (.A0(n149[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n149[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n30), 
          .COUT(n31), .S0(n85[5]), .S1(n85[6]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_7.INIT0 = 16'hfaaa;
    defparam count_8_add_4_7.INIT1 = 16'hfaaa;
    defparam count_8_add_4_7.INJECT1_0 = "NO";
    defparam count_8_add_4_7.INJECT1_1 = "NO";
    CCU2D count_8_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n149[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n29), 
          .COUT(n30), .S0(n85[3]), .S1(n85[4]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_5.INIT0 = 16'hfaaa;
    defparam count_8_add_4_5.INIT1 = 16'hfaaa;
    defparam count_8_add_4_5.INJECT1_0 = "NO";
    defparam count_8_add_4_5.INJECT1_1 = "NO";
    CCU2D count_8_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n28), 
          .COUT(n29), .S0(n85[1]), .S1(n85[2]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_3.INIT0 = 16'hfaaa;
    defparam count_8_add_4_3.INIT1 = 16'hfaaa;
    defparam count_8_add_4_3.INJECT1_0 = "NO";
    defparam count_8_add_4_3.INJECT1_1 = "NO";
    CCU2D count_8_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n28), 
          .S1(n85[0]));   // c:/lattice/fipsybaseline_diamondproject/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_8_add_4_1.INIT0 = 16'hF000;
    defparam count_8_add_4_1.INIT1 = 16'h0555;
    defparam count_8_add_4_1.INJECT1_0 = "NO";
    defparam count_8_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

