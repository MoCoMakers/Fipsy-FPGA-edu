
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

`include "VGA.v"

module Clock(output reg clock);
    initial begin
        #0 clock = 0;
    end

    always begin
        #20 clock <= ~clock;
    end
endmodule

module TestBench;
    initial begin
        $dumpfile("vcd/TestBench.vcd");
        $dumpvars(0, TestBench);
        cycle_count = 0;
    end

    reg [31:0] cycle_count;

    wire i_Clk;

    Clock cg0(i_Clk);

    wire  i_Switch_1;
    wire  i_Switch_2;
    wire  i_Switch_3;
    wire  i_Switch_4;

    // VGA
    wire o_VGA_HSync;
    wire o_VGA_VSync;
    wire o_VGA_Red_0;
    wire o_VGA_Red_1;
    wire o_VGA_Red_2;
    wire o_VGA_Grn_0;
    wire o_VGA_Grn_1;
    wire o_VGA_Grn_2;
    wire o_VGA_Blu_0;
    wire o_VGA_Blu_1;
    wire o_VGA_Blu_2;

    wire Segment1_A;
    wire Segment1_B;
    wire Segment1_C;
    wire Segment1_D;
    wire Segment1_E;
    wire Segment1_F;
    wire Segment1_G;
    wire Segment2_A;
    wire Segment2_B;
    wire Segment2_C;
    wire Segment2_D;
    wire Segment2_E;
    wire Segment2_F;
    wire Segment2_G;
    wire LED_1;
    wire LED_2;
    wire LED_3;
    wire LED_4;

    VGA vga(
        i_Clk,
        i_Switch_1,
        i_Switch_2,
        i_Switch_3,
        i_Switch_4,

        // VGA
        o_VGA_HSync,
        o_VGA_VSync,
        o_VGA_Red_0,
        o_VGA_Red_1,
        o_VGA_Red_2,
        o_VGA_Grn_0,
        o_VGA_Grn_1,
        o_VGA_Grn_2,
        o_VGA_Blu_0,
        o_VGA_Blu_1,
        o_VGA_Blu_2,

        Segment1_A,
        Segment1_B,
        Segment1_C,
        Segment1_D,
        Segment1_E,
        Segment1_F,
        Segment1_G,
        Segment2_A,
        Segment2_B,
        Segment2_C,
        Segment2_D,
        Segment2_E,
        Segment2_F,
        Segment2_G,
        LED_1,
        LED_2,
        LED_3,
        LED_4);
    
    always @(posedge i_Clk) begin
        cycle_count <= cycle_count + 1;
        if (cycle_count > 810*3) begin
            $finish;
        end
    end
endmodule
