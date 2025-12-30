`timescale 1ns / 1ps


import defs_pkg::*;

module display_selection (
    input logic clk,
    input logic rst_n,
    input logic center_btn,
    input logic up_btn,
    input logic down_btn,
    input logic right_btn,
    input logic left_btn,
    input logic which_led,
    input logic [7:0] red_val,
    input logic [7:0] green_val,
    input logic [7:0] blue_val,
    output logic rgb_sel,
    output logic [7:0] led_sel,
    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue
);

  //FSM STATES
  typedef enum logic [2:0] {
    LEDS,
    RED_S,
    GREEN_S,
    BLUE_S
  } state_t;
  state_t pst, nst;

  //--------------------------------


  //--------------------------------
  //         FSM STATES
  //--------------------------------


  //-------------------------------------------------

  //PRESENT STATE BLOCK
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) pst <= LEDS;
    else pst <= nst;
  end

  //---------------------------------------------------

  //NEXT STATE BLOCK
  always_comb begin : NST_BLOCK
    unique case (pst)
      LEDS: begin
        nst = (right_btn == 1'b1) ? RED_S : LEDS;
      end
      RED_S: begin
        if (right_btn == 1'b1) nst = GREEN_S;
        else if (left_btn == 1'b1) nst = LEDS;
        else nst = RED_S;
      end
      GREEN_S: begin
        if (right_btn == 1'b1) nst = BLUE_S;
        else if (left_btn == 1'b1) nst = RED_S;
        else nst = GREEN_S;
      end
      BLUE_S: begin
        nst = (left_btn == 1'b1) ? GREEN_S : BLUE_S;
      end
      default: nst = LEDS;
    endcase
  end
  //---------------------------------------------------

  //LESD SELECTION OUTPUT
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      led_sel <= 8'b1100_0000;
    end else begin
      unique case (nst)
        LEDS: led_sel <= 8'b1100_0000;
        RED_S: led_sel <= 8'b0011_0000;
        GREEN_S: led_sel <= 8'b0000_1100;
        BLUE_S: led_sel <= 8'b0000_0011;
        default: led_sel <= 8'b1100_0000;
      endcase
    end
  end

  //------------------------------------------------------

  //COLOR VALUE ADJUSTMENT
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      red <= 8'd0;
      green <= 8'd0;
      blue <= 8'd0;
      rgb_sel <= 1'b0;
    end else if (center_btn) begin
      rgb_sel <= which_led;
      red <= red_val;
      green <= green_val;
      blue <= blue_val;
    end else begin
      case (nst)
        LEDS: begin
          rgb_sel <= (up_btn || down_btn) ? ~rgb_sel : rgb_sel;
        end
        RED_S: begin
          if (up_btn) red <= (red < 8'd255) ? red + 1 : 8'd255;
          else if (down_btn) red <= (red > 8'd0) ? red - 1 : 8'd0;
          else red <= red;
        end
        GREEN_S: begin
          if (up_btn) green <= (green < 8'd255) ? green + 1 : 8'd255;
          else if (down_btn) green <= (green > 8'd0) ? green - 1 : 8'd0;
          else green <= green;
        end
        BLUE_S: begin
          if (up_btn) blue <= (blue < 8'd255) ? blue + 1 : 8'd255;
          else if (down_btn) blue <= (blue > 8'd0) ? blue - 1 : 8'd0;
          else blue <= blue;
        end
        default: begin
          red <= red;
          green <= green;
          blue <= blue;
          rgb_sel <= rgb_sel;
        end
      endcase
    end
  end
  //------------------------------------------------------

endmodule

