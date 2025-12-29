`timescale 1ns / 1ns

module load_reg #(
    parameter DATA_WIDTH = 1,
    parameter DEBOUNCE_CYCLE = 50
) (
    input logic clk,
    input logic rst_n,
    input logic [DATA_WIDTH-1:0] unstabled_in,
    output logic [DATA_WIDTH-1:0] stabled_out,
    output logic stable_done
);

  //DEBOUNCE COUNTER
  logic [$clog2(DEBOUNCE_CYCLE)-1:0] debounce_counter;
  logic temp;
  logic pulse_en;

  //DEBOUNCE LOGIC -- COUNTER DOWN
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      debounce_counter <= DEBOUNCE_CYCLE - 1;
      temp <= '0;
      pulse_en <= 0;
    end else begin
      temp <= unstabled_in;
      if (temp != unstabled_in) begin
        debounce_counter <= DEBOUNCE_CYCLE - 1;
        pulse_en <= 1;
      end else if (debounce_counter == 0) begin
        debounce_counter <= (temp != unstabled_in) ? DEBOUNCE_CYCLE - 1 : debounce_counter;
        pulse_en <= 1'b0;
      end else if (temp == unstabled_in) begin
        debounce_counter <= debounce_counter - 1;
      end else debounce_counter <= debounce_counter;
    end
  end

  //STABLE DONE SIGNAL
  assign stable_done = (debounce_counter == 0 && pulse_en) ? 1'b1 : 1'b0;

  //LOAD REGISTER
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      stabled_out <= '0;
    end else if (stable_done) begin
      stabled_out <= unstabled_in;
    end else stabled_out <= '0;
  end

endmodule
