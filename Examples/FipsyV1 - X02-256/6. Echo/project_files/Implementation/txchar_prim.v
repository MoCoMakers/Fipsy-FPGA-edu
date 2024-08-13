// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.1.119
// Netlist written on Fri Oct 27 03:30:10 2017
//
// Verilog Description of module txchar
//

module txchar (clk, rstn, tx) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(16[8:14])
    input clk;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(17[22:25])
    input rstn;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(18[22:26])
    output tx;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(19[23:25])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(17[22:25])
    
    wire GND_net, VCC_net, rstn_c, tx_c;
    wire [3:0]bitc;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(38[11:15])
    
    wire load, baud_en, n11, clk_c_enable_13, n200;
    wire [6:0]divcounter;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    
    wire n143, n532, n471, n12, n323, n142, n11_adj_72, n308, 
        n562, n521, n561;
    
    VHI i2 (.Z(VCC_net));
    IB rstn_pad (.I(rstn), .O(rstn_c));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(18[22:26])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(17[22:25])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1_2_lut_rep_11 (.A(divcounter[4]), .B(divcounter[3]), .Z(n562)) /* synthesis lut_function=(A+(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i1_2_lut_rep_11.init = 16'heeee;
    LUT4 i4_3_lut_4_lut (.A(divcounter[4]), .B(divcounter[3]), .C(baud_en), 
         .D(divcounter[0]), .Z(n11_adj_72)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i4_3_lut_4_lut.init = 16'hffef;
    OB tx_pad (.I(tx_c), .O(tx));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(19[23:25])
    LUT4 i444_3_lut_4_lut (.A(divcounter[0]), .B(divcounter[2]), .C(divcounter[1]), 
         .D(divcounter[3]), .Z(n143)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i444_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5_4_lut (.A(divcounter[1]), .B(divcounter[2]), .C(divcounter[5]), 
         .D(divcounter[6]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(rstn_c), .B(load), .C(n11_adj_72), .D(n12), .Z(clk_c_enable_13)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdddf;
    LUT4 i312_4_lut_3_lut (.A(divcounter[4]), .B(divcounter[6]), .C(divcounter[3]), 
         .Z(n308)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i312_4_lut_3_lut.init = 16'h6868;
    LUT4 i1_2_lut_3_lut_4_lut (.A(divcounter[0]), .B(divcounter[2]), .C(divcounter[5]), 
         .D(divcounter[1]), .Z(n521)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i539_4_lut (.A(divcounter[1]), .B(divcounter[5]), .C(divcounter[6]), 
         .D(n561), .Z(n532)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i539_4_lut.init = 16'h8000;
    LUT4 i36_2_lut (.A(bitc[1]), .B(bitc[0]), .Z(n200)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(38[11:15])
    defparam i36_2_lut.init = 16'h6666;
    LUT4 i20_2_lut (.A(bitc[0]), .B(clk_c_enable_13), .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(45[5:12])
    defparam i20_2_lut.init = 16'h6666;
    TSALL TSALL_INST (.TSALL(GND_net));
    uart_tx TX0 (.clk_c(clk_c), .clk_c_enable_13(clk_c_enable_13), .bitc({Open_0, 
            Open_1, bitc[1:0]}), .n11(n11), .tx_c(tx_c), .n9({baud_en, 
            load}), .n200(n200), .divcounter({divcounter}), .n532(n532), 
            .rstn_c(rstn_c), .n562(n562), .n323(n323), .n561(n561), 
            .n308(n308), .n521(n521), .n143(n143), .n471(n471), .n142(n142)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(26[5] 32[2])
    LUT4 i449_2_lut_rep_10 (.A(divcounter[0]), .B(divcounter[2]), .Z(n561)) /* synthesis lut_function=(A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(44[13:23])
    defparam i449_2_lut_rep_10.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i557 (.Z(GND_net));
    PFUMX i327 (.BLUT(n471), .ALUT(n142), .C0(divcounter[5]), .Z(n323));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_tx
//

module uart_tx (clk_c, clk_c_enable_13, bitc, n11, tx_c, n9, n200, 
            divcounter, n532, rstn_c, n562, n323, n561, n308, 
            n521, n143, n471, n142) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input clk_c_enable_13;
    output [3:0]bitc;
    input n11;
    output tx_c;
    output [1:0]n9;
    input n200;
    output [6:0]divcounter;
    input n532;
    input rstn_c;
    input n562;
    input n323;
    input n561;
    input n308;
    input n521;
    input n143;
    output n471;
    output n142;
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(17[22:25])
    wire [9:0]shifter;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(70[11:18])
    
    wire n563;
    wire [9:0]shifter_9__N_30;
    
    wire n268;
    wire [1:0]next_state;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(55[11:21])
    wire [1:0]next_state_1__N_15;
    wire [1:0]state;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(54[11:16])
    
    wire n564;
    wire [3:0]bitc_c;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(38[11:15])
    wire [3:0]n197;
    wire [1:0]n8;
    wire [6:0]divcounter_6__N_61;
    
    wire n472, n560, n4;
    
    FD1P3JX shifter_i6 (.D(shifter_9__N_30[6]), .SP(clk_c_enable_13), .PD(n563), 
            .CK(clk_c), .Q(shifter[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i6.GSR = "ENABLED";
    FD1P3JX shifter_i1 (.D(shifter_9__N_30[1]), .SP(clk_c_enable_13), .PD(n563), 
            .CK(clk_c), .Q(shifter[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i1.GSR = "ENABLED";
    FD1S3IX bitc__i0 (.D(n11), .CK(clk_c), .CD(n268), .Q(bitc[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam bitc__i0.GSR = "ENABLED";
    FD1S3AX tx_47 (.D(shifter[0]), .CK(clk_c), .Q(tx_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(104[8] 105[20])
    defparam tx_47.GSR = "ENABLED";
    FD1S3AX next_state_i0 (.D(next_state_1__N_15[0]), .CK(clk_c), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(129[8] 167[4])
    defparam next_state_i0.GSR = "ENABLED";
    FD1S3IX baud_en_51_i0 (.D(state[0]), .CK(clk_c), .CD(state[1]), .Q(n9[0]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam baud_en_51_i0.GSR = "ENABLED";
    FD1P3JX shifter_i7 (.D(shifter_9__N_30[7]), .SP(clk_c_enable_13), .PD(n563), 
            .CK(clk_c), .Q(shifter[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i7.GSR = "ENABLED";
    FD1S3IX state__i0 (.D(next_state[0]), .CK(clk_c), .CD(n563), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(122[8] 126[25])
    defparam state__i0.GSR = "ENABLED";
    FD1P3JX shifter_i9 (.D(n564), .SP(clk_c_enable_13), .PD(n563), .CK(clk_c), 
            .Q(shifter[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i9.GSR = "ENABLED";
    FD1P3JX shifter_i2 (.D(shifter[3]), .SP(clk_c_enable_13), .PD(n268), 
            .CK(clk_c), .Q(shifter[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i2.GSR = "ENABLED";
    FD1P3JX shifter_i3 (.D(shifter_9__N_30[3]), .SP(clk_c_enable_13), .PD(n563), 
            .CK(clk_c), .Q(shifter[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i3.GSR = "ENABLED";
    FD1P3JX shifter_i0 (.D(shifter[1]), .SP(clk_c_enable_13), .PD(n268), 
            .CK(clk_c), .Q(shifter[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i0.GSR = "ENABLED";
    FD1P3JX shifter_i4 (.D(shifter_9__N_30[4]), .SP(clk_c_enable_13), .PD(n563), 
            .CK(clk_c), .Q(shifter[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i4.GSR = "ENABLED";
    FD1P3JX shifter_i8 (.D(shifter[9]), .SP(clk_c_enable_13), .PD(n268), 
            .CK(clk_c), .Q(shifter[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i8.GSR = "ENABLED";
    LUT4 i88_3_lut_4_lut (.A(bitc[0]), .B(bitc[1]), .C(bitc_c[2]), .D(bitc_c[3]), 
         .Z(n197[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam i88_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX bitc__i1 (.D(n200), .SP(clk_c_enable_13), .CD(n268), .CK(clk_c), 
            .Q(bitc[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam bitc__i1.GSR = "ENABLED";
    FD1P3IX bitc__i2 (.D(n197[2]), .SP(clk_c_enable_13), .CD(n268), .CK(clk_c), 
            .Q(bitc_c[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam bitc__i2.GSR = "ENABLED";
    FD1P3IX bitc__i3 (.D(n197[3]), .SP(clk_c_enable_13), .CD(n268), .CK(clk_c), 
            .Q(bitc_c[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam bitc__i3.GSR = "ENABLED";
    FD1S3AX next_state_i1 (.D(next_state_1__N_15[1]), .CK(clk_c), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(129[8] 167[4])
    defparam next_state_i1.GSR = "ENABLED";
    FD1S3AX baud_en_51_i1 (.D(n8[1]), .CK(clk_c), .Q(n9[1]));   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam baud_en_51_i1.GSR = "ENABLED";
    FD1S3IX state__i1 (.D(next_state[1]), .CK(clk_c), .CD(n563), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(122[8] 126[25])
    defparam state__i1.GSR = "ENABLED";
    FD1P3JX shifter_i5 (.D(shifter_9__N_30[5]), .SP(clk_c_enable_13), .PD(n563), 
            .CK(clk_c), .Q(shifter[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=26, LSE_RLINE=32 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(76[8] 87[37])
    defparam shifter_i5.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut (.A(n9[0]), .B(shifter[5]), .Z(shifter_9__N_30[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut (.A(n9[1]), .B(divcounter[0]), .C(divcounter[2]), .D(divcounter[1]), 
         .Z(divcounter_6__N_61[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_4_lut.init = 16'h7df5;
    LUT4 i551_4_lut (.A(n532), .B(rstn_c), .C(n562), .D(n9[1]), .Z(n472)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)))) */ ;
    defparam i551_4_lut.init = 16'h3bff;
    LUT4 i1_2_lut_rep_9 (.A(bitc[0]), .B(bitc[1]), .Z(n560)) /* synthesis lut_function=(A (B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam i1_2_lut_rep_9.init = 16'h8888;
    LUT4 i1_4_lut_adj_2 (.A(n9[1]), .B(divcounter[5]), .C(n323), .D(n561), 
         .Z(divcounter_6__N_61[5])) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_4_lut_adj_2.init = 16'hf5dd;
    LUT4 i42_1_lut_rep_12 (.A(rstn_c), .Z(n563)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(18[22:26])
    defparam i42_1_lut_rep_12.init = 16'h5555;
    LUT4 i1_4_lut_adj_3 (.A(n9[1]), .B(divcounter[6]), .C(n308), .D(n521), 
         .Z(divcounter_6__N_61[6])) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_4_lut_adj_3.init = 16'hf5dd;
    LUT4 i1_2_lut (.A(n9[0]), .B(shifter[7]), .Z(shifter_9__N_30[6])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i543_2_lut (.A(state[0]), .B(state[1]), .Z(next_state_1__N_15[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i543_2_lut.init = 16'h9999;
    LUT4 i1_2_lut_2_lut_adj_4 (.A(rstn_c), .B(n9[0]), .Z(n268)) /* synthesis lut_function=((B)+!A) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(18[22:26])
    defparam i1_2_lut_2_lut_adj_4.init = 16'hdddd;
    LUT4 i1_2_lut_adj_5 (.A(n9[0]), .B(shifter[8]), .Z(shifter_9__N_30[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut_adj_5.init = 16'h4444;
    LUT4 i547_2_lut (.A(n9[1]), .B(divcounter[0]), .Z(divcounter_6__N_61[0])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i547_2_lut.init = 16'h7777;
    LUT4 i553_4_lut (.A(state[0]), .B(state[1]), .C(n560), .D(n4), .Z(next_state_1__N_15[1])) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i553_4_lut.init = 16'haeee;
    LUT4 i53_1_lut_rep_13 (.A(n9[0]), .Z(n564)) /* synthesis lut_function=(!(A)) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i53_1_lut_rep_13.init = 16'h5555;
    LUT4 i81_2_lut_3_lut (.A(bitc[0]), .B(bitc[1]), .C(bitc_c[2]), .Z(n197[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(92[8] 99[22])
    defparam i81_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_2_lut_adj_6 (.A(n9[0]), .B(shifter[4]), .Z(shifter_9__N_30[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut_2_lut_adj_6.init = 16'h4444;
    LUT4 i1_3_lut (.A(n9[1]), .B(divcounter[1]), .C(divcounter[0]), .Z(divcounter_6__N_61[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_3_lut.init = 16'h7d7d;
    LUT4 i1_2_lut_2_lut_adj_7 (.A(n9[0]), .B(shifter[6]), .Z(shifter_9__N_30[5])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut_2_lut_adj_7.init = 16'h4444;
    LUT4 i1_2_lut_adj_8 (.A(n9[0]), .B(shifter[2]), .Z(shifter_9__N_30[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut_adj_8.init = 16'h4444;
    LUT4 i1_2_lut_adj_9 (.A(bitc_c[2]), .B(bitc_c[3]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i1_2_lut_adj_9.init = 16'h4444;
    LUT4 i153_2_lut (.A(state[0]), .B(state[1]), .Z(n8[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(136[3] 166[10])
    defparam i153_2_lut.init = 16'h6666;
    baudgen_tx BAUD0 (.divcounter({divcounter}), .clk_c(clk_c), .n563(n563), 
            .\divcounter_6__N_61[0] (divcounter_6__N_61[0]), .\divcounter_6__N_61[1] (divcounter_6__N_61[1]), 
            .n561(n561), .\divcounter_6__N_61[2] (divcounter_6__N_61[2]), 
            .n472(n472), .\divcounter_6__N_61[5] (divcounter_6__N_61[5]), 
            .\divcounter_6__N_61[6] (divcounter_6__N_61[6]), .n143(n143), 
            .n471(n471), .n142(n142)) /* synthesis syn_module_defined=1 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/uart_tx.v(109[1] 114[4])
    
endmodule
//
// Verilog Description of module baudgen_tx
//

module baudgen_tx (divcounter, clk_c, n563, \divcounter_6__N_61[0] , 
            \divcounter_6__N_61[1] , n561, \divcounter_6__N_61[2] , n472, 
            \divcounter_6__N_61[5] , \divcounter_6__N_61[6] , n143, n471, 
            n142) /* synthesis syn_module_defined=1 */ ;
    output [6:0]divcounter;
    input clk_c;
    input n563;
    input \divcounter_6__N_61[0] ;
    input \divcounter_6__N_61[1] ;
    input n561;
    input \divcounter_6__N_61[2] ;
    input n472;
    input \divcounter_6__N_61[5] ;
    input \divcounter_6__N_61[6] ;
    input n143;
    output n471;
    output n142;
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/txchar.v(17[22:25])
    wire [6:0]n139;
    
    FD1S3IX divcounter__i0 (.D(\divcounter_6__N_61[0] ), .CK(clk_c), .CD(n563), 
            .Q(divcounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i0.GSR = "ENABLED";
    FD1S3IX divcounter__i1 (.D(\divcounter_6__N_61[1] ), .CK(clk_c), .CD(n563), 
            .Q(divcounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i1.GSR = "ENABLED";
    LUT4 i458_3_lut_4_lut (.A(divcounter[1]), .B(n561), .C(divcounter[3]), 
         .D(divcounter[4]), .Z(n139[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam i458_3_lut_4_lut.init = 16'h7f80;
    FD1S3IX divcounter__i2 (.D(\divcounter_6__N_61[2] ), .CK(clk_c), .CD(n563), 
            .Q(divcounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i2.GSR = "ENABLED";
    FD1S3IX divcounter__i4 (.D(n139[4]), .CK(clk_c), .CD(n472), .Q(divcounter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i4.GSR = "ENABLED";
    FD1S3IX divcounter__i5 (.D(\divcounter_6__N_61[5] ), .CK(clk_c), .CD(n563), 
            .Q(divcounter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i5.GSR = "ENABLED";
    FD1S3IX divcounter__i6 (.D(\divcounter_6__N_61[6] ), .CK(clk_c), .CD(n563), 
            .Q(divcounter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i6.GSR = "ENABLED";
    FD1S3IX divcounter__i3 (.D(n143), .CK(clk_c), .CD(n472), .Q(divcounter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=1, LSE_RCOL=4, LSE_LLINE=109, LSE_RLINE=114 */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam divcounter__i3.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(divcounter[3]), .B(divcounter[4]), .C(divcounter[1]), 
         .Z(n471)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_4_lut (.A(divcounter[1]), .B(divcounter[6]), .C(divcounter[4]), 
         .D(divcounter[3]), .Z(n142)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/programs/hubic/maker/business/fpga/education/fipsy midi merger/project/makefpga_diamondproject/source/baudgen_tx.v(46[8] 57[32])
    defparam i1_4_lut.init = 16'h5ff7;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

