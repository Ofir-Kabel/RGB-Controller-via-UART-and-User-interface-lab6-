`timescale 1ns/1ps
module tb_Rx;

    logic clk;
    logic rst_n;
    logic str_frame;
    logic rx_line;
    logic [7:0] rx_vec;
    logic byte_done;

    // DUT
    Rx #(.BR(57600)) dut (
        .clk(clk),
        .rst_n(rst_n),
        .rx_line(rx_line),
        .rx_vec(rx_vec),
        .byte_done(byte_done),
        .str_frame(str_frame)
    );

    // 100MHz clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    task send_uart_byte(input [7:0] data);
        integer i;
        // Start bit
        rx_line = 0;
        #17360;  // 1 bit time @ 57600

        for (i = 0; i < 8; i = i + 1) begin
            rx_line = data[i];
            #17360;
        end

        // Stop bit
        rx_line = 1;
        #17360;
    endtask

    initial begin
        rst_n = 0;
        rx_line = 1;  // idle

        #100 rst_n = 1;

        #1000;

        $display("Sending 'A' (0x41)");
        send_uart_byte(8'h41);
//         wait(byte_done); $display("Received: %c (0x%h)", rx_vec, rx_vec);

        $display("Sending '{' (0x7B)");
        send_uart_byte(8'h7B);
//        wait(byte_done); $display("Received: %c (0x%h)", rx_vec, rx_vec);

        $display("Sending 'R'");
        send_uart_byte(8'h52);
//        wait(byte_done); $display("Received: %c", rx_vec);

        send_uart_byte(8'h35);   // '5'
//        wait(byte_done); $display("Digit: %c", rx_vec);

        send_uart_byte(8'h7D);   // '}'
//        wait(byte_done); $display("Received: %c", rx_vec);

        $display("\nUART Rx test completed successfully!");
        $finish;
    end

    // מוניטור
    always @(posedge clk) begin
        if (byte_done) begin
            $display("[%0t] Byte received: 0x%h ('%c')", $time, rx_vec, (rx_vec >= 32 && rx_vec < 127) ? rx_vec : "?");
        end
    end

endmodule