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
  logic [9:0] color_scaling_vec[0:2];  //0-red,1-green,2-blue
  logic [PWM_LEN-1:0] color_pwm_vec[0:2];  //0-red,1-green,2-blue
  logic RGB[0:2];
  logic rgb_sel;


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
      .rgb_sel(rgb_sel),
      .digit0(blue),
      .digit1(green),
      .digit2(red),
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
      .blue(blue),
            .which_led(which_led),
      .rgb_sel(rgb_sel)

  );

  genvar y;

generate
    for (y = 0; y < 2; y = y + 1) begin : GREEN_BLUE_SCALING_GENERATE_BLOCK
      scaling_factor scaling_factor_inst (
        .clk(clk),
        .rst_n(rst_n),
        .blue_nor_green(y), 
        .scale_factor_in(color_scaling_vec[y+1]), // Input is 10-bit
        .scale_factor_out(color_pwm_vec[y+1])     // Output is 12-bit
      );
    end
  endgenerate

   genvar j;

  generate
    for (j = 0; j < 3; j = j + 1) begin : LED_PWM_GENERATE_BLOCK
      pwm pwm_inst (
          .clk(clk),
          .rst_n(rst_n),
          .duty_cycle(color_pwm_vec[j]),
          .pwm_out(RGB[j])
      );
    end
  endgenerate

 
    assign color_scaling_vec[0] = gamma_table[red];
    assign color_scaling_vec[1] = gamma_table[green];
    assign color_scaling_vec[2] = gamma_table[blue];

    assign color_pwm_vec[0] = {2'b00, color_scaling_vec[0]};


  assign LED16_R = (rgb_sel == 0) ? RGB[0] : 1'b0;
  assign LED16_G = (rgb_sel == 0) ? RGB[1] : 1'b0;
  assign LED16_B = (rgb_sel == 0) ? RGB[2] : 1'b0;
  assign LED17_R = (rgb_sel == 1) ? RGB[0] : 1'b0;
  assign LED17_G = (rgb_sel == 1) ? RGB[1] : 1'b0;
  assign LED17_B = (rgb_sel == 1) ? RGB[2] : 1'b0;

  assign LED_TOGGLE = 1'b1;
  assign TX_LINE = 1'b1;

endmodule
