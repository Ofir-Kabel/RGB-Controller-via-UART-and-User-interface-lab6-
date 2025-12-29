`timescale 1ns/1ps

import defs_pkg::*;

module tb_wrap_rx_mac_parser;

    // Parameters
    parameter CLK_FREQ = 100_000_000; // 100 MHz
    parameter BR = 57600;             // Baud Rate
    // Bit period in nanoseconds for UART simulation (10^9 / 57600)
    localparam time BIT_PERIOD = 17361ns; 

    // DUT Signals
    logic clk;
    logic rst_n;
    logic rx_line;
    
    // Outputs from DUT
    logic [7:0] red;
    logic [7:0] green;
    logic [7:0] blue;
    logic rgb_valid;
    logic which_led;

    // DUT Instance (The Macro)
    wrap_rx_mac_parser #(
        .BR(BR)
    ) dut_inst (
        .clk(clk),
        .rst_n(rst_n),
        .rx_line(rx_line),
        .red(red),
        .green(green),
        .blue(blue),
        .rgb_valid(rgb_valid),
        .which_led(which_led)
    );

    // Clock Generation (100MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // --------------------------------------------------------
    // UART Transmission Task
    // Mimics a real UART transmitter (Start bit -> Data -> Stop bit)
    // --------------------------------------------------------
    task send_uart_byte(input logic [7:0] data);
        integer i;
        begin
            // 1. Start Bit (Low)
            rx_line = 1'b0;
            #(BIT_PERIOD);
            
            // 2. Data Bits (LSB First)
            for (i = 0; i < 8; i++) begin
                rx_line = data[i];
                #(BIT_PERIOD);
            end
            
            // 3. Stop Bit (High)
            rx_line = 1'b1;
            #(BIT_PERIOD);
        end
    endtask

    // --------------------------------------------------------
    // Helper to send a full string via UART
    // --------------------------------------------------------
    task send_string(input string s);
        integer i;
        begin
            for (i = 0; i < s.len(); i++) begin
                send_uart_byte(s.getc(i)); // Send char as 8-bit ASCII
            end
        end
    endtask

    // --------------------------------------------------------
    // High Level Task: Send RGB Frame
    // --------------------------------------------------------
    task send_rgb_frame(input string r_str, g_str, b_str);
        string frame;
        begin
            // Construct the string: {Rxxx.Gyyy.Bzzz}
            // Note: Depending on your Parser logic, check if you need commas (,) or dots (.)
            // Based on your provided file 'frame_parser.sv': localparam ASCII_COMMA = 8'h2C;
            // But usually the example showed dots. I will use commas based on source 66.
            // Update: Source 67 says "// ',' (change to 8'h2E if using '.')".
            // Let's assume the format is {Rxxx.Gyyy.Bzzz} based on your previous TB.
            
            frame = $sformatf("{R%s.G%s.B%s}", r_str, g_str, b_str); 
            $display("\n[%0t] Sending UART Frame: %s", $time, frame);
            send_string(frame);
        end
    endtask

    // --------------------------------------------------------
    // High Level Task: Send LED Frame
    // --------------------------------------------------------
    task send_led_frame(input string l_str);
        string frame;
        begin
            frame = $sformatf("{L%s}", l_str);
            $display("\n[%0t] Sending UART Frame: %s", $time, frame);
            send_string(frame);
        end
    endtask

    // --------------------------------------------------------
    // Main Stimulus
    // --------------------------------------------------------
    initial begin
        // 1. Initialization
        rst_n = 0;
        rx_line = 1; // UART Idle state is High
        #100;
        
        rst_n = 1;
        #100;

        // -------------------------------------------------------
        // Test 1: RGB Frame {R125.G123.B255}
        // -------------------------------------------------------
        send_rgb_frame("125", "123", "255");
        
        // Wait for internal processing (Parsing happens immediately after last byte)
        #100; 

        if (rgb_valid && red == 8'd125 && green == 8'd123 && blue == 8'd255)
            $display("Test 1 PASSED: RGB Valid, Values Correct (125, 123, 255)");
        else
            $error("Test 1 FAILED: Got R=%d G=%d B=%d Valid=%b", red, green, blue, rgb_valid);

        #1000; // Gap between frames

        // -------------------------------------------------------
        // Test 2: LED 16 Selection {L016}
        // -------------------------------------------------------
        send_led_frame("016");
        
        #100;
        // Check which_led (0 = LED16, 1 = LED17)
        // Note: The Wrapper might not expose 'which_msg', but exposes 'which_led'.
        if (which_led == 1'b0) 
            $display("Test 2 PASSED: LED 16 Selected");
        else
            $error("Test 2 FAILED: Expected LED 16 (0), Got %b", which_led);

        #1000;

        // -------------------------------------------------------
        // Test 3: LED 17 Selection {L017}
        // -------------------------------------------------------
        send_led_frame("017");
        
        #100;
        if (which_led == 1'b1) 
            $display("Test 3 PASSED: LED 17 Selected");
        else
            $error("Test 3 FAILED: Expected LED 17 (1), Got %b", which_led);

        #1000;
        
        $display("\nAll Tests Completed.");
        $finish;
    end

endmodule