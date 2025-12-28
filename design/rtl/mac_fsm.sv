`timescale 1ns / 1ns

import defs_pkg::*;

module mac_fsm (
    input logic clk,
    input logic rst_n,
    input logic byte_done,
    input logic str_frame,
    input logic [7:0] rx_vec,
    output logic [7:0] frame_row_data,
    output logic [7:0] frame_col_data,
    output logic [7:0] frame_pixel_data,
    output logic done_frame
);

  //DATA INDICATORS PARAMS
  localparam R_ASCII = 'h52;
  localparam C_ASCII = 'h43;
  localparam V_ASCII = 'h56;
  localparam OPEN_FRAME_ASCII = 'h7B;
  localparam CLOSE_FRAME_ASCII = 'h7D;
  localparam SEPERATE_ASCII = 'h2E;

  localparam DATA_FRAME_LEN = 24;
  localparam DATA_FRAME_BYTE = 8;

  // FSM states
  typedef enum logic [3:0] {
    IDLE,
    STR_FRAME,
    ROW_IND,
    ROW_DATA,
    COMMA1,
    COL_IND,
    COL_DATA,
    COMMA2,
    PIXEL_IND,
    PIXEL_DATA,
    END_FRAME
  } state_t;
  state_t pst, nst;

  //---------------------------------------

  //BYTE DATA COUNTER AND EN

  logic ascii_conv_en;
  logic [1:0] byte_data_count;


  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      byte_data_count <= 2'd0;
    end else if (byte_done) begin
      if (nst == ROW_DATA || nst == COL_DATA || nst == PIXEL_DATA)
        byte_data_count <= byte_data_count + 1;
      else byte_data_count <= '0;
    end
  end

  assign ascii_conv_en = ((pst == ROW_DATA || pst == COL_DATA || pst == PIXEL_DATA)) ? 1'b1 : 1'b0;

  //----------------------------------------

  //ASCII TO DEC CALCULATE
  logic [7:0] ascii_dec_sum;
  logic [7:0] digit_val;
  logic [7:0] rx_reg;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) rx_reg <= '0;
    else if (byte_done) rx_reg <= rx_vec;
  end

  assign digit_val = rx_vec - 8'd48;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ascii_dec_sum <= '0;
    end else if (byte_done) begin
      if (byte_data_count == 2'd1) begin
        ascii_dec_sum <= (digit_val << 6) + (digit_val << 5) + (digit_val << 2);
      end else if (byte_data_count == 2'd2) begin
        ascii_dec_sum <= ascii_dec_sum + (digit_val << 3) + (digit_val << 1);
      end else if (byte_data_count == 2'd3) begin
        ascii_dec_sum <= ascii_dec_sum + digit_val;
      end else begin
        ascii_dec_sum <= '0;
      end
    end
  end


  //-----------------------------------------------

  //DATA VALID - PARSER
  logic [23:0] temp_frame_reg;
  logic data_valid;

  always_comb begin
    if (!rst_n) data_valid = 1;
    else begin
      unique case (byte_data_count)
        2'd1: data_valid = (47 < rx_reg < 51) ? 1'b1 : 1'b0;
        2'd2: data_valid = (47 < rx_reg < 58) ? 1'b1 : 1'b0;
        2'd3: data_valid = (47 < rx_reg < 58) ? 1'b1 : 1'b0;
        default: data_valid = 1;
      endcase
    end
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) temp_frame_reg <= '0;
    else if (pst == COMMA1) temp_frame_reg[23:16] <= ascii_dec_sum;
    else if (pst == COMMA2) temp_frame_reg[15:8] <= ascii_dec_sum;
    else if (pst == END_FRAME) temp_frame_reg[7:0] <= ascii_dec_sum;
    else if (pst == IDLE) temp_frame_reg <= '0;
  end

  //-----------------------------------
  //
  //              FSM STATES
  //
  //-----------------------------------

  //PRESENT STATE BLOCK
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) pst <= IDLE;
    else pst <= nst;
  end


  //NEXT STATE BLOCK
  logic data_error;
  logic symbol_error;
  logic extra_cycle;


  always_comb begin : NST_BLOCK

    unique case (pst)
      IDLE: begin
        nst = (str_frame) ? STR_FRAME : IDLE;
        symbol_error = 0;
      end
      STR_FRAME: begin
        if (byte_done && data_valid) begin
          nst = (rx_vec == OPEN_FRAME_ASCII) ? ROW_IND : IDLE;
          symbol_error = (rx_vec == OPEN_FRAME_ASCII) ? 1'b0 : 1'b1;
        end else begin
          nst = STR_FRAME;
          symbol_error = 1'b0;
        end
      end
      ROW_IND: begin
        if (byte_done) begin
          nst = (rx_vec == R_ASCII) ? ROW_DATA : IDLE;
          symbol_error = (rx_vec == R_ASCII) ? 1'b0 : 1'b1;
        end else begin
          nst = ROW_IND;
          symbol_error = 1'b0;
        end
      end
      ROW_DATA: begin
        if (byte_done && data_valid) begin
          nst = (byte_data_count == 3) ? COMMA1 : ROW_DATA;
          symbol_error = 0;
        end else begin
          nst = ROW_DATA;
          symbol_error = 1'b0;
        end
      end
      COMMA1: begin
        if (byte_done) begin
          nst = (rx_vec == SEPERATE_ASCII) ? COL_IND : IDLE;
          symbol_error = (rx_vec == SEPERATE_ASCII) ? 1'b0 : 1'b1;
        end else begin
          nst = COMMA1;
          symbol_error = 1'b0;
        end
      end
      COL_IND: begin
        if (byte_done) begin
          nst = (rx_vec == C_ASCII) ? COL_DATA : IDLE;
          symbol_error = (rx_vec == C_ASCII) ? 1'b0 : 1'b1;
        end else begin
          nst = COL_IND;
          symbol_error = 1'b0;
        end
      end
      COL_DATA: begin
        if (byte_done && data_valid) begin
          nst = (byte_data_count == 3) ? COMMA2 : COL_DATA;
          symbol_error = 0;
        end else begin
          nst = COL_DATA;
          symbol_error = 1'b0;
        end
      end
      COMMA2: begin
        if (byte_done) begin
          nst = (rx_vec == SEPERATE_ASCII) ? PIXEL_IND : IDLE;
          symbol_error = (rx_vec == SEPERATE_ASCII) ? 1'b0 : 1'b1;
          data_error = 0;
        end else begin
          nst = COMMA2;
          symbol_error = 1'b0;
        end
      end
      PIXEL_IND: begin
        if (byte_done) begin
          nst = (rx_vec == V_ASCII) ? PIXEL_DATA : IDLE;
          symbol_error = (rx_vec == V_ASCII) ? 1'b0 : 1'b1;
          data_error = 0;
        end else begin
          nst = PIXEL_IND;
          symbol_error = 1'b0;
        end
      end
      PIXEL_DATA: begin
        if (byte_done && data_valid) begin
          nst = (byte_data_count == 3) ? END_FRAME : PIXEL_DATA;
          symbol_error = 0;
        end else begin
          nst = PIXEL_DATA;
          symbol_error = 1'b0;
        end
      end
      END_FRAME: begin
        nst = IDLE;
        symbol_error = 0;
      end
      default: begin
        nst = IDLE;
        symbol_error = 0;
      end
    endcase
  end

  //--------------------------------------------

  //OUTPUT FRAME BLOCK
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      frame_row_data   <= '0;
      frame_col_data   <= '0;
      frame_pixel_data <= '0;
    end else if (pst == END_FRAME) begin
      frame_row_data   <= temp_frame_reg[23:16];
      frame_col_data   <= temp_frame_reg[15:8];
      frame_pixel_data <= ascii_dec_sum;
    end
  end

  //---------------------------------------------

  //OUTPUT DONE FRAME BLOCK
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) done_frame <= 0;
    else if (nst == END_FRAME) done_frame <= 1;
    else done_frame <= 0;
  end


endmodule
