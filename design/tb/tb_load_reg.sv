`timescale 1ns/1ns

module tb_load_reg ();

localparam DATA_WIDTH = 1;
localparam DEBOUNCE_CYCLE = 50;

    logic  clk;
    logic rst_n;
    logic din;
    logic dout;
    logic stable_done;

load_reg #(DATA_WIDTH, DEBOUNCE_CYCLE) DUT (
    .clk(clk),
    .rst_n(rst_n),
    .unstabled_in(din),
    .stabled_out(dout),
    .stable_done(stable_done)
);

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz
    end

    // Test sequence
    initial begin
        // Initialize signals
        rst_n = 0;
        din = 0;
        #(20);
        rst_n = 1;

        // Apply test vectors
        din = 1;
        #(10);
        din = 0;
        #(10);
        din = 1;
        #(10);
        din = 1;
        #(10);
        din = 0;
        #(10);
        din = 1;
        #(3000); // Wait longer than DEBOUNCE_CYCLE to allow stable output
        // Wait for some time to observe stable output
        din = 0;
        #(200);

        // Finish simulation
        $finish;
    end
endmodule