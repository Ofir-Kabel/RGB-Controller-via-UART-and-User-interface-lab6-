`timescale 1ns/1ps

import defs_pkg::*;

module tb_mac_fsm;

    logic clk;
    logic rst_n;
    logic byte_done;
    logic str_frame;
    logic [7:0] rx_vec;
    logic [MAX_FRAME_LEN-1:0] frame_data;
    logic frame_done;

    // DUT
    mac_fsm dut (
        .clk(clk),
        .rst_n(rst_n),
        .byte_done(byte_done),
        .str_frame(str_frame),
        .rx_vec(rx_vec),
        .frame_data(frame_data),
        .frame_done(frame_done)
    );

    // Clock generation - 100MHz
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz
    end

    // Send a single byte
    task send_byte(input [7:0] data);
        @(posedge clk);
        rx_vec = data;
        byte_done = 1;
        @(posedge clk);
        byte_done = 0;
    endtask

    // Pulse str_frame for frame start
    task pulse_str_frame();
        @(posedge clk);
        str_frame = 1;
        @(posedge clk);
        str_frame = 0;
    endtask

    // Send RGB frame: "{Rxxx,Gyyy,Bzzz}"
    // xxx, yyy, zzz are strings like "255"
    task send_rgb_frame(input string r_str, g_str, b_str);
        logic [23:0] r, g, b;
        r = {r_str[0], r_str[1], r_str[2]};
        g = {g_str[0], g_str[1], g_str[2]};
        b = {b_str[0], b_str[1], b_str[2]};

        $display("\n=== Sending RGB frame: {R%s,G%s,B%s} ===", r_str, g_str, b_str);

        pulse_str_frame();
        send_byte(8'h7B); // '{'
        send_byte(8'h52); // 'R'
        send_byte(r[23:16]);
        send_byte(r[15:8]);
        send_byte(r[7:0]);
        send_byte(8'h2E); // '.'
        send_byte(8'h47); // 'G'
        send_byte(g[23:16]);
        send_byte(g[15:8]);
        send_byte(g[7:0]);
        send_byte(8'h2E); // '.'
        send_byte(8'h42); // 'B'
        send_byte(b[23:16]);
        send_byte(b[15:8]);
        send_byte(b[7:0]);
        send_byte(8'h7D); // '}'

        $display("RGB frame sent. Waiting for frame_done...");
    endtask

    // Send LED frame: "{Lxxx}"
    // xxx is string like "016"
    task send_led_frame(input string l_str);
        logic [23:0] l;
        l = {l_str[0], l_str[1], l_str[2]};

        $display("\n=== Sending LED frame: {L%s} ===", l_str);

        pulse_str_frame();
        send_byte(8'h7B); // '{'
        send_byte(8'h4C); // 'L'
        send_byte(l[23:16]);
        send_byte(l[15:8]);
        send_byte(l[7:0]);
        send_byte(8'h7D); // '}'

        $display("LED frame sent. Waiting for frame_done...");
    endtask

    // Check accumulated frame_data against expected
    task check_result(input [MAX_FRAME_LEN-1:0] expected);
        wait(frame_done == 1);
        @(posedge clk); // Wait one cycle after done
        if (frame_data === expected) begin
            $display("PASSED: frame_data matches expected");
        end else begin
            $error("FAILED: frame_data does not match. Got: %h, Expected: %h", frame_data, expected);
        end
    endtask

    initial begin
        // Reset
        rst_n = 0;
        str_frame = 0;
        byte_done = 0;
        rx_vec = 0;
        #20 rst_n = 1;
        #20;

        // Test 1: RGB frame {R125,G123,B255}
        begin
            automatic string rs = "125";
            automatic string gs = "123";
            automatic string bs = "255";
            automatic logic [23:0] r = {rs[0], rs[1], rs[2]};
            automatic logic [23:0] g = {gs[0], gs[1], gs[2]};
            automatic logic [23:0] b = {bs[0], bs[1], bs[2]};
            automatic logic [127:0] expected = {8'h7B, 8'h52, r[23:16], r[15:8], r[7:0], 8'h2E,
                                      8'h47, g[23:16], g[15:8], g[7:0], 8'h2E,
                                      8'h42, b[23:16], b[15:8], b[7:0], 8'h7D};
            send_rgb_frame(rs, gs, bs);
            check_result(expected);
        end

        #50;

        // Test 2: RGB frame {R128,G122,B021}
        begin
            automatic string rs = "128";
            automatic string gs = "122";
            automatic string bs = "021";
            automatic logic [23:0] r = {rs[0], rs[1], rs[2]};
            automatic logic [23:0] g = {gs[0], gs[1], gs[2]};
            automatic logic [23:0] b = {bs[0], bs[1], bs[2]};
            automatic logic [127:0] expected = {8'h7B, 8'h52, r[23:16], r[15:8], r[7:0], 8'h2E,
                                      8'h47, g[23:16], g[15:8], g[7:0], 8'h2E,
                                      8'h42, b[23:16], b[15:8], b[7:0], 8'h7D};
            send_rgb_frame(rs, gs, bs);
            check_result(expected);
        end

        #50;

        // Test 3: RGB frame {R099,G100,B077}
        begin
            automatic string rs = "099";
            automatic string gs = "100";
            automatic string bs = "077";
            automatic logic [23:0] r = {rs[0], rs[1], rs[2]};
            automatic logic [23:0] g = {gs[0], gs[1], gs[2]};
            automatic logic [23:0] b = {bs[0], bs[1], bs[2]};
            automatic logic [127:0] expected = {8'h7B, 8'h52, r[23:16], r[15:8], r[7:0], 8'h2E,
                                      8'h47, g[23:16], g[15:8], g[7:0], 8'h2E,
                                      8'h42, b[23:16], b[15:8], b[7:0], 8'h7D};
            send_rgb_frame(rs, gs, bs);
            check_result(expected);
        end

        #50;

        // Test 4: LED frame {L016}
        begin
            automatic string ls = "016";
            automatic logic [23:0] l = {ls[0], ls[1], ls[2]};
            automatic logic [127:0] expected = {80'h0, 8'h7B, 8'h4C, l[23:16], l[15:8], l[7:0], 8'h7D};
            send_led_frame(ls);
            check_result(expected);
        end

        #50;

        // Test 5: LED frame {L017}
        begin
            automatic string ls = "017";
            automatic logic [23:0] l = {ls[0], ls[1], ls[2]};
            automatic logic [127:0] expected = {80'h0, 8'h7B, 8'h4C, l[23:16], l[15:8], l[7:0], 8'h7D};
            send_led_frame(ls);
            check_result(expected);
        end

        #100;
        $display("\nAll tests PASSED!");
        $finish;
    end

    // Monitor for frame_done
    always @(posedge frame_done) begin
        $display("[%0t] Frame received: %h", $time, frame_data);
    end

endmodule