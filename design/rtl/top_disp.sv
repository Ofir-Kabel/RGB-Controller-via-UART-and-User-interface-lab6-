`timescale 1ns/1ns

import defs_pkg::*;

module top_disp(
    input logic clk,
    input logic rst_n,
    input logic [DATA_WIDTH-1:0] SW,
    input logic BTNC,
    input logic RX_LINE,
    //input logic TRANS_TYPE,                 //LOW=TX , HIGH=RX
    output logic [MAX_DIGITS_DISP-1:0] AN,
    output logic [6:0] SEG7,
    output logic LED_TOGGLE,
    output logic DP,
    output logic TX_LINE,
    output logic[7:0] LED
);

//--load reg
logic [DATA_WIDTH-1:0] stabled_out;
logic stable_done;

//--data_mux
logic [7:0] tx_din;
logic byte_ready;
logic trans_done;
logic [7:0] trans_counter;
logic valid_out;

//--Tx
logic tx_byte_done;

//--Rx
logic [7:0] rx_vec;
logic rx_byte_done;

//--Rx_Mac
logic str_frame;
logic done_frame;

//--disp-reg
logic [MAX_DIGITS_DISP*4-1:0] hex_disp_vec;
logic [7:0] frame_col_data;
logic [7:0] frame_row_data;
logic [7:0] frame_pixel_data;

//--speed_confg
logic [7:0] delay_ms;
logic [7:0] speed_val_hex;

//instansinations
load_reg #(.DATA_WIDTH(DATA_WIDTH), .DEBOUNCE_CYCLE(DEBOUNCE_CYCLE)) load_reg_inst(
    .clk(clk), 
    .rst_n(rst_n),
    .load(BTNC),
    .unstabled_in(SW),
    .stabled_out(stabled_out),
    .stable_done(stable_done)
);
data_mux data_mux_inst(
    .clk(clk),
    .rst_n(rst_n),
    .valid_in(stable_done),
    .byte_ready(byte_ready),
    .img_size(stabled_out[DATA_WIDTH-2:DATA_WIDTH-3]),
    .bytes_din(stabled_out[DATA_WIDTH-6:0]),
    .tx_din(tx_din),
    .trans_counter(trans_counter),
    .byte_done(tx_byte_done),
    .trans_done(trans_done),
    .valid_out(valid_out)
);
speed_confg speed_confg_inst(
    .clk(clk),
    .rst_n(rst_n),
    .speed_sel(stabled_out[DATA_WIDTH-4:DATA_WIDTH-5]),
    .delay_ms(delay_ms),
    .speed_val_hex(speed_val_hex)
);
Tx #(.BR(BR), .PAUSE_SCALE(PAUSE_SCALE)) Tx_inst(
    .clk(clk),
    .rst_n(rst_n),
    .byte_ready(byte_ready),
    .valid(valid_out),//valid_out
    .data_in(tx_din),
    .delay_ms(delay_ms),
    .tx_data(TX_LINE),
    .byte_done(tx_byte_done),
    .led_toggle(LED_TOGGLE)
);
disp_reg disp_reg_inst(
    .stabled_out(stabled_out[DATA_WIDTH-6:0]),
    .speed_val_hex(speed_val_hex),
    .img_size(stabled_out[DATA_WIDTH-2:DATA_WIDTH-3]),
    .trans_counter(trans_counter),
    .hex_disp_vec(hex_disp_vec),
    .frame_row_data(frame_row_data),
    .frame_col_data(frame_col_data),
    .frame_pixel_data(frame_pixel_data),
    .trans_type(stabled_out[DATA_WIDTH-1]),
    .trans_led_counter(LED)
);
wrap_display #(.CLK_OUT_FREQ(CLK_OUT_FREQ),.MAX_DIGITS_DISP(MAX_DIGITS_DISP)) warp_display_inst(
    .clk(clk),
    .rst_n(rst_n),
    .hex_disp_vec(hex_disp_vec),
    .AN(AN),
    .trans_type(stabled_out[DATA_WIDTH-1]),
    .SEG7(SEG7),
    .dot(DP)
);
mac_fsm mac_fsm_inst(
    .clk(clk),
    .rst_n(rst_n),
    .byte_done(rx_byte_done),
    .str_frame(stabled_out[DATA_WIDTH-1]),
    .rx_vec(rx_vec),
    .frame_row_data(frame_row_data),
    .frame_col_data(frame_col_data),
    .frame_pixel_data(frame_pixel_data),
    .done_frame(done_frame)
);
Rx #(.BR(BR)) Rx_inst(
    .clk(clk),
    .rst_n(rst_n),
    .rx_line(RX_LINE),
    .rx_vec(rx_vec),
    .byte_done(rx_byte_done)
);
    
endmodule