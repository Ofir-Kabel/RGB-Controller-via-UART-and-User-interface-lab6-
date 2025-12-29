`timescale 1ns/1ps

import defs_pkg::*;

module wrap_rx_mac_parser#(parameter BR = 57600)(
    input logic clk,
    input logic rst_n,
    input logic rx_line,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue,
    output logic rgb_valid,
    output logic which_led
);

//WIRE DECLARATIONS
logic [7:0] rx_vec;
logic byte_done;
logic [127:0] frame_data;
logic frame_done;
logic which_msg;
logic led_err;
logic str_frame;

Rx #(
    .BR(BR)
) rx_inst (
    .clk(clk),
    .rst_n(rst_n),
    .rx_line(rx_line),
    .rx_vec(rx_vec),
    .byte_done(byte_done),
    .str_frame(str_frame)
);

mac_fsm mac_fsm_inst (
    .clk(clk),
    .rst_n(rst_n),
    .rx_vec(rx_vec),
    .byte_done(byte_done),
    .frame_data(frame_data),
    .frame_done(frame_done),
    .str_frame(str_frame)
    );


frame_parser frame_parser_inst (
    .frame_data(frame_data),
    .red(red),
    .green(green),
    .blue(blue),
    .rgb_valid(rgb_valid),
    .which_led(which_led),
    .which_msg(which_msg),
    .led_err(led_err)
);




endmodule