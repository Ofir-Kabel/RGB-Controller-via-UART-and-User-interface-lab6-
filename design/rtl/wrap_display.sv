`timescale 1ns/1ns

module wrap_display #(
    parameter CLK_OUT_FREQ =500,
    parameter MAX_DIGITS_DISP = 8
)(
    input logic clk,
    input logic rst_n,
    input logic trans_type,
    input logic [MAX_DIGITS_DISP*4-1:0] hex_disp_vec,
    output logic [MAX_DIGITS_DISP-1:0] AN,
    output logic [6:0] SEG7,
    output logic dot 
);
    
logic clk_pulse_out;
logic [MAX_DIGITS_DISP-1:0] shift_out;

clk_div #(.CLK_OUT_FREQ(CLK_OUT_FREQ)) clk_div_inst (
    .clk(clk),
    .rst_n(rst_n),
    .clk_pulse_out(clk_pulse_out)
    );

shift_reg #(.MAX_DIGITS_DISP(MAX_DIGITS_DISP)) shift_reg_inst (
    .clk_pulse_out(clk_pulse_out),
    .rst_n(rst_n),
    .shift_out(shift_out),
    .clk(clk)
);

disp_decoder #(.MAX_DIGITS_DISP(MAX_DIGITS_DISP)) disp_decoder_inst (
    .rst_n(rst_n),
    .shift_out(shift_out),
    .trans_type(trans_type),
    .din(hex_disp_vec),
    .SEG7(SEG7),
    .dot(dot)
);

assign AN = shift_out;

endmodule