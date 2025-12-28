`timescale 1ns/1ns

module load_reg #(parameter DATA_WIDTH = 1 ,parameter DEBOUNCE_CYCLE=50)(
    input logic  clk,
    input logic rst_n,
    input logic load,
    input logic [DATA_WIDTH-1:0] unstabled_in,
    output logic [DATA_WIDTH-1:0] stabled_out,
    output logic stable_done
);
    
localparam IDLE = 2'b00;
localparam SAMPLE = 2'b01;
localparam STABLE = 2'b10;

logic [1:0] pst,nst;
logic [26:0] counter;
logic is_changed;

logic [DATA_WIDTH-1:0] tmp_data;

//pst block
always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        pst<=IDLE;
    else
        pst<=nst;
end

//nst block
always_comb begin
    case(pst)
    IDLE: nst = (load && unstabled_in!=stabled_out)? SAMPLE:IDLE; 
    SAMPLE: begin
        if(load)
            if(is_changed)
                nst=IDLE;
            else if(!is_changed && counter == DEBOUNCE_CYCLE-1)
                nst=STABLE;
            else
                nst=SAMPLE;
        else
            nst=IDLE; 
    end
    STABLE: nst = IDLE;
    default: nst = IDLE;
    endcase
end

//internal reg operation
always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        counter <= 'b0;
        is_changed<=1'b0;
        //str<= 1'b0;
        stable_done<=1'b0;
        tmp_data<='h0;
        stabled_out<='h0;
    end else 
    case(nst) //pst
    IDLE:begin
        //str<=1'b0;
        counter <= 'b0;
        is_changed<=1'b0;
        tmp_data<=unstabled_in;
        stable_done<=1'b0;
        //if(tmp_data != unstabled_in) str <= 1'b1;
    end
    SAMPLE:begin
        tmp_data<=unstabled_in;
        if(unstabled_in == tmp_data)begin
            is_changed<=1'b0;
            counter <= counter + 1;
        end else
            is_changed<=1'b1;
    end
    STABLE: begin
        stabled_out <= tmp_data;
        stable_done<=1'b1;
    end
    default: begin
        counter <= 'b0;
        is_changed<=1'b0;
        stable_done<=1'b0;
    end
    endcase
end

endmodule
