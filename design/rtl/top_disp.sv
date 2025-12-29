`timescale 1ns / 1ns

import defs_pkg::*;

module top_disp (
    input logic clk,
    input logic rst_n,
    input logic BTNC,
    input logic BTNU,
    input logic BTND,
    input logic BTNR,
    input logic BTNL,
    input logic RX_LINE,
    output logic [MAX_DIGITS_DISP-1:0] AN,
    output logic [6:0] SEG7,
    output logic LED_TOGGLE,
    output logic DP,
    output logic TX_LINE,
    output logic [7:0] LED,
    output logic LED16_R,
    output logic LED16_G,
    output logic LED16_B,
    output logic LED17_R,
    output logic LED17_G,
    output logic LED17_B
);

  //--load reg
  logic [4:0] unstabled_in;
  logic [4:0] stabled_out;
  logic [4:0] stable_done;

  //--wrap_rx_mac_parser
  logic [7:0] red_val;
  logic [7:0] green_val;
  logic [7:0] blue_val;
  logic [7:0] red;
  logic [7:0] green;
  logic [7:0] blue;
  logic rgb_valid;
  logic which_led;

  //--pwm
  logic [7:0] color_vec_pwm[0:2];  //0-red,1-green,2-blue
  logic RGB[0:2];


  //--disp_reg
  logic [MAX_DIGITS_DISP*4-1:0] hex_disp_vec;

  //--speed_confg
  logic [7:0] delay_ms;
  logic [7:0] speed_val_hex;

  genvar i;
  assign unstabled_in = {BTNU,BTND,BTNR,BTNL,BTNC};
  generate
    for (i = 0; i < 5; i = i + 1) begin : BTNS_DEBAUNCER_GENERATE_BLOCK
      load_reg #(
          .DEBOUNCE_CYCLE(DEBOUNCE_CYCLE)
      ) load_reg_inst (
          .clk(clk),
          .rst_n(rst_n),
          .unstabled_in(unstabled_in[i]),
          .stabled_out(stabled_out[i]),
          .stable_done(stable_done[i])
      );
    end
  endgenerate

  disp_reg disp_reg_inst (
      .clk(clk),
      .rst_n(rst_n),
      .center_btn(stabled_out[0]),
      .which_led(which_led),
      .digit0(red),
      .digit1(green),
      .digit2(blue),
      .hex_disp_vec(hex_disp_vec)
  );
  wrap_display #(
      .CLK_OUT_FREQ(CLK_OUT_FREQ),
      .MAX_DIGITS_DISP(MAX_DIGITS_DISP)
  ) warp_display_inst (
      .clk(clk),
      .rst_n(rst_n),
      .hex_disp_vec(hex_disp_vec),
      .AN(AN),
      //.trans_type(0),
      .SEG7(SEG7),
      .dot(DP)
  );

  wrap_rx_mac_parser #(
      .BR(BR)
  ) wrap_rx_mac_parser_inst (
      .clk(clk),
      .rst_n(rst_n),
      .rx_line(RX_LINE),
      .red(red_val),
      .green(green_val),
      .blue(blue_val),
      .rgb_valid(rgb_valid),
      .which_led(which_led)
  );

  display_selection display_selection_inst (
      .clk(clk),
      .rst_n(rst_n),
      .center_btn(stabled_out[0]),
      .up_btn(stabled_out[4]),
      .down_btn(stabled_out[3]),
      .right_btn(stabled_out[2]),
      .left_btn(stabled_out[1]),
      .red_val(red_val),
      .green_val(green_val),
      .blue_val(blue_val),
      .led_sel(LED),
      .red(red),
      .green(green),
      .blue(blue)
  );

  genvar j;

    assign color_vec_pwm[0] = red;
    assign color_vec_pwm[1] = green;
    assign color_vec_pwm[2] = blue;

  generate
    for (j = 0; j < 3; j = j + 1) begin : LED_PWM_GENERATE_BLOCK
      pwm pwm_inst (
          .clk(clk),
          .rst_n(rst_n),
          .duty_cycle(color_vec_pwm[j]),
          .pwm_out(RGB[j])
      );
    end
  endgenerate


  assign LED16_R = (which_led == 0) ? RGB[0] : 1'b0;
  assign LED16_G = (which_led == 0) ? RGB[1] : 1'b0;
  assign LED16_B = (which_led == 0) ? RGB[2] : 1'b0;
  assign LED17_R = (which_led == 1) ? RGB[0] : 1'b0;
  assign LED17_G = (which_led == 1) ? RGB[1] : 1'b0;
  assign LED17_B = (which_led == 1) ? RGB[2] : 1'b0;

  assign LED_TOGGLE = 1'b1;
  assign TX_LINE = 1'b1;

endmodule
