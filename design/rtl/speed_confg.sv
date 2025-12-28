`timescale 1ns/1ns

module speed_confg(
    input logic clk,
    input logic rst_n,
    input logic [1:0] speed_sel,
    output logic [7:0] delay_ms,
    output logic [7:0] speed_val_hex
);

//delay_ms - the delay time in ms between Bytes
//speed_val_hex - the 7seg disp for each delay in hex

always_ff @(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        speed_val_hex <= 8'h00;
        delay_ms <= 8'd0;
    end else
        case(speed_sel)
        2'b00:begin
             speed_val_hex <= 8'h00;
             delay_ms <= 8'd0;
        end
        2'b01:begin
             speed_val_hex <= 8'h05;
             delay_ms <= 8'd50;
        end
        2'b10:begin
             speed_val_hex <= 8'h10;
             delay_ms <= 8'd100;
        end
        2'b11:begin
             speed_val_hex <= 8'h20;
             delay_ms <= 8'd200;
        end
        default:begin
             speed_val_hex <= 8'h00;
             delay_ms <= 8'd0;
        end
        endcase
end

endmodule