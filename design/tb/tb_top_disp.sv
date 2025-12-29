`timescale 1ns/1ns

import defs_pkg::*;

// Simple Testbench for top_disp
module tb_top_disp;

    // Clock and reset
    logic clk;
    logic rst_n;

    // Inputs
    logic BTNU;
    logic BTND;
    logic BTNR;       
    logic BTNL;   
    logic BTNC;
    logic RX_LINE;

    // Outputs
    logic [MAX_DIGITS_DISP-1:0] AN;
    logic [6:0] SEG7;
    logic LED_TOGGLE;
    logic DP;
    logic [7:0] LED;

     logic LED16_R;
     logic LED16_G;
     logic LED16_B;
     logic LED17_R;
     logic LED17_G;
     logic LED17_B;

    // DUT instantiation
    top_disp DUT (
        .clk(clk),
        .rst_n(rst_n),
        .BTNU(BTNU),
        .BTND(BTND),
        .BTNR(BTNR),
        .BTNL(BTNL),
        .BTNC(BTNC),
        .RX_LINE(RX_LINE),
        .AN(AN),
        .SEG7(SEG7),
        .LED_TOGGLE(LED_TOGGLE),
        .DP(DP),
        .LED16_R(LED16_R),
        .LED16_G(LED16_G),
        .LED16_B(LED16_B),
        .LED17_R(LED17_R),
        .LED17_G(LED17_G),
        .LED17_B(LED17_B),
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
        reset_BTNS();
        RX_LINE = 1; // Idle high
        wait_cycles(5);
        rst_n = 1;
        press_BTNC(); // Release reset
        wait_cycles(20);
        send_frame(8'd10, 8'd20, 8'd255); // Send pixel data
        wait_cycles(50);
        press_BTNC(); // Press center button
        wait_cycles(20);
        send_led(8'd17); // Send LED index
        wait_cycles(5);
        press_BTNL(); // Press left button
        wait_cycles(2);
        press_BTND(); // Press left button
        wait_cycles(20);
        press_BTND(); // Press right button
        wait_cycles(5);
        send_frame(8'd30, 8'd40, 8'd128); // Send another pixel data
        wait_cycles(10);
        press_BTND(); // Press center button
        // Finish
        wait_cycles(100);
        $display("Simple test completed.");
        $finish;
    end

    task automatic wait_cycles(input int num_cycles);
        begin
            repeat (num_cycles) @(posedge clk);
        end
    endtask

    task automatic press_button(ref logic button,input string name);
        begin
            button = 1;
            $display("[%0t] Pressing button %s", $time, name);
            #(100* DEBOUNCE_CYCLE * CLK_PER); 
            button = 0;
        end
    endtask

        task automatic press_BTNU();
        begin
            press_button(BTNU, "BTNU");
        end endtask 

        task automatic press_BTND();
        begin   
            press_button(BTND, "BTND");
        end endtask         

        task automatic press_BTNL();
        begin
            press_button(BTNL, "BTNL");
        end endtask

        task automatic press_BTNR();
        begin
            press_button(BTNR, "BTNR");
        end endtask

        task automatic press_BTNC();
        begin
            press_button(BTNC , "BTNC");
        end endtask

        task automatic reset_BTNS();
        begin
            BTNU = 0;
            BTND = 0;
            BTNL = 0;
            BTNR = 0;
            BTNC = 0;
        end endtask

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
            send_byte(8'h2C); // ,
            send_byte(8'h47); // G
            repeat(3) begin
                send_byte(col_str.getc(0));
                col_str = col_str.substr(1, col_str.len()-1);
            end
            send_byte(8'h2C); // ,
            send_byte(8'h42); // B
            repeat(3) begin
                send_byte(pixel_str.getc(0));
                pixel_str = pixel_str.substr(1, pixel_str.len()-1);
            end
            send_byte(8'h7D); // }
        end
    endtask

        // Simple task to send a frame (valid data)
    task send_led(
        input logic [7:0] indx
    );
        string led_str;
        begin
            $sformat(led_str, "%03d", indx);
            send_byte(8'h7B); // {
            send_byte(8'h4C); // L
            repeat(3) begin
                send_byte(led_str.getc(0));
                led_str = led_str.substr(1, led_str.len()-1);
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