// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Jun 09 17:24:44 2017
//
// Verilog Description of module FreqDiv20Bit
//

module FreqDiv20Bit (CLOCK, RESET, MSB) /* synthesis syn_module_defined=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(20[8:20])
    input CLOCK;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(22[7:12])
    input RESET;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(23[7:12])
    output MSB;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(24[8:11])
    
    wire CLOCK_c /* synthesis SET_AS_NETWORK=CLOCK_c, is_clock=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(22[7:12])
    
    wire GND_net, VCC_net, RESET_c, MSB_c_19, n20, n19, n18, n17, 
        n16, n15, n14, n13, n12, n11, n10, n9, n8, n7, n6, 
        n5, n4, n3, n2, n86, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104, n105, n153, n152, n151, n150, n149, n148, 
        n147, n146, n145, n144;
    
    VHI i2 (.Z(VCC_net));
    OB MSB_pad (.I(MSB_c_19), .O(MSB));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(24[8:11])
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX count_12__i19 (.D(n86), .CK(CLOCK_c), .CD(RESET_c), .Q(MSB_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i19.GSR = "ENABLED";
    IB CLOCK_pad (.I(CLOCK), .O(CLOCK_c));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(22[7:12])
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX count_12__i0 (.D(n105), .CK(CLOCK_c), .CD(RESET_c), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i0.GSR = "ENABLED";
    FD1S3IX count_12__i18 (.D(n87), .CK(CLOCK_c), .CD(RESET_c), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i18.GSR = "ENABLED";
    FD1S3IX count_12__i17 (.D(n88), .CK(CLOCK_c), .CD(RESET_c), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i17.GSR = "ENABLED";
    FD1S3IX count_12__i16 (.D(n89), .CK(CLOCK_c), .CD(RESET_c), .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i16.GSR = "ENABLED";
    FD1S3IX count_12__i15 (.D(n90), .CK(CLOCK_c), .CD(RESET_c), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i15.GSR = "ENABLED";
    FD1S3IX count_12__i14 (.D(n91), .CK(CLOCK_c), .CD(RESET_c), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i14.GSR = "ENABLED";
    FD1S3IX count_12__i13 (.D(n92), .CK(CLOCK_c), .CD(RESET_c), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i13.GSR = "ENABLED";
    FD1S3IX count_12__i12 (.D(n93), .CK(CLOCK_c), .CD(RESET_c), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i12.GSR = "ENABLED";
    FD1S3IX count_12__i11 (.D(n94), .CK(CLOCK_c), .CD(RESET_c), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i11.GSR = "ENABLED";
    FD1S3IX count_12__i10 (.D(n95), .CK(CLOCK_c), .CD(RESET_c), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i10.GSR = "ENABLED";
    FD1S3IX count_12__i9 (.D(n96), .CK(CLOCK_c), .CD(RESET_c), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i9.GSR = "ENABLED";
    FD1S3IX count_12__i8 (.D(n97), .CK(CLOCK_c), .CD(RESET_c), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i8.GSR = "ENABLED";
    FD1S3IX count_12__i7 (.D(n98), .CK(CLOCK_c), .CD(RESET_c), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i7.GSR = "ENABLED";
    FD1S3IX count_12__i6 (.D(n99), .CK(CLOCK_c), .CD(RESET_c), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i6.GSR = "ENABLED";
    FD1S3IX count_12__i5 (.D(n100), .CK(CLOCK_c), .CD(RESET_c), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i5.GSR = "ENABLED";
    FD1S3IX count_12__i4 (.D(n101), .CK(CLOCK_c), .CD(RESET_c), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i4.GSR = "ENABLED";
    FD1S3IX count_12__i3 (.D(n102), .CK(CLOCK_c), .CD(RESET_c), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i3.GSR = "ENABLED";
    FD1S3IX count_12__i2 (.D(n103), .CK(CLOCK_c), .CD(RESET_c), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i2.GSR = "ENABLED";
    FD1S3IX count_12__i1 (.D(n104), .CK(CLOCK_c), .CD(RESET_c), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12__i1.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D count_12_add_4_21 (.A0(MSB_c_19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n153), .S0(n86));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_21.INIT0 = 16'hfaaa;
    defparam count_12_add_4_21.INIT1 = 16'h0000;
    defparam count_12_add_4_21.INJECT1_0 = "NO";
    defparam count_12_add_4_21.INJECT1_1 = "NO";
    CCU2D count_12_add_4_19 (.A0(n3), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n152), 
          .COUT(n153), .S0(n88), .S1(n87));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_19.INIT0 = 16'hfaaa;
    defparam count_12_add_4_19.INIT1 = 16'hfaaa;
    defparam count_12_add_4_19.INJECT1_0 = "NO";
    defparam count_12_add_4_19.INJECT1_1 = "NO";
    CCU2D count_12_add_4_17 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n151), 
          .COUT(n152), .S0(n90), .S1(n89));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_17.INIT0 = 16'hfaaa;
    defparam count_12_add_4_17.INIT1 = 16'hfaaa;
    defparam count_12_add_4_17.INJECT1_0 = "NO";
    defparam count_12_add_4_17.INJECT1_1 = "NO";
    CCU2D count_12_add_4_15 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n150), 
          .COUT(n151), .S0(n92), .S1(n91));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_15.INIT0 = 16'hfaaa;
    defparam count_12_add_4_15.INIT1 = 16'hfaaa;
    defparam count_12_add_4_15.INJECT1_0 = "NO";
    defparam count_12_add_4_15.INJECT1_1 = "NO";
    CCU2D count_12_add_4_13 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n149), 
          .COUT(n150), .S0(n94), .S1(n93));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_13.INIT0 = 16'hfaaa;
    defparam count_12_add_4_13.INIT1 = 16'hfaaa;
    defparam count_12_add_4_13.INJECT1_0 = "NO";
    defparam count_12_add_4_13.INJECT1_1 = "NO";
    CCU2D count_12_add_4_11 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n148), 
          .COUT(n149), .S0(n96), .S1(n95));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_11.INIT0 = 16'hfaaa;
    defparam count_12_add_4_11.INIT1 = 16'hfaaa;
    defparam count_12_add_4_11.INJECT1_0 = "NO";
    defparam count_12_add_4_11.INJECT1_1 = "NO";
    CCU2D count_12_add_4_9 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n147), 
          .COUT(n148), .S0(n98), .S1(n97));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_9.INIT0 = 16'hfaaa;
    defparam count_12_add_4_9.INIT1 = 16'hfaaa;
    defparam count_12_add_4_9.INJECT1_0 = "NO";
    defparam count_12_add_4_9.INJECT1_1 = "NO";
    CCU2D count_12_add_4_7 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n146), 
          .COUT(n147), .S0(n100), .S1(n99));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_7.INIT0 = 16'hfaaa;
    defparam count_12_add_4_7.INIT1 = 16'hfaaa;
    defparam count_12_add_4_7.INJECT1_0 = "NO";
    defparam count_12_add_4_7.INJECT1_1 = "NO";
    CCU2D count_12_add_4_5 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n145), 
          .COUT(n146), .S0(n102), .S1(n101));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_5.INIT0 = 16'hfaaa;
    defparam count_12_add_4_5.INIT1 = 16'hfaaa;
    defparam count_12_add_4_5.INJECT1_0 = "NO";
    defparam count_12_add_4_5.INJECT1_1 = "NO";
    CCU2D count_12_add_4_3 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n144), 
          .COUT(n145), .S0(n104), .S1(n103));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_3.INIT0 = 16'hfaaa;
    defparam count_12_add_4_3.INIT1 = 16'hfaaa;
    defparam count_12_add_4_3.INJECT1_0 = "NO";
    defparam count_12_add_4_3.INJECT1_1 = "NO";
    CCU2D count_12_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n144), .S1(n105));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(55[13:22])
    defparam count_12_add_4_1.INIT0 = 16'hF000;
    defparam count_12_add_4_1.INIT1 = 16'h0555;
    defparam count_12_add_4_1.INJECT1_0 = "NO";
    defparam count_12_add_4_1.INJECT1_1 = "NO";
    IB RESET_pad (.I(RESET), .O(RESET_c));   // c:/lattice/makefpga/source/appmodules/freqdiv20bit.v(23[7:12])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

