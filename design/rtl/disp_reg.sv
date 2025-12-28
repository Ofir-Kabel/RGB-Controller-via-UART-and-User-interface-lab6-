`timescale 1ns/1ns

import defs_pkg::*;

module disp_reg (
    input logic trans_type,
    input logic [7:0] stabled_out,
    input logic [7:0] speed_val_hex,
    input logic [7:0] frame_col_data,
    input logic [7:0] frame_row_data,
    input logic [7:0] frame_pixel_data,
    input logic [1:0] img_size,
    input logic [7:0] trans_counter,
    output logic [31:0] hex_disp_vec,
    output logic [7:0] trans_led_counter
    );

logic [7:0] img_size_hex;
logic [7:0] space; 

always_comb begin
    case(img_size)
        2'b00:  img_size_hex = 8'd01;
        2'b01:  img_size_hex = 8'd31;
        2'b10:  img_size_hex = 8'd127;
        2'b11:  img_size_hex = 8'd255;
        default: img_size_hex = 8'h00;
    endcase 
end


assign trans_led_counter = trans_counter;
assign hex_disp_vec =(!trans_type)? {trans_counter,img_size_hex,speed_val_hex,stabled_out}:{frame_row_data,frame_col_data,{8{1'b0}},frame_pixel_data};
    
endmodule