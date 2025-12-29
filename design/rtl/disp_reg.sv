`timescale 1ns/1ns

import defs_pkg::*;

module disp_reg (
    input clk,
    input logic rst_n,
    input center_btn,
    input logic which_led,
    input logic [7:0] digit0,
    input logic [7:0] digit1,
    input logic [7:0] digit2,
    //input logic [7:0] digit3,
    output logic [31:0] hex_disp_vec
);

logic [7:0] digit3;
assign digit3 = which_led ? 8'h10 : 8'h01; //MSG2 : MSG1

always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        hex_disp_vec <= 32'h00000000;
    end else if(center_btn) begin
        hex_disp_vec <= {digit3, digit2, digit1, digit0};
    end else
        hex_disp_vec <= hex_disp_vec;
end

endmodule