`timescale 1ns/1ps


import defs_pkg::*;


module pwm (
    input logic clk,
    input logic rst_n,
    input logic [7:0] duty_cycle, // 0-255
    output logic pwm_out
);

  // COUNTER
  logic [$clog2(PWM_MAX)-1:0] pwm_counter;
  logic [9:0] gamma_max;

  // PWM LOGIC
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pwm_counter <= 10'd0;
      pwm_out <= 1'b0;
    end else begin
      if (pwm_counter < PWM_MAX) begin
        pwm_counter <= pwm_counter + 1;
      end else begin
        pwm_counter <= 10'd0;
      end

      if (pwm_counter < gamma_max) begin
        pwm_out <= 1'b1;
      end else begin
        pwm_out <= 1'b0;
      end
    end
  end

  // GAMMA CORRECTION LOOKUP
  assign gamma_max =  gamma_table[duty_cycle];

endmodule
