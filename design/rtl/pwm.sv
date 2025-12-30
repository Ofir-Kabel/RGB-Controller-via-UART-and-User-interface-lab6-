`timescale 1ns/1ps

import defs_pkg::*;

module pwm (
    input logic clk,
    input logic rst_n,
    input logic [PWM_LEN-1:0] duty_cycle, 
    output logic pwm_out
);

  // COUNTER
  logic [$clog2(PWM_MAX)-1:0] pwm_counter;

  // PWM LOGIC
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      pwm_counter <= 'd0;
      pwm_out <= 1'b0;
    end else begin
      if (pwm_counter < PWM_MAX) begin
        pwm_counter <= pwm_counter + 1;
      end else begin
        pwm_counter <= 'd0;
      end

      if (pwm_counter < duty_cycle) begin
        pwm_out <= 1'b1;
      end else begin
        pwm_out <= 1'b0;
      end
    end
  end

endmodule
