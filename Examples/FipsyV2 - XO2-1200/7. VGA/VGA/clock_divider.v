module ClockDivider (
    input wire INTERNAL_OSC,   // Input clock at 38 MHz
    output reg clk_out_25mhz   // Output clock at 25 MHz
);

    reg [6:0] counter = 0;     // 7-bit counter to divide the clock

    always @(posedge INTERNAL_OSC) begin
        counter <= counter + 1;
        if (counter == 1) begin
            clk_out_25mhz <= ~clk_out_25mhz;  // Toggle the output clock
            counter <= 0;                     // Reset the counter
        end
    end

endmodule
