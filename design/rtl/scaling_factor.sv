`timescale 1ns/1ps

import defs_pkg::*;

module scaling_factor (
    input logic clk,
    input logic rst_n,
    input logic blue_nor_green,
    input logic [7:0] scale_factor_in,
    output logic [7:0] scale_factor_out
);

    logic [15:0] factor;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            scale_factor_out <= 8'd0;
        else if(blue_nor_green)
            factor <= ((scale_factor_in << 7) + (scale_factor_in << 1) + 1); // scale by 131/256 = 0.5117
    end

    assign factor = (blue_nor_green)? 
            16'h0000 + ((scale_factor_in << 7) + (scale_factor_in << 1) + 1) : // scale by 131/256 = 0.5117
            16'h0000 + ((scale_factor_in << 9) + (scale_factor_in << 7) + (scale_factor_in << 5) + 1); // scale by 672/256 = 2.62

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            scale_factor_out <= 8'd0;
        else
            scale_factor_out <= factor[15:8];
    end

endmodule