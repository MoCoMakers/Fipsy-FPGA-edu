
module VGA (
    input  i_Clk,
    input  i_Switch_1,
    input  i_Switch_2,
    input  i_Switch_3,
    input  i_Switch_4,

    // VGA
    output o_VGA_HSync,
    output o_VGA_VSync,
    output o_VGA_Red_0,
    output o_VGA_Red_1,
    output o_VGA_Red_2,
    output o_VGA_Grn_0,
    output o_VGA_Grn_1,
    output o_VGA_Grn_2,
    output o_VGA_Blu_0,
    output o_VGA_Blu_1,
    output o_VGA_Blu_2,

    output LED_1
);

    reg [23:0] led_count = 0;
    reg [3:0] left_digit, right_digit;
    wire [6:0] left_digit_segments, right_digit_segments;

    // LEDs are for operational display only, it's a nice sanity check
    assign { LED_1} = led_count[23];

    // Beam row/column positions
    reg [9:0] column, row;

    // VGA RGB 3-bit DAC signals
    wire [2:0] red, green, blue;

    // 9-bit beam color (RGB)
    reg [8:0] color;

    // Ball and paddle center positions
    reg [9:0] ball_x, ball_y, ball_dx, ball_dy;
    reg [9:0] paddle_left_y, paddle_right_y;

    reg [1:0] game_state;
    reg hsync, vsync;

    localparam H_ACTIVE = 10'd640;
    localparam H_FPORCH = 10'd16;
    localparam H_PULSE = 10'd96;
    localparam H_MAX = 10'd800;

    localparam V_ACTIVE = 10'd480;
    localparam V_FPORCH = 10'd10;
    localparam V_PULSE = 10'd2;
    localparam V_MAX = 10'd525;

    localparam PADDLE_HEIGHT_2 = 10'd30;
    localparam PADDLE_WIDTH = 10'd10;
    localparam BALL_SIZE_2 = 10'd3;

    localparam IDLE = 2'd0;
    localparam PLAY = 2'd1;

    initial begin
        row = 0;
        column = 0;
        color = 0;
        ball_x <= H_ACTIVE >> 1;
        ball_y <= V_ACTIVE >> 1;

        ball_dx = 1;
        ball_dy = 1;
        paddle_left_y = V_ACTIVE >> 1;
        paddle_right_y = V_ACTIVE >> 1;
        left_digit = 0;
        right_digit = 0;
        game_state = IDLE;
        hsync = 1'b1;
        vsync = 1'b1;
    end

    // See https://vanhunteradams.com/DE1/VGA_Driver/Driver.html
    // Generate horizontal and vertical sync pulses based on row/column position
    assign o_VGA_HSync = hsync;
    assign o_VGA_VSync = vsync;

    // Generate beam color in active area only
    assign { o_VGA_Red_2, o_VGA_Red_1, o_VGA_Red_0 } = (column < H_ACTIVE && row < V_ACTIVE) ? red : 0;
    assign { o_VGA_Grn_2, o_VGA_Grn_1, o_VGA_Grn_0 } = (column < H_ACTIVE && row < V_ACTIVE) ? green : 0;
    assign { o_VGA_Blu_2, o_VGA_Blu_1, o_VGA_Blu_0  } = (column < H_ACTIVE && row < V_ACTIVE) ? blue : 0;

    // 9-bit beam color
    assign { red, green, blue } = color;

    // Combinational logic to generate color for each "pixel", e.g. "Racing the Beam"
    always @(*) begin
        color = 0;
        if ((ball_y - row < BALL_SIZE_2 || row - ball_y < BALL_SIZE_2)
                && (ball_x - column < BALL_SIZE_2 || column - ball_x < BALL_SIZE_2)) begin
            color = 9'b000111000;
        end
        if ((paddle_left_y - row < PADDLE_HEIGHT_2 || row - paddle_left_y < PADDLE_HEIGHT_2)
                && column < PADDLE_WIDTH) begin
            color = 9'b111111000;
        end
        if ((paddle_right_y - row < PADDLE_HEIGHT_2 || row - paddle_right_y < PADDLE_HEIGHT_2)
                && column > H_ACTIVE-PADDLE_WIDTH) begin
            color = 9'b000111111;
        end
    end

    always @(posedge i_Clk) begin
        column <= column + 1;
        if (column == H_MAX-1) begin
            column <= 0;
            row <= row + 1;
            if (row == V_MAX-1) begin
                row <= 0;
            end
        end
        if (column == H_ACTIVE+H_FPORCH-10'd1) hsync <= 1'b0;
        if (column == H_ACTIVE+H_FPORCH+H_PULSE-10'd1) hsync <= 1'b1;
        if (row == V_ACTIVE+V_FPORCH-10'd1) vsync <= 1'b0;
        if (row == V_ACTIVE+V_FPORCH+V_PULSE-10'd1) vsync <= 1'b1;

        led_count <= led_count + 1;

        // led_count is used for game refresh rate
        if (led_count[16:0] == 0) begin
            if (game_state == IDLE) begin
                ball_x <= H_ACTIVE >> 1;
                ball_y <= V_ACTIVE >> 1;
                if (i_Switch_1) game_state <= PLAY;
            end
            if (game_state == PLAY) begin
                ball_x <= ball_x + ball_dx;
                ball_y <= ball_y + ball_dy;
            end
            if (ball_x == H_ACTIVE) begin
                if (ball_y - paddle_right_y < PADDLE_HEIGHT_2 || paddle_right_y - ball_y < PADDLE_HEIGHT_2) begin
                    ball_x <= H_ACTIVE-1;
                    ball_dx <= ~ball_dx + 1;
                end else begin
                    // Left player wins..
                    left_digit <= left_digit + 1;
                    game_state <= IDLE;
                end
            end
            if (ball_x == 0) begin
                if (ball_y - paddle_left_y < PADDLE_HEIGHT_2 || paddle_left_y - ball_y < PADDLE_HEIGHT_2) begin
                    ball_x <= 1;
                    ball_dx <= ~ball_dx + 1;
                end else begin
                    // Right player wins..
                    right_digit <= right_digit + 1;
                    game_state <= IDLE;
                end
            end
            if (ball_y == V_ACTIVE) begin
                ball_y <= V_ACTIVE-1;
                ball_dy <= ~ball_dy + 1;
            end
            if (ball_y == 0) begin
                ball_y <= 1;
                ball_dy <= ~ball_dy + 1;
            end

            if (i_Switch_1 && paddle_left_y > PADDLE_HEIGHT_2) paddle_left_y <= paddle_left_y - 1;
            if (i_Switch_2 && paddle_left_y < V_ACTIVE-PADDLE_HEIGHT_2) paddle_left_y <= paddle_left_y + 1;
            if (i_Switch_3 && paddle_right_y > PADDLE_HEIGHT_2) paddle_right_y <= paddle_right_y - 1;
            if (i_Switch_4 && paddle_right_y < V_ACTIVE-PADDLE_HEIGHT_2) paddle_right_y <= paddle_right_y + 1;
        end
    end
endmodule
