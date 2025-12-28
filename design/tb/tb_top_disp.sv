`timescale 1ns/1ns

import defs_pkg::*;

// Simple Testbench for top_disp
module tb_top_disp;

    // Clock and reset
    logic clk;
    logic rst_n;

    // Inputs
    logic [DATA_WIDTH-1:0] SW;
    logic BTNC;
    logic RX_LINE;

    // Outputs
    logic [MAX_DIGITS_DISP-1:0] AN;
    logic [6:0] SEG7;
    logic LED_TOGGLE;
    logic DP;
    logic TX_LINE;
    logic [7:0] LED;

    // DUT instantiation
    top_disp DUT (
        .clk(clk),
        .rst_n(rst_n),
        .SW(SW),
        .BTNC(BTNC),
        .RX_LINE(RX_LINE),
        .AN(AN),
        .SEG7(SEG7),
        .LED_TOGGLE(LED_TOGGLE),
        .DP(DP),
        .TX_LINE(TX_LINE),
        .LED(LED)
    );

    // Clock generation (100 MHz -> period 10 ns)
    localparam int CLK_PER = 10;
    initial begin
        clk = 0;
        forever #(CLK_PER/2) clk = ~clk;
    end

    // Baud rate timing for serial (BR=57600, bit time ~17361 ns)
    localparam real BIT_TIME = 1_000_000_000.0 / BR; // in ns

    // Test sequence
    initial begin
        // Reset
        rst_n = 0;
        SW = '0;
        BTNC = 0;
        RX_LINE = 1; // Idle high
        #(5 * CLK_PER);
        rst_n = 1;
        #(5 * CLK_PER);

        // // Test TX mode: Set SW to TX (0), img_size=00, speed=00, bytes_din=0xAB
        // SW = {1'b0, 2'b00, 2'b00, 8'hAB};
        // #(CLK_PER);
        // BTNC = 1; // Press button
        // #(DEBOUNCE_CYCLE * CLK_PER); // Wait debounce
        // BTNC = 0;
        // #(10 * CLK_PER);

        // // Monitor TX_LINE for transmitted byte (simple check)
        // @(negedge TX_LINE); // Start bit
        // #(BIT_TIME * 10); // Wait for one byte
        // $display("[%0t] TX mode tested - check TX_LINE manually or add assertions.", $time);

        // // Wait some time
        // #(10000 * CLK_PER);

        // Test RX mode: Set SW to RX (1), img_size=00, speed=00, bytes_din=0x00
        SW = {1'b1, 2'b00, 2'b00, 8'h00};
        #(CLK_PER);
        BTNC = 1;
        #(DEBOUNCE_CYCLE * CLK_PER);
        BTNC = 0;
        #(10 * CLK_PER);

        // Send a valid frame to RX: {R010.C020.V030}
        send_frame(10, 20, 30);

        // Wait for processing
        #(100 * BIT_TIME);

        // Simple check: Display should update to row=0A, col=14, 00, pixel=1E (30 decimal=1E hex)
        if (DUT.hex_disp_vec == {8'h0A, 8'h14, 8'h00, 8'h1E}) begin
            $display("[%0t] RX display check PASSED.", $time);
        end else begin
            $error("[%0t] RX display check FAILED. Got: 0x%h", $time, DUT.hex_disp_vec);
        end

        // Finish
        #(100 * CLK_PER);
        $display("Simple test completed.");
        $finish;
    end

    // Simple task to send a frame (valid data)
    task send_frame(
        input logic [7:0] row,
        input logic [7:0] col,
        input logic [7:0] pixel
    );
        string row_str, col_str, pixel_str;
        begin
            $sformat(row_str, "%03d", row);
            $sformat(col_str, "%03d", col);
            $sformat(pixel_str, "%03d", pixel);

            send_byte(8'h7B); // {
            send_byte(8'h52); // R
            repeat(3) begin
                send_byte(row_str.getc(0));
                row_str = row_str.substr(1, row_str.len()-1);
            end
            send_byte(8'h2E); // .
            send_byte(8'h43); // C
            repeat(3) begin
                send_byte(col_str.getc(0));
                col_str = col_str.substr(1, col_str.len()-1);
            end
            send_byte(8'h2E); // .
            send_byte(8'h56); // V
            repeat(3) begin
                send_byte(pixel_str.getc(0));
                pixel_str = pixel_str.substr(1, pixel_str.len()-1);
            end
            send_byte(8'h7D); // }
        end
    endtask

    // Send single byte
    task send_byte(input logic [7:0] data);
        int i;
        begin
            $display("[%0t] Sending byte 0x%h - RX_LINE going to 0", $time, data);
            RX_LINE = 0; // Start
            #BIT_TIME;
            for (i = 0; i < 8; i++) begin
                RX_LINE = data[i];
                #BIT_TIME;
            end
            RX_LINE = 1; // Stop
            #BIT_TIME;
        end
    endtask

endmodule