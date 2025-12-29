// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Dec 29 18:00:41 2025
// Host        : OYK_LP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim C:/VerilogRTLCourse/lab6/docs/vivado_reports/synth_netlist.v
// Design      : top_disp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Rx
   (str_frame,
    byte_done,
    \rx_vec_reg[7]_0 ,
    \FSM_sequential_pst_reg[2] ,
    \FSM_sequential_pst_reg[0] ,
    E,
    \FSM_sequential_pst_reg[2]_0 ,
    \rx_vec_reg[4]_0 ,
    byte_done_reg_0,
    \rx_vec_reg[2]_0 ,
    \rx_vec_reg[5]_0 ,
    byte_done_reg_1,
    \rx_vec_reg[2]_1 ,
    clk_IBUF_BUFG,
    \br16_pulse_cnt_reg[3]_0 ,
    RX_LINE_IBUF,
    \temp_frame_reg_reg[0] ,
    \temp_frame_reg_reg[0]_0 ,
    Q,
    \FSM_sequential_pst_reg[0]_0 ,
    \FSM_sequential_pst_reg[0]_1 ,
    \FSM_sequential_pst_reg[0]_2 ,
    \FSM_sequential_pst_reg[0]_3 ,
    rst_n_IBUF,
    \FSM_sequential_pst[0]_i_3_0 );
  output str_frame;
  output byte_done;
  output [7:0]\rx_vec_reg[7]_0 ;
  output [0:0]\FSM_sequential_pst_reg[2] ;
  output \FSM_sequential_pst_reg[0] ;
  output [0:0]E;
  output \FSM_sequential_pst_reg[2]_0 ;
  output \rx_vec_reg[4]_0 ;
  output byte_done_reg_0;
  output \rx_vec_reg[2]_0 ;
  output \rx_vec_reg[5]_0 ;
  output byte_done_reg_1;
  output \rx_vec_reg[2]_1 ;
  input clk_IBUF_BUFG;
  input \br16_pulse_cnt_reg[3]_0 ;
  input RX_LINE_IBUF;
  input [0:0]\temp_frame_reg_reg[0] ;
  input \temp_frame_reg_reg[0]_0 ;
  input [2:0]Q;
  input \FSM_sequential_pst_reg[0]_0 ;
  input \FSM_sequential_pst_reg[0]_1 ;
  input \FSM_sequential_pst_reg[0]_2 ;
  input \FSM_sequential_pst_reg[0]_3 ;
  input rst_n_IBUF;
  input \FSM_sequential_pst[0]_i_3_0 ;

  wire [0:0]E;
  wire \FSM_onehot_pst[0]_i_1_n_0 ;
  wire \FSM_onehot_pst[1]_i_1_n_0 ;
  wire \FSM_onehot_pst[2]_i_1_n_0 ;
  wire \FSM_onehot_pst[2]_i_2_n_0 ;
  wire \FSM_onehot_pst[3]_i_1_n_0 ;
  wire \FSM_onehot_pst_reg_n_0_[0] ;
  wire \FSM_onehot_pst_reg_n_0_[1] ;
  wire \FSM_onehot_pst_reg_n_0_[2] ;
  wire \FSM_onehot_pst_reg_n_0_[3] ;
  wire \FSM_sequential_pst[0]_i_11_n_0 ;
  wire \FSM_sequential_pst[0]_i_12_n_0 ;
  wire \FSM_sequential_pst[0]_i_3_0 ;
  wire \FSM_sequential_pst[0]_i_3_n_0 ;
  wire \FSM_sequential_pst[0]_i_4_n_0 ;
  wire \FSM_sequential_pst[0]_i_7_n_0 ;
  wire \FSM_sequential_pst[0]_i_8_n_0 ;
  wire \FSM_sequential_pst[1]_i_5_n_0 ;
  wire \FSM_sequential_pst[1]_i_6_n_0 ;
  wire \FSM_sequential_pst[2]_i_10_n_0 ;
  wire \FSM_sequential_pst[2]_i_11_n_0 ;
  wire \FSM_sequential_pst[2]_i_12_n_0 ;
  wire \FSM_sequential_pst[2]_i_5_n_0 ;
  wire \FSM_sequential_pst[2]_i_7_n_0 ;
  wire \FSM_sequential_pst[2]_i_8_n_0 ;
  wire \FSM_sequential_pst[2]_i_9_n_0 ;
  wire \FSM_sequential_pst_reg[0] ;
  wire \FSM_sequential_pst_reg[0]_0 ;
  wire \FSM_sequential_pst_reg[0]_1 ;
  wire \FSM_sequential_pst_reg[0]_2 ;
  wire \FSM_sequential_pst_reg[0]_3 ;
  wire [0:0]\FSM_sequential_pst_reg[2] ;
  wire \FSM_sequential_pst_reg[2]_0 ;
  wire [2:0]Q;
  wire RX_LINE_IBUF;
  wire [3:0]bit_counter;
  wire bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_2_n_0 ;
  wire \br16_acc[11]_i_2_n_0 ;
  wire \br16_acc[11]_i_3_n_0 ;
  wire \br16_acc[11]_i_4_n_0 ;
  wire \br16_acc[11]_i_5_n_0 ;
  wire \br16_acc[15]_i_2_n_0 ;
  wire \br16_acc[15]_i_3_n_0 ;
  wire \br16_acc[15]_i_4_n_0 ;
  wire \br16_acc[15]_i_5_n_0 ;
  wire \br16_acc[19]_i_2_n_0 ;
  wire \br16_acc[19]_i_3_n_0 ;
  wire \br16_acc[23]_i_2_n_0 ;
  wire \br16_acc[27]_i_2_n_0 ;
  wire \br16_acc[8]_i_2_n_0 ;
  wire \br16_acc[8]_i_3_n_0 ;
  wire \br16_acc[8]_i_4_n_0 ;
  wire [27:8]br16_acc_reg;
  wire \br16_acc_reg[11]_i_1_n_0 ;
  wire \br16_acc_reg[11]_i_1_n_1 ;
  wire \br16_acc_reg[11]_i_1_n_2 ;
  wire \br16_acc_reg[11]_i_1_n_3 ;
  wire \br16_acc_reg[11]_i_1_n_4 ;
  wire \br16_acc_reg[11]_i_1_n_5 ;
  wire \br16_acc_reg[11]_i_1_n_6 ;
  wire \br16_acc_reg[11]_i_1_n_7 ;
  wire \br16_acc_reg[15]_i_1_n_0 ;
  wire \br16_acc_reg[15]_i_1_n_1 ;
  wire \br16_acc_reg[15]_i_1_n_2 ;
  wire \br16_acc_reg[15]_i_1_n_3 ;
  wire \br16_acc_reg[15]_i_1_n_4 ;
  wire \br16_acc_reg[15]_i_1_n_5 ;
  wire \br16_acc_reg[15]_i_1_n_6 ;
  wire \br16_acc_reg[15]_i_1_n_7 ;
  wire \br16_acc_reg[19]_i_1_n_0 ;
  wire \br16_acc_reg[19]_i_1_n_1 ;
  wire \br16_acc_reg[19]_i_1_n_2 ;
  wire \br16_acc_reg[19]_i_1_n_3 ;
  wire \br16_acc_reg[19]_i_1_n_4 ;
  wire \br16_acc_reg[19]_i_1_n_5 ;
  wire \br16_acc_reg[19]_i_1_n_6 ;
  wire \br16_acc_reg[19]_i_1_n_7 ;
  wire \br16_acc_reg[23]_i_1_n_0 ;
  wire \br16_acc_reg[23]_i_1_n_1 ;
  wire \br16_acc_reg[23]_i_1_n_2 ;
  wire \br16_acc_reg[23]_i_1_n_3 ;
  wire \br16_acc_reg[23]_i_1_n_4 ;
  wire \br16_acc_reg[23]_i_1_n_5 ;
  wire \br16_acc_reg[23]_i_1_n_6 ;
  wire \br16_acc_reg[23]_i_1_n_7 ;
  wire \br16_acc_reg[27]_i_1_n_7 ;
  wire \br16_acc_reg[8]_i_1_n_0 ;
  wire \br16_acc_reg[8]_i_1_n_1 ;
  wire \br16_acc_reg[8]_i_1_n_2 ;
  wire \br16_acc_reg[8]_i_1_n_3 ;
  wire \br16_acc_reg[8]_i_1_n_4 ;
  wire \br16_acc_reg[8]_i_1_n_5 ;
  wire \br16_acc_reg[8]_i_1_n_6 ;
  wire br16_pulse;
  wire \br16_pulse_cnt[3]_i_1_n_0 ;
  wire \br16_pulse_cnt[3]_i_3_n_0 ;
  wire [3:0]br16_pulse_cnt_reg;
  wire \br16_pulse_cnt_reg[3]_0 ;
  wire br16_pulse_i_2_n_0;
  wire br16_pulse_i_3_n_0;
  wire br16_pulse_i_4_n_0;
  wire br16_pulse_i_5_n_0;
  wire busy_en;
  wire busy_en_i_1_n_0;
  wire byte_done;
  wire byte_done_i_1_n_0;
  wire byte_done_reg_0;
  wire byte_done_reg_1;
  wire clk_IBUF_BUFG;
  wire in0;
  wire [6:0]p_0_in1_in;
  wire [3:0]p_0_in__3;
  wire rst_n_IBUF;
  wire rx_data;
  wire rx_str_pulse1_out;
  wire rx_str_pulse25_out;
  wire [7:7]rx_vec;
  wire \rx_vec[7]_i_1_n_0 ;
  wire \rx_vec_reg[2]_0 ;
  wire \rx_vec_reg[2]_1 ;
  wire \rx_vec_reg[4]_0 ;
  wire \rx_vec_reg[5]_0 ;
  wire [7:0]\rx_vec_reg[7]_0 ;
  wire [3:0]sample_counter;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[0]_i_2_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter[3]_i_3_n_0 ;
  wire sample_en;
  wire sample_en_i_1_n_0;
  wire [2:0]sample_reg;
  wire stage;
  wire str_frame;
  wire \temp_frame_reg[111]_i_6_n_0 ;
  wire [0:0]\temp_frame_reg_reg[0] ;
  wire \temp_frame_reg_reg[0]_0 ;
  wire [8:1]temp_rx_vec;
  wire \temp_rx_vec[1]_i_1_n_0 ;
  wire \temp_rx_vec[2]_i_1_n_0 ;
  wire \temp_rx_vec[3]_i_1_n_0 ;
  wire \temp_rx_vec[3]_i_2_n_0 ;
  wire \temp_rx_vec[4]_i_1_n_0 ;
  wire \temp_rx_vec[4]_i_2_n_0 ;
  wire \temp_rx_vec[5]_i_1_n_0 ;
  wire \temp_rx_vec[5]_i_2_n_0 ;
  wire \temp_rx_vec[6]_i_1_n_0 ;
  wire \temp_rx_vec[6]_i_2_n_0 ;
  wire \temp_rx_vec[7]_i_1_n_0 ;
  wire \temp_rx_vec[7]_i_2_n_0 ;
  wire \temp_rx_vec[7]_i_3_n_0 ;
  wire \temp_rx_vec[8]_i_1_n_0 ;
  wire \temp_rx_vec[8]_i_2_n_0 ;
  wire [3:0]\NLW_br16_acc_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_br16_acc_reg[27]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_br16_acc_reg[8]_i_1_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_pst[0]_i_1 
       (.I0(\FSM_onehot_pst_reg_n_0_[3] ),
        .I1(str_frame),
        .I2(\FSM_onehot_pst_reg_n_0_[0] ),
        .O(\FSM_onehot_pst[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_pst[1]_i_1 
       (.I0(\FSM_onehot_pst[2]_i_2_n_0 ),
        .I1(\FSM_onehot_pst_reg_n_0_[1] ),
        .I2(\FSM_onehot_pst_reg_n_0_[0] ),
        .I3(str_frame),
        .O(\FSM_onehot_pst[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_pst[2]_i_1 
       (.I0(\FSM_onehot_pst[2]_i_2_n_0 ),
        .I1(\FSM_onehot_pst_reg_n_0_[1] ),
        .I2(\rx_vec[7]_i_1_n_0 ),
        .I3(\FSM_onehot_pst_reg_n_0_[2] ),
        .O(\FSM_onehot_pst[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_onehot_pst[2]_i_2 
       (.I0(sample_en),
        .I1(br16_pulse),
        .I2(sample_counter[0]),
        .I3(sample_counter[1]),
        .I4(sample_counter[2]),
        .I5(sample_counter[3]),
        .O(\FSM_onehot_pst[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \FSM_onehot_pst[3]_i_1 
       (.I0(\FSM_onehot_pst_reg_n_0_[2] ),
        .I1(bit_counter[1]),
        .I2(bit_counter[0]),
        .I3(bit_counter[2]),
        .I4(bit_counter[3]),
        .I5(bit_counter0),
        .O(\FSM_onehot_pst[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,SAMPLE:0010,BUSY:0100,END_RX:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_pst_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_pst[0]_i_1_n_0 ),
        .PRE(\br16_pulse_cnt_reg[3]_0 ),
        .Q(\FSM_onehot_pst_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:0001,SAMPLE:0010,BUSY:0100,END_RX:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_pst_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\FSM_onehot_pst[1]_i_1_n_0 ),
        .Q(\FSM_onehot_pst_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:0001,SAMPLE:0010,BUSY:0100,END_RX:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_pst_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\FSM_onehot_pst[2]_i_1_n_0 ),
        .Q(\FSM_onehot_pst_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "IDLE:0001,SAMPLE:0010,BUSY:0100,END_RX:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_pst_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\FSM_onehot_pst[3]_i_1_n_0 ),
        .Q(\FSM_onehot_pst_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h000088A8AAAA88A8)) 
    \FSM_sequential_pst[0]_i_1 
       (.I0(\FSM_sequential_pst_reg[2]_0 ),
        .I1(\FSM_sequential_pst[0]_i_3_n_0 ),
        .I2(\FSM_sequential_pst[0]_i_4_n_0 ),
        .I3(\FSM_sequential_pst_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0]_1 ),
        .O(\FSM_sequential_pst_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_pst[0]_i_11 
       (.I0(p_0_in1_in[0]),
        .I1(p_0_in1_in[4]),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[1]),
        .I4(p_0_in1_in[2]),
        .O(\FSM_sequential_pst[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    \FSM_sequential_pst[0]_i_12 
       (.I0(p_0_in1_in[1]),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[4]),
        .I4(p_0_in1_in[3]),
        .O(\FSM_sequential_pst[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hD555555555555555)) 
    \FSM_sequential_pst[0]_i_2 
       (.I0(Q[2]),
        .I1(\FSM_sequential_pst[0]_i_7_n_0 ),
        .I2(p_0_in1_in[5]),
        .I3(p_0_in1_in[6]),
        .I4(p_0_in1_in[4]),
        .I5(p_0_in1_in[0]),
        .O(\FSM_sequential_pst_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000777777F7)) 
    \FSM_sequential_pst[0]_i_3 
       (.I0(Q[0]),
        .I1(byte_done),
        .I2(\FSM_sequential_pst[2]_i_5_n_0 ),
        .I3(\FSM_sequential_pst[0]_i_8_n_0 ),
        .I4(\FSM_sequential_pst[2]_i_7_n_0 ),
        .I5(\FSM_sequential_pst_reg[0]_2 ),
        .O(\FSM_sequential_pst[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFBFFFBF)) 
    \FSM_sequential_pst[0]_i_4 
       (.I0(\FSM_sequential_pst_reg[0]_3 ),
        .I1(Q[0]),
        .I2(byte_done),
        .I3(\FSM_sequential_pst[2]_i_5_n_0 ),
        .I4(\FSM_sequential_pst[0]_i_8_n_0 ),
        .I5(\FSM_sequential_pst[2]_i_7_n_0 ),
        .O(\FSM_sequential_pst[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_pst[0]_i_7 
       (.I0(p_0_in1_in[3]),
        .I1(p_0_in1_in[2]),
        .I2(rx_vec),
        .I3(p_0_in1_in[1]),
        .O(\FSM_sequential_pst[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_pst[0]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_sequential_pst[0]_i_11_n_0 ),
        .I3(\FSM_sequential_pst[0]_i_12_n_0 ),
        .I4(\FSM_sequential_pst[2]_i_11_n_0 ),
        .O(\FSM_sequential_pst[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \FSM_sequential_pst[1]_i_2 
       (.I0(p_0_in1_in[5]),
        .I1(\FSM_sequential_pst[1]_i_5_n_0 ),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[2]),
        .I4(p_0_in1_in[4]),
        .I5(byte_done),
        .O(\rx_vec_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_pst[1]_i_4 
       (.I0(byte_done_reg_0),
        .I1(\FSM_sequential_pst[1]_i_6_n_0 ),
        .I2(p_0_in1_in[4]),
        .I3(p_0_in1_in[3]),
        .I4(rx_vec),
        .I5(p_0_in1_in[2]),
        .O(\rx_vec_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_pst[1]_i_5 
       (.I0(rx_vec),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[6]),
        .I3(p_0_in1_in[0]),
        .O(\FSM_sequential_pst[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \FSM_sequential_pst[1]_i_6 
       (.I0(p_0_in1_in[0]),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[6]),
        .I3(p_0_in1_in[5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_pst[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_pst[2]_i_10 
       (.I0(p_0_in1_in[5]),
        .I1(p_0_in1_in[6]),
        .I2(p_0_in1_in[4]),
        .I3(p_0_in1_in[0]),
        .O(\FSM_sequential_pst[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_pst[2]_i_11 
       (.I0(p_0_in1_in[6]),
        .I1(rx_vec),
        .I2(p_0_in1_in[5]),
        .O(\FSM_sequential_pst[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \FSM_sequential_pst[2]_i_12 
       (.I0(p_0_in1_in[5]),
        .I1(p_0_in1_in[6]),
        .I2(Q[0]),
        .I3(rx_vec),
        .I4(p_0_in1_in[4]),
        .O(\FSM_sequential_pst[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55555555DDDDD5DD)) 
    \FSM_sequential_pst[2]_i_2 
       (.I0(byte_done),
        .I1(\FSM_sequential_pst[2]_i_5_n_0 ),
        .I2(\rx_vec_reg[2]_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\FSM_sequential_pst[2]_i_7_n_0 ),
        .O(byte_done_reg_0));
  LUT4 #(
    .INIT(16'h0070)) 
    \FSM_sequential_pst[2]_i_4 
       (.I0(\FSM_sequential_pst[2]_i_8_n_0 ),
        .I1(byte_done),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(byte_done_reg_1));
  LUT5 #(
    .INIT(32'h45AA05AA)) 
    \FSM_sequential_pst[2]_i_5 
       (.I0(Q[1]),
        .I1(\FSM_sequential_pst[2]_i_9_n_0 ),
        .I2(\FSM_sequential_pst[0]_i_7_n_0 ),
        .I3(Q[2]),
        .I4(\FSM_sequential_pst[2]_i_10_n_0 ),
        .O(\FSM_sequential_pst[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAEEAAAAAB)) 
    \FSM_sequential_pst[2]_i_6 
       (.I0(\FSM_sequential_pst[2]_i_11_n_0 ),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[1]),
        .I3(p_0_in1_in[3]),
        .I4(p_0_in1_in[4]),
        .I5(p_0_in1_in[0]),
        .O(\rx_vec_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0155FFFF)) 
    \FSM_sequential_pst[2]_i_7 
       (.I0(\FSM_sequential_pst[2]_i_12_n_0 ),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[2]),
        .I3(p_0_in1_in[3]),
        .I4(rst_n_IBUF),
        .I5(\FSM_sequential_pst[0]_i_3_0 ),
        .O(\FSM_sequential_pst[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_sequential_pst[2]_i_8 
       (.I0(p_0_in1_in[0]),
        .I1(p_0_in1_in[4]),
        .I2(p_0_in1_in[6]),
        .I3(p_0_in1_in[5]),
        .I4(\FSM_sequential_pst[0]_i_7_n_0 ),
        .O(\FSM_sequential_pst[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_pst[2]_i_9 
       (.I0(p_0_in1_in[4]),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[5]),
        .I3(p_0_in1_in[6]),
        .O(\FSM_sequential_pst[2]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter[0]),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0FD0)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter[3]),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[2]),
        .I1(bit_counter[1]),
        .I2(bit_counter[0]),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \bit_counter[3]_i_1 
       (.I0(br16_pulse_cnt_reg[3]),
        .I1(br16_pulse),
        .I2(busy_en),
        .I3(br16_pulse_cnt_reg[0]),
        .I4(br16_pulse_cnt_reg[1]),
        .I5(br16_pulse_cnt_reg[2]),
        .O(bit_counter0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \bit_counter[3]_i_2 
       (.I0(bit_counter[2]),
        .I1(bit_counter[1]),
        .I2(bit_counter[0]),
        .I3(bit_counter[3]),
        .O(\bit_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_counter0),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_counter0),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_counter0),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_counter0),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\bit_counter[3]_i_2_n_0 ),
        .Q(bit_counter[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \br16_acc[11]_i_2 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .O(\br16_acc[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[11]_i_3 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[13]),
        .O(\br16_acc[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \br16_acc[11]_i_4 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[12]),
        .O(\br16_acc[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[11]_i_5 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[11]),
        .O(\br16_acc[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \br16_acc[15]_i_2 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .O(\br16_acc[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \br16_acc[15]_i_3 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .O(\br16_acc[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \br16_acc[15]_i_4 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[18]),
        .O(\br16_acc[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \br16_acc[15]_i_5 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[17]),
        .O(\br16_acc[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[19]_i_2 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[20]),
        .O(\br16_acc[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \br16_acc[19]_i_3 
       (.I0(br16_acc_reg[19]),
        .O(\br16_acc[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[23]_i_2 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[25]),
        .O(\br16_acc[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \br16_acc[27]_i_2 
       (.I0(br16_pulse_i_2_n_0),
        .I1(br16_acc_reg[27]),
        .O(\br16_acc[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[8]_i_2 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[10]),
        .O(\br16_acc[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[8]_i_3 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[9]),
        .O(\br16_acc[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \br16_acc[8]_i_4 
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .I2(br16_acc_reg[8]),
        .O(\br16_acc[8]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[8]_i_1_n_4 ),
        .Q(br16_acc_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[11]_i_1_n_7 ),
        .Q(br16_acc_reg[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \br16_acc_reg[11]_i_1 
       (.CI(\br16_acc_reg[8]_i_1_n_0 ),
        .CO({\br16_acc_reg[11]_i_1_n_0 ,\br16_acc_reg[11]_i_1_n_1 ,\br16_acc_reg[11]_i_1_n_2 ,\br16_acc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,br16_acc_reg[13],\br16_acc[11]_i_2_n_0 ,br16_acc_reg[11]}),
        .O({\br16_acc_reg[11]_i_1_n_4 ,\br16_acc_reg[11]_i_1_n_5 ,\br16_acc_reg[11]_i_1_n_6 ,\br16_acc_reg[11]_i_1_n_7 }),
        .S({br16_acc_reg[14],\br16_acc[11]_i_3_n_0 ,\br16_acc[11]_i_4_n_0 ,\br16_acc[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[11]_i_1_n_6 ),
        .Q(br16_acc_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[11]_i_1_n_5 ),
        .Q(br16_acc_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[11]_i_1_n_4 ),
        .Q(br16_acc_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[15]_i_1_n_7 ),
        .Q(br16_acc_reg[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \br16_acc_reg[15]_i_1 
       (.CI(\br16_acc_reg[11]_i_1_n_0 ),
        .CO({\br16_acc_reg[15]_i_1_n_0 ,\br16_acc_reg[15]_i_1_n_1 ,\br16_acc_reg[15]_i_1_n_2 ,\br16_acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\br16_acc[15]_i_2_n_0 ,\br16_acc[15]_i_3_n_0 ,1'b0,1'b0}),
        .O({\br16_acc_reg[15]_i_1_n_4 ,\br16_acc_reg[15]_i_1_n_5 ,\br16_acc_reg[15]_i_1_n_6 ,\br16_acc_reg[15]_i_1_n_7 }),
        .S({\br16_acc[15]_i_4_n_0 ,\br16_acc[15]_i_5_n_0 ,br16_acc_reg[16:15]}));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[15]_i_1_n_6 ),
        .Q(br16_acc_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[15]_i_1_n_5 ),
        .Q(br16_acc_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[15]_i_1_n_4 ),
        .Q(br16_acc_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[19]_i_1_n_7 ),
        .Q(br16_acc_reg[19]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \br16_acc_reg[19]_i_1 
       (.CI(\br16_acc_reg[15]_i_1_n_0 ),
        .CO({\br16_acc_reg[19]_i_1_n_0 ,\br16_acc_reg[19]_i_1_n_1 ,\br16_acc_reg[19]_i_1_n_2 ,\br16_acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,br16_acc_reg[20],1'b1}),
        .O({\br16_acc_reg[19]_i_1_n_4 ,\br16_acc_reg[19]_i_1_n_5 ,\br16_acc_reg[19]_i_1_n_6 ,\br16_acc_reg[19]_i_1_n_7 }),
        .S({br16_acc_reg[22:21],\br16_acc[19]_i_2_n_0 ,\br16_acc[19]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[19]_i_1_n_6 ),
        .Q(br16_acc_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[19]_i_1_n_5 ),
        .Q(br16_acc_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[19]_i_1_n_4 ),
        .Q(br16_acc_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[23]_i_1_n_7 ),
        .Q(br16_acc_reg[23]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \br16_acc_reg[23]_i_1 
       (.CI(\br16_acc_reg[19]_i_1_n_0 ),
        .CO({\br16_acc_reg[23]_i_1_n_0 ,\br16_acc_reg[23]_i_1_n_1 ,\br16_acc_reg[23]_i_1_n_2 ,\br16_acc_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,br16_acc_reg[25],1'b0,1'b0}),
        .O({\br16_acc_reg[23]_i_1_n_4 ,\br16_acc_reg[23]_i_1_n_5 ,\br16_acc_reg[23]_i_1_n_6 ,\br16_acc_reg[23]_i_1_n_7 }),
        .S({br16_acc_reg[26],\br16_acc[23]_i_2_n_0 ,br16_acc_reg[24:23]}));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[23]_i_1_n_6 ),
        .Q(br16_acc_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[23]_i_1_n_5 ),
        .Q(br16_acc_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[23]_i_1_n_4 ),
        .Q(br16_acc_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[27]_i_1_n_7 ),
        .Q(br16_acc_reg[27]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \br16_acc_reg[27]_i_1 
       (.CI(\br16_acc_reg[23]_i_1_n_0 ),
        .CO(\NLW_br16_acc_reg[27]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_br16_acc_reg[27]_i_1_O_UNCONNECTED [3:1],\br16_acc_reg[27]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\br16_acc[27]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[8]_i_1_n_6 ),
        .Q(br16_acc_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \br16_acc_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\br16_acc_reg[8]_i_1_n_0 ,\br16_acc_reg[8]_i_1_n_1 ,\br16_acc_reg[8]_i_1_n_2 ,\br16_acc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({br16_acc_reg[10:8],1'b0}),
        .O({\br16_acc_reg[8]_i_1_n_4 ,\br16_acc_reg[8]_i_1_n_5 ,\br16_acc_reg[8]_i_1_n_6 ,\NLW_br16_acc_reg[8]_i_1_O_UNCONNECTED [0]}),
        .S({\br16_acc[8]_i_2_n_0 ,\br16_acc[8]_i_3_n_0 ,\br16_acc[8]_i_4_n_0 ,1'b0}));
  FDCE #(
    .INIT(1'b0)) 
    \br16_acc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\br16_acc_reg[8]_i_1_n_5 ),
        .Q(br16_acc_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \br16_pulse_cnt[0]_i_1 
       (.I0(busy_en),
        .I1(br16_pulse),
        .I2(br16_pulse_cnt_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \br16_pulse_cnt[1]_i_1 
       (.I0(busy_en),
        .I1(br16_pulse),
        .I2(br16_pulse_cnt_reg[1]),
        .I3(br16_pulse_cnt_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h08888000)) 
    \br16_pulse_cnt[2]_i_1 
       (.I0(busy_en),
        .I1(br16_pulse),
        .I2(br16_pulse_cnt_reg[0]),
        .I3(br16_pulse_cnt_reg[1]),
        .I4(br16_pulse_cnt_reg[2]),
        .O(p_0_in__3[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    \br16_pulse_cnt[3]_i_1 
       (.I0(sample_counter[3]),
        .I1(sample_counter[2]),
        .I2(sample_counter[1]),
        .I3(sample_counter[0]),
        .I4(rx_str_pulse25_out),
        .I5(\br16_pulse_cnt[3]_i_3_n_0 ),
        .O(\br16_pulse_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \br16_pulse_cnt[3]_i_2 
       (.I0(busy_en),
        .I1(br16_pulse),
        .I2(br16_pulse_cnt_reg[2]),
        .I3(br16_pulse_cnt_reg[1]),
        .I4(br16_pulse_cnt_reg[0]),
        .I5(br16_pulse_cnt_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \br16_pulse_cnt[3]_i_3 
       (.I0(br16_pulse),
        .I1(busy_en),
        .O(\br16_pulse_cnt[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \br16_pulse_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\br16_pulse_cnt[3]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(p_0_in__3[0]),
        .Q(br16_pulse_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_pulse_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\br16_pulse_cnt[3]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(p_0_in__3[1]),
        .Q(br16_pulse_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_pulse_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\br16_pulse_cnt[3]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(p_0_in__3[2]),
        .Q(br16_pulse_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \br16_pulse_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\br16_pulse_cnt[3]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(p_0_in__3[3]),
        .Q(br16_pulse_cnt_reg[3]));
  LUT2 #(
    .INIT(4'hE)) 
    br16_pulse_i_1
       (.I0(br16_acc_reg[27]),
        .I1(br16_pulse_i_2_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'h8A8A8A8A88888A88)) 
    br16_pulse_i_2
       (.I0(br16_acc_reg[26]),
        .I1(br16_acc_reg[25]),
        .I2(br16_pulse_i_3_n_0),
        .I3(br16_acc_reg[18]),
        .I4(br16_pulse_i_4_n_0),
        .I5(br16_acc_reg[19]),
        .O(br16_pulse_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    br16_pulse_i_3
       (.I0(br16_acc_reg[22]),
        .I1(br16_acc_reg[24]),
        .I2(br16_acc_reg[23]),
        .I3(br16_acc_reg[20]),
        .I4(br16_acc_reg[21]),
        .O(br16_pulse_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    br16_pulse_i_4
       (.I0(br16_pulse_i_5_n_0),
        .I1(br16_acc_reg[14]),
        .I2(br16_acc_reg[15]),
        .I3(br16_acc_reg[13]),
        .I4(br16_acc_reg[16]),
        .I5(br16_acc_reg[17]),
        .O(br16_pulse_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    br16_pulse_i_5
       (.I0(br16_acc_reg[9]),
        .I1(br16_acc_reg[11]),
        .I2(br16_acc_reg[8]),
        .I3(br16_acc_reg[12]),
        .I4(br16_acc_reg[10]),
        .O(br16_pulse_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    br16_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(in0),
        .Q(br16_pulse));
  LUT6 #(
    .INIT(64'h0707000777000000)) 
    busy_en_i_1
       (.I0(\FSM_onehot_pst_reg_n_0_[0] ),
        .I1(str_frame),
        .I2(\rx_vec[7]_i_1_n_0 ),
        .I3(\FSM_onehot_pst_reg_n_0_[1] ),
        .I4(\FSM_onehot_pst[2]_i_2_n_0 ),
        .I5(\FSM_onehot_pst_reg_n_0_[2] ),
        .O(busy_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    busy_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(busy_en_i_1_n_0),
        .Q(busy_en));
  LUT6 #(
    .INIT(64'hFFFF8000F4448000)) 
    byte_done_i_1
       (.I0(\FSM_onehot_pst[2]_i_2_n_0 ),
        .I1(\FSM_onehot_pst_reg_n_0_[1] ),
        .I2(\FSM_onehot_pst_reg_n_0_[0] ),
        .I3(str_frame),
        .I4(\FSM_onehot_pst_reg_n_0_[2] ),
        .I5(\rx_vec[7]_i_1_n_0 ),
        .O(byte_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    byte_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(byte_done_i_1_n_0),
        .Q(byte_done));
  FDPE #(
    .INIT(1'b1)) 
    rx_data_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(stage),
        .PRE(\br16_pulse_cnt_reg[3]_0 ),
        .Q(rx_data));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    rx_str_pulse_i_1
       (.I0(sample_counter[0]),
        .I1(sample_counter[1]),
        .I2(rx_str_pulse25_out),
        .I3(sample_counter[3]),
        .I4(sample_counter[2]),
        .I5(rx_data),
        .O(rx_str_pulse1_out));
  FDCE #(
    .INIT(1'b0)) 
    rx_str_pulse_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(rx_str_pulse1_out),
        .Q(str_frame));
  LUT5 #(
    .INIT(32'h00000800)) 
    \rx_vec[7]_i_1 
       (.I0(bit_counter0),
        .I1(bit_counter[3]),
        .I2(bit_counter[2]),
        .I3(bit_counter[0]),
        .I4(bit_counter[1]),
        .O(\rx_vec[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[1]),
        .Q(p_0_in1_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[2]),
        .Q(p_0_in1_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[3]),
        .Q(p_0_in1_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[4]),
        .Q(p_0_in1_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[5]),
        .Q(p_0_in1_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[6]),
        .Q(p_0_in1_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[7]),
        .Q(p_0_in1_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_vec_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_vec[7]_i_1_n_0 ),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(temp_rx_vec[8]),
        .Q(rx_vec));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \sample_counter[0]_i_1 
       (.I0(sample_counter[0]),
        .I1(\sample_counter[0]_i_2_n_0 ),
        .I2(sample_reg[0]),
        .I3(sample_reg[1]),
        .I4(sample_reg[2]),
        .I5(rx_data),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sample_counter[0]_i_2 
       (.I0(sample_counter[3]),
        .I1(sample_counter[2]),
        .I2(sample_counter[1]),
        .I3(sample_counter[0]),
        .O(\sample_counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \sample_counter[1]_i_1 
       (.I0(sample_counter[1]),
        .I1(sample_counter[0]),
        .I2(rx_data),
        .O(\sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \sample_counter[2]_i_1 
       (.I0(sample_counter[0]),
        .I1(sample_counter[1]),
        .I2(sample_counter[2]),
        .I3(rx_data),
        .O(\sample_counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sample_counter[3]_i_1 
       (.I0(br16_pulse),
        .I1(sample_en),
        .O(rx_str_pulse25_out));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \sample_counter[3]_i_2 
       (.I0(sample_counter[2]),
        .I1(sample_counter[1]),
        .I2(sample_counter[0]),
        .I3(sample_counter[3]),
        .I4(\sample_counter[3]_i_3_n_0 ),
        .O(\sample_counter[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \sample_counter[3]_i_3 
       (.I0(rx_data),
        .I1(sample_reg[2]),
        .I2(sample_reg[1]),
        .I3(sample_reg[0]),
        .I4(\sample_counter[0]_i_2_n_0 ),
        .O(\sample_counter[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(sample_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(sample_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(sample_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(sample_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h15)) 
    sample_en_i_1
       (.I0(\FSM_onehot_pst_reg_n_0_[2] ),
        .I1(\FSM_onehot_pst[2]_i_2_n_0 ),
        .I2(\FSM_onehot_pst_reg_n_0_[1] ),
        .O(sample_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(sample_en_i_1_n_0),
        .Q(sample_en));
  FDPE #(
    .INIT(1'b1)) 
    \sample_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .D(rx_data),
        .PRE(\br16_pulse_cnt_reg[3]_0 ),
        .Q(sample_reg[0]));
  FDPE #(
    .INIT(1'b1)) 
    \sample_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .D(sample_reg[0]),
        .PRE(\br16_pulse_cnt_reg[3]_0 ),
        .Q(sample_reg[1]));
  FDPE #(
    .INIT(1'b1)) 
    \sample_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_str_pulse25_out),
        .D(sample_reg[1]),
        .PRE(\br16_pulse_cnt_reg[3]_0 ),
        .Q(sample_reg[2]));
  FDPE #(
    .INIT(1'b1)) 
    stage_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(RX_LINE_IBUF),
        .PRE(\br16_pulse_cnt_reg[3]_0 ),
        .Q(stage));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[0]_i_1 
       (.I0(p_0_in1_in[0]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAABABABAAAB)) 
    \temp_frame_reg[111]_i_1 
       (.I0(byte_done),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \temp_frame_reg[111]_i_4 
       (.I0(Q[0]),
        .I1(byte_done),
        .I2(p_0_in1_in[4]),
        .I3(\temp_frame_reg[111]_i_6_n_0 ),
        .I4(\FSM_sequential_pst[1]_i_5_n_0 ),
        .I5(p_0_in1_in[5]),
        .O(\FSM_sequential_pst_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \temp_frame_reg[111]_i_5 
       (.I0(p_0_in1_in[2]),
        .I1(rx_vec),
        .I2(p_0_in1_in[3]),
        .I3(p_0_in1_in[4]),
        .I4(\FSM_sequential_pst[1]_i_6_n_0 ),
        .O(\rx_vec_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_frame_reg[111]_i_6 
       (.I0(p_0_in1_in[2]),
        .I1(p_0_in1_in[3]),
        .O(\temp_frame_reg[111]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[1]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[2]_i_1 
       (.I0(p_0_in1_in[2]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[3]_i_1 
       (.I0(p_0_in1_in[3]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[4]_i_1 
       (.I0(p_0_in1_in[4]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[5]_i_1 
       (.I0(p_0_in1_in[5]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[6]_i_1 
       (.I0(p_0_in1_in[6]),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[7]_i_1 
       (.I0(rx_vec),
        .I1(\FSM_sequential_pst_reg[2] ),
        .I2(\temp_frame_reg_reg[0] ),
        .I3(\temp_frame_reg_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_pst_reg[0] ),
        .O(\rx_vec_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hFB00FBFF08000800)) 
    \temp_rx_vec[1]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[5]_i_2_n_0 ),
        .I2(\temp_rx_vec[3]_i_2_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[1]),
        .O(\temp_rx_vec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FBFF08000800)) 
    \temp_rx_vec[2]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[6]_i_2_n_0 ),
        .I2(\temp_rx_vec[3]_i_2_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[2]),
        .O(\temp_rx_vec[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FBFF08000800)) 
    \temp_rx_vec[3]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[7]_i_2_n_0 ),
        .I2(\temp_rx_vec[3]_i_2_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[3]),
        .O(\temp_rx_vec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_rx_vec[3]_i_2 
       (.I0(bit_counter[3]),
        .I1(bit_counter[2]),
        .O(\temp_rx_vec[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FBFF08000800)) 
    \temp_rx_vec[4]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[7]_i_3_n_0 ),
        .I2(\temp_rx_vec[4]_i_2_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[4]),
        .O(\temp_rx_vec[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_rx_vec[4]_i_2 
       (.I0(bit_counter[0]),
        .I1(bit_counter[1]),
        .O(\temp_rx_vec[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF00BFFF80008000)) 
    \temp_rx_vec[5]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[5]_i_2_n_0 ),
        .I2(\temp_rx_vec[7]_i_3_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[5]),
        .O(\temp_rx_vec[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_rx_vec[5]_i_2 
       (.I0(bit_counter[0]),
        .I1(bit_counter[1]),
        .O(\temp_rx_vec[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF00BFFF80008000)) 
    \temp_rx_vec[6]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[7]_i_3_n_0 ),
        .I2(\temp_rx_vec[6]_i_2_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[6]),
        .O(\temp_rx_vec[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_rx_vec[6]_i_2 
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .O(\temp_rx_vec[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF00BFFF80008000)) 
    \temp_rx_vec[7]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[7]_i_2_n_0 ),
        .I2(\temp_rx_vec[7]_i_3_n_0 ),
        .I3(bit_counter0),
        .I4(\FSM_onehot_pst_reg_n_0_[0] ),
        .I5(temp_rx_vec[7]),
        .O(\temp_rx_vec[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_rx_vec[7]_i_2 
       (.I0(bit_counter[0]),
        .I1(bit_counter[1]),
        .O(\temp_rx_vec[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_rx_vec[7]_i_3 
       (.I0(bit_counter[2]),
        .I1(bit_counter[3]),
        .O(\temp_rx_vec[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB0BF8080)) 
    \temp_rx_vec[8]_i_1 
       (.I0(rx_data),
        .I1(\temp_rx_vec[8]_i_2_n_0 ),
        .I2(bit_counter0),
        .I3(\FSM_onehot_pst_reg_n_0_[0] ),
        .I4(temp_rx_vec[8]),
        .O(\temp_rx_vec[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \temp_rx_vec[8]_i_2 
       (.I0(bit_counter[2]),
        .I1(bit_counter[3]),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .O(\temp_rx_vec[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[1]_i_1_n_0 ),
        .Q(temp_rx_vec[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[2]_i_1_n_0 ),
        .Q(temp_rx_vec[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[3]_i_1_n_0 ),
        .Q(temp_rx_vec[3]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[4]_i_1_n_0 ),
        .Q(temp_rx_vec[4]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[5]_i_1_n_0 ),
        .Q(temp_rx_vec[5]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[6]_i_1_n_0 ),
        .Q(temp_rx_vec[6]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[7]_i_1_n_0 ),
        .Q(temp_rx_vec[7]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_rx_vec_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\br16_pulse_cnt_reg[3]_0 ),
        .D(\temp_rx_vec[8]_i_1_n_0 ),
        .Q(temp_rx_vec[8]));
endmodule

module clk_div
   (E,
    clk_IBUF_BUFG,
    clk_en_reg_0);
  output [0:0]E;
  input clk_IBUF_BUFG;
  input clk_en_reg_0;

  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire clk_en;
  wire clk_en_reg_0;
  wire clk_en_reg_n_0;
  wire [17:0]counter;
  wire \counter[17]_i_2_n_0 ;
  wire \counter[17]_i_4_n_0 ;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [17:1]data0;
  wire \temp_out[7]_i_2_n_0 ;
  wire \temp_out[7]_i_3_n_0 ;
  wire \temp_out[7]_i_4_n_0 ;
  wire [3:0]\NLW_counter_reg[17]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[17]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    clk_en_i_1
       (.I0(\counter[17]_i_2_n_0 ),
        .O(clk_en));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    clk_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(clk_en),
        .Q(clk_en_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[12]),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[13]),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[14]),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[15]),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[16]),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[17]),
        .O(counter[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \counter[17]_i_2 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[8] ),
        .I4(\counter[17]_i_4_n_0 ),
        .I5(\temp_out[7]_i_3_n_0 ),
        .O(\counter[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[17]_i_4 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[14] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(\counter[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\counter[17]_i_2_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[17]_i_3 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO(\NLW_counter_reg[17]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[17]_i_3_O_UNCONNECTED [3:1],data0[17]}),
        .S({1'b0,1'b0,1'b0,\counter_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_en_reg_0),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \temp_out[7]_i_1 
       (.I0(\temp_out[7]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(clk_en_reg_n_0),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\temp_out[7]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \temp_out[7]_i_2 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[15] ),
        .I5(\counter_reg_n_0_[14] ),
        .O(\temp_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_out[7]_i_3 
       (.I0(\temp_out[7]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter_reg_n_0_[11] ),
        .O(\temp_out[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_out[7]_i_4 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[17] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[5] ),
        .O(\temp_out[7]_i_4_n_0 ));
endmodule

module disp_reg
   (SEG7_OBUF,
    Q,
    \hex_disp_vec_reg[1]_0 ,
    rst_n_IBUF,
    \SEG7[0] ,
    \SEG7[0]_0 ,
    \SEG7_OBUF[0]_inst_i_1_0 ,
    \SEG7_OBUF[6]_inst_i_5_0 ,
    \SEG7_OBUF[6]_inst_i_5_1 ,
    stabled_out,
    D,
    clk_IBUF_BUFG,
    \hex_disp_vec_reg[0]_0 );
  output [6:0]SEG7_OBUF;
  output [1:0]Q;
  output \hex_disp_vec_reg[1]_0 ;
  input rst_n_IBUF;
  input \SEG7[0] ;
  input \SEG7[0]_0 ;
  input \SEG7_OBUF[0]_inst_i_1_0 ;
  input \SEG7_OBUF[6]_inst_i_5_0 ;
  input \SEG7_OBUF[6]_inst_i_5_1 ;
  input [0:0]stabled_out;
  input [25:0]D;
  input clk_IBUF_BUFG;
  input \hex_disp_vec_reg[0]_0 ;

  wire [25:0]D;
  wire [1:0]Q;
  wire \SEG7[0] ;
  wire \SEG7[0]_0 ;
  wire [6:0]SEG7_OBUF;
  wire \SEG7_OBUF[0]_inst_i_1_0 ;
  wire \SEG7_OBUF[6]_inst_i_10_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_19_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_2_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_3_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_5_0 ;
  wire \SEG7_OBUF[6]_inst_i_5_1 ;
  wire \SEG7_OBUF[6]_inst_i_5_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_8_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_9_n_0 ;
  wire clk_IBUF_BUFG;
  wire [28:0]hex_disp_vec;
  wire \hex_disp_vec_reg[0]_0 ;
  wire \hex_disp_vec_reg[1]_0 ;
  wire rst_n_IBUF;
  wire [0:0]stabled_out;

  LUT6 #(
    .INIT(64'h77757757777577D5)) 
    \SEG7_OBUF[0]_inst_i_1 
       (.I0(rst_n_IBUF),
        .I1(\SEG7[0] ),
        .I2(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG7[0]_0 ),
        .I4(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .I5(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .O(SEG7_OBUF[0]));
  LUT6 #(
    .INIT(64'hD5D5D5F5D555D5D7)) 
    \SEG7_OBUF[1]_inst_i_1 
       (.I0(rst_n_IBUF),
        .I1(\SEG7[0] ),
        .I2(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG7[0]_0 ),
        .I4(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .I5(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .O(SEG7_OBUF[1]));
  LUT6 #(
    .INIT(64'h55755575557755F5)) 
    \SEG7_OBUF[2]_inst_i_1 
       (.I0(rst_n_IBUF),
        .I1(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .I2(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEG7[0]_0 ),
        .I4(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .I5(\SEG7[0] ),
        .O(SEG7_OBUF[2]));
  LUT6 #(
    .INIT(64'h00004238FFFFFFFF)) 
    \SEG7_OBUF[3]_inst_i_1 
       (.I0(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .I1(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEG7[0] ),
        .I3(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .I4(\SEG7[0]_0 ),
        .I5(rst_n_IBUF),
        .O(SEG7_OBUF[3]));
  LUT6 #(
    .INIT(64'hF555D555F55555FD)) 
    \SEG7_OBUF[4]_inst_i_1 
       (.I0(rst_n_IBUF),
        .I1(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .I2(\SEG7[0] ),
        .I3(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .I4(\SEG7[0]_0 ),
        .I5(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .O(SEG7_OBUF[4]));
  LUT6 #(
    .INIT(64'h5575555757775575)) 
    \SEG7_OBUF[5]_inst_i_1 
       (.I0(rst_n_IBUF),
        .I1(\SEG7[0]_0 ),
        .I2(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .I3(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .I4(\SEG7[0] ),
        .I5(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .O(SEG7_OBUF[5]));
  LUT6 #(
    .INIT(64'h00040601FFFFFFFF)) 
    \SEG7_OBUF[6]_inst_i_1 
       (.I0(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG7_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEG7[0]_0 ),
        .I3(\SEG7_OBUF[6]_inst_i_5_n_0 ),
        .I4(\SEG7[0] ),
        .I5(rst_n_IBUF),
        .O(SEG7_OBUF[6]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG7_OBUF[6]_inst_i_10 
       (.I0(hex_disp_vec[2]),
        .I1(hex_disp_vec[6]),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[10]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[14]),
        .O(\SEG7_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG7_OBUF[6]_inst_i_19 
       (.I0(hex_disp_vec[3]),
        .I1(hex_disp_vec[7]),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[11]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[15]),
        .O(\SEG7_OBUF[6]_inst_i_19_n_0 ));
  MUXF7 \SEG7_OBUF[6]_inst_i_2 
       (.I0(\SEG7_OBUF[6]_inst_i_8_n_0 ),
        .I1(\SEG7_OBUF[6]_inst_i_9_n_0 ),
        .O(\SEG7_OBUF[6]_inst_i_2_n_0 ),
        .S(\SEG7_OBUF[0]_inst_i_1_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG7_OBUF[6]_inst_i_21 
       (.I0(hex_disp_vec[1]),
        .I1(hex_disp_vec[5]),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[9]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[13]),
        .O(\hex_disp_vec_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BBBBBBB8BBB)) 
    \SEG7_OBUF[6]_inst_i_3 
       (.I0(\SEG7_OBUF[6]_inst_i_10_n_0 ),
        .I1(\SEG7_OBUF[0]_inst_i_1_0 ),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[22]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[18]),
        .O(\SEG7_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4747477777774777)) 
    \SEG7_OBUF[6]_inst_i_5 
       (.I0(\SEG7_OBUF[6]_inst_i_19_n_0 ),
        .I1(\SEG7_OBUF[0]_inst_i_1_0 ),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[23]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[19]),
        .O(\SEG7_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG7_OBUF[6]_inst_i_8 
       (.I0(hex_disp_vec[16]),
        .I1(hex_disp_vec[20]),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[24]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[28]),
        .O(\SEG7_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \SEG7_OBUF[6]_inst_i_9 
       (.I0(hex_disp_vec[0]),
        .I1(hex_disp_vec[4]),
        .I2(\SEG7_OBUF[6]_inst_i_5_0 ),
        .I3(hex_disp_vec[8]),
        .I4(\SEG7_OBUF[6]_inst_i_5_1 ),
        .I5(hex_disp_vec[12]),
        .O(\SEG7_OBUF[6]_inst_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[0]),
        .Q(hex_disp_vec[0]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[10]),
        .Q(hex_disp_vec[10]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[11]),
        .Q(hex_disp_vec[11]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[12]),
        .Q(hex_disp_vec[12]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[13]),
        .Q(hex_disp_vec[13]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[14]),
        .Q(hex_disp_vec[14]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[15]),
        .Q(hex_disp_vec[15]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[16]),
        .Q(hex_disp_vec[16]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[18]),
        .Q(hex_disp_vec[18]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[19]),
        .Q(hex_disp_vec[19]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[1]),
        .Q(hex_disp_vec[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[20]),
        .Q(hex_disp_vec[20]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[22]),
        .Q(hex_disp_vec[22]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[23]),
        .Q(hex_disp_vec[23]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[24]),
        .Q(hex_disp_vec[24]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[25]),
        .Q(hex_disp_vec[28]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[2]),
        .Q(hex_disp_vec[2]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[3]),
        .Q(hex_disp_vec[3]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[4]),
        .Q(hex_disp_vec[4]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[5]),
        .Q(hex_disp_vec[5]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[6]),
        .Q(hex_disp_vec[6]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[7]),
        .Q(hex_disp_vec[7]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[8]),
        .Q(hex_disp_vec[8]));
  FDCE #(
    .INIT(1'b0)) 
    \hex_disp_vec_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(stabled_out),
        .CLR(\hex_disp_vec_reg[0]_0 ),
        .D(D[9]),
        .Q(hex_disp_vec[9]));
endmodule

module display_selection
   (\blue_reg[7]_0 ,
    \red_reg[7]_0 ,
    \green_reg[7]_0 ,
    \blue_reg[7]_1 ,
    \red_reg[0]_0 ,
    \red_reg[0]_1 ,
    \stabled_out_reg[0] ,
    \stabled_out_reg[0]_0 ,
    \blue_reg[0]_0 ,
    \blue_reg[0]_1 ,
    \stabled_out_reg[0]_1 ,
    \green_reg[0]_0 ,
    \green_reg[0]_1 ,
    \blue_reg[2]_0 ,
    \green_reg[2]_0 ,
    \red_reg[2]_0 ,
    S,
    DI,
    \green_reg[7]_1 ,
    \green_reg[7]_2 ,
    \blue_reg[7]_2 ,
    \blue_reg[7]_3 ,
    \led_sel_reg[7]_0 ,
    D,
    \red_reg[0]_2 ,
    red_value,
    stabled_out,
    \red_reg[1]_0 ,
    \red_reg[5]_0 ,
    \green_reg[0]_2 ,
    green_value,
    \green_reg[1]_0 ,
    blue_value,
    \blue_reg[0]_2 ,
    \blue_reg[1]_0 ,
    \led_sel_reg[7]_1 ,
    \led_sel_reg[7]_2 ,
    \red_reg[0]_3 ,
    \red_reg[1]_1 ,
    pwm_out_reg,
    pwm_out_reg_0,
    Q,
    pwm_out_reg_1,
    pwm_out_reg_2,
    pwm_out_reg_3,
    pwm_out_reg_4,
    pwm_out_reg_5,
    pwm_out_reg_6,
    clk_IBUF_BUFG,
    \green_reg[0]_3 ,
    \green_reg[4]_0 ,
    \blue_reg[4]_0 );
  output [23:0]\blue_reg[7]_0 ;
  output \red_reg[7]_0 ;
  output \green_reg[7]_0 ;
  output \blue_reg[7]_1 ;
  output \red_reg[0]_0 ;
  output \red_reg[0]_1 ;
  output \stabled_out_reg[0] ;
  output \stabled_out_reg[0]_0 ;
  output \blue_reg[0]_0 ;
  output \blue_reg[0]_1 ;
  output \stabled_out_reg[0]_1 ;
  output \green_reg[0]_0 ;
  output \green_reg[0]_1 ;
  output \blue_reg[2]_0 ;
  output \green_reg[2]_0 ;
  output \red_reg[2]_0 ;
  output [0:0]S;
  output [0:0]DI;
  output [0:0]\green_reg[7]_1 ;
  output [0:0]\green_reg[7]_2 ;
  output [0:0]\blue_reg[7]_2 ;
  output [0:0]\blue_reg[7]_3 ;
  output [3:0]\led_sel_reg[7]_0 ;
  input [2:0]D;
  input \red_reg[0]_2 ;
  input [4:0]red_value;
  input [0:0]stabled_out;
  input \red_reg[1]_0 ;
  input \red_reg[5]_0 ;
  input \green_reg[0]_2 ;
  input [4:0]green_value;
  input \green_reg[1]_0 ;
  input [4:0]blue_value;
  input \blue_reg[0]_2 ;
  input \blue_reg[1]_0 ;
  input [0:0]\led_sel_reg[7]_1 ;
  input [0:0]\led_sel_reg[7]_2 ;
  input \red_reg[0]_3 ;
  input [0:0]\red_reg[1]_1 ;
  input pwm_out_reg;
  input pwm_out_reg_0;
  input [1:0]Q;
  input pwm_out_reg_1;
  input pwm_out_reg_2;
  input [1:0]pwm_out_reg_3;
  input pwm_out_reg_4;
  input pwm_out_reg_5;
  input [1:0]pwm_out_reg_6;
  input clk_IBUF_BUFG;
  input \green_reg[0]_3 ;
  input [2:0]\green_reg[4]_0 ;
  input [2:0]\blue_reg[4]_0 ;

  wire [2:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [5:5]blue11_in;
  wire \blue[0]_i_1_n_0 ;
  wire \blue[0]_i_2_n_0 ;
  wire \blue[0]_i_3_n_0 ;
  wire \blue[0]_i_4_n_0 ;
  wire \blue[1]_i_1_n_0 ;
  wire \blue[1]_i_2_n_0 ;
  wire \blue[4]_i_4_n_0 ;
  wire \blue[5]_i_1_n_0 ;
  wire \blue[5]_i_3_n_0 ;
  wire \blue[6]_i_1_n_0 ;
  wire \blue[6]_i_2_n_0 ;
  wire \blue[6]_i_3_n_0 ;
  wire \blue[6]_i_4_n_0 ;
  wire \blue[6]_i_6_n_0 ;
  wire \blue[6]_i_7_n_0 ;
  wire \blue[7]_i_1_n_0 ;
  wire \blue[7]_i_2_n_0 ;
  wire \blue[7]_i_4_n_0 ;
  wire \blue[7]_i_5_n_0 ;
  wire \blue[7]_i_6_n_0 ;
  wire \blue[7]_i_7_n_0 ;
  wire \blue_reg[0]_0 ;
  wire \blue_reg[0]_1 ;
  wire \blue_reg[0]_2 ;
  wire \blue_reg[1]_0 ;
  wire \blue_reg[2]_0 ;
  wire [2:0]\blue_reg[4]_0 ;
  wire [23:0]\blue_reg[7]_0 ;
  wire \blue_reg[7]_1 ;
  wire [0:0]\blue_reg[7]_2 ;
  wire [0:0]\blue_reg[7]_3 ;
  wire [4:0]blue_value;
  wire clk_IBUF_BUFG;
  wire [5:5]green11_in;
  wire \green[0]_i_1_n_0 ;
  wire \green[0]_i_2_n_0 ;
  wire \green[0]_i_3_n_0 ;
  wire \green[0]_i_4_n_0 ;
  wire \green[1]_i_1_n_0 ;
  wire \green[1]_i_2_n_0 ;
  wire \green[4]_i_5_n_0 ;
  wire \green[5]_i_1_n_0 ;
  wire \green[5]_i_3_n_0 ;
  wire \green[6]_i_1_n_0 ;
  wire \green[6]_i_2_n_0 ;
  wire \green[6]_i_3_n_0 ;
  wire \green[6]_i_4_n_0 ;
  wire \green[6]_i_6_n_0 ;
  wire \green[6]_i_7_n_0 ;
  wire \green[7]_i_1_n_0 ;
  wire \green[7]_i_2_n_0 ;
  wire \green[7]_i_4_n_0 ;
  wire \green[7]_i_5_n_0 ;
  wire \green[7]_i_6_n_0 ;
  wire \green[7]_i_7_n_0 ;
  wire \green_reg[0]_0 ;
  wire \green_reg[0]_1 ;
  wire \green_reg[0]_2 ;
  wire \green_reg[0]_3 ;
  wire \green_reg[1]_0 ;
  wire \green_reg[2]_0 ;
  wire [2:0]\green_reg[4]_0 ;
  wire \green_reg[7]_0 ;
  wire [0:0]\green_reg[7]_1 ;
  wire [0:0]\green_reg[7]_2 ;
  wire [4:0]green_value;
  wire [3:0]\led_sel_reg[7]_0 ;
  wire [0:0]\led_sel_reg[7]_1 ;
  wire [0:0]\led_sel_reg[7]_2 ;
  wire [1:0]nst__0;
  wire [7:1]p_0_in;
  wire [7:0]p_1_in;
  wire [1:0]pst;
  wire pwm_out_reg;
  wire pwm_out_reg_0;
  wire pwm_out_reg_1;
  wire pwm_out_reg_2;
  wire [1:0]pwm_out_reg_3;
  wire pwm_out_reg_4;
  wire pwm_out_reg_5;
  wire [1:0]pwm_out_reg_6;
  wire [5:5]red11_in;
  wire \red[0]_i_2_n_0 ;
  wire \red[0]_i_3_n_0 ;
  wire \red[0]_i_4_n_0 ;
  wire \red[1]_i_2_n_0 ;
  wire \red[4]_i_5_n_0 ;
  wire \red[5]_i_3_n_0 ;
  wire \red[6]_i_2_n_0 ;
  wire \red[6]_i_3_n_0 ;
  wire \red[6]_i_4_n_0 ;
  wire \red[6]_i_6_n_0 ;
  wire \red[6]_i_7_n_0 ;
  wire \red[7]_i_1_n_0 ;
  wire \red[7]_i_5_n_0 ;
  wire \red[7]_i_6_n_0 ;
  wire \red[7]_i_8_n_0 ;
  wire \red[7]_i_9_n_0 ;
  wire \red_reg[0]_0 ;
  wire \red_reg[0]_1 ;
  wire \red_reg[0]_2 ;
  wire \red_reg[0]_3 ;
  wire \red_reg[1]_0 ;
  wire [0:0]\red_reg[1]_1 ;
  wire \red_reg[2]_0 ;
  wire \red_reg[5]_0 ;
  wire \red_reg[7]_0 ;
  wire [4:0]red_value;
  wire [0:0]stabled_out;
  wire \stabled_out_reg[0] ;
  wire \stabled_out_reg[0]_0 ;
  wire \stabled_out_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0DEA)) 
    \FSM_sequential_pst[0]_i_1__0 
       (.I0(\led_sel_reg[7]_1 ),
        .I1(pst[1]),
        .I2(\led_sel_reg[7]_2 ),
        .I3(pst[0]),
        .O(nst__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFCD0)) 
    \FSM_sequential_pst[1]_i_1__0 
       (.I0(\led_sel_reg[7]_2 ),
        .I1(pst[0]),
        .I2(pst[1]),
        .I3(\led_sel_reg[7]_1 ),
        .O(nst__0[1]));
  (* FSM_ENCODED_STATES = "LEDS:00,RED_S:01,BLUE_S:11,GREEN_S:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pst_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\green_reg[0]_3 ),
        .D(nst__0[0]),
        .Q(pst[0]));
  (* FSM_ENCODED_STATES = "LEDS:00,RED_S:01,BLUE_S:11,GREEN_S:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pst_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\green_reg[0]_3 ),
        .D(nst__0[1]),
        .Q(pst[1]));
  LUT6 #(
    .INIT(64'hFFAAAAAABABABABA)) 
    \blue[0]_i_1 
       (.I0(\blue[0]_i_2_n_0 ),
        .I1(\blue_reg[7]_0 [16]),
        .I2(\blue[0]_i_3_n_0 ),
        .I3(blue_value[0]),
        .I4(\blue_reg[0]_2 ),
        .I5(stabled_out),
        .O(\blue[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC444444444444444)) 
    \blue[0]_i_2 
       (.I0(\blue_reg[7]_0 [16]),
        .I1(\red_reg[5]_0 ),
        .I2(\blue_reg[7]_0 [23]),
        .I3(\blue_reg[7]_0 [17]),
        .I4(\blue[7]_i_7_n_0 ),
        .I5(\blue[0]_i_4_n_0 ),
        .O(\blue[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \blue[0]_i_3 
       (.I0(\blue_reg[7]_0 [22]),
        .I1(\blue_reg[7]_0 [20]),
        .I2(\blue[6]_i_7_n_0 ),
        .I3(\blue_reg[7]_0 [19]),
        .I4(\blue_reg[7]_0 [21]),
        .I5(\blue_reg[7]_0 [23]),
        .O(\blue[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \blue[0]_i_4 
       (.I0(\blue_reg[7]_0 [21]),
        .I1(\blue_reg[7]_0 [20]),
        .I2(\blue_reg[7]_0 [22]),
        .O(\blue[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF88888F8)) 
    \blue[1]_i_1 
       (.I0(blue_value[1]),
        .I1(\blue_reg[1]_0 ),
        .I2(\blue[6]_i_4_n_0 ),
        .I3(\blue_reg[7]_0 [17]),
        .I4(\blue_reg[7]_0 [16]),
        .I5(\blue[1]_i_2_n_0 ),
        .O(\blue[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A0A0A0C00)) 
    \blue[1]_i_2 
       (.I0(\red_reg[1]_1 ),
        .I1(\blue[7]_i_5_n_0 ),
        .I2(stabled_out),
        .I3(\blue_reg[7]_0 [23]),
        .I4(\blue_reg[7]_0 [17]),
        .I5(\blue_reg[7]_0 [16]),
        .O(\blue[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2200F02222000)) 
    \blue[2]_i_2 
       (.I0(\red_reg[1]_1 ),
        .I1(stabled_out),
        .I2(\blue_reg[7]_0 [16]),
        .I3(\blue_reg[7]_0 [17]),
        .I4(\blue_reg[7]_0 [18]),
        .I5(\blue[6]_i_4_n_0 ),
        .O(\stabled_out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFE80032AAA8000)) 
    \blue[3]_i_2 
       (.I0(\red_reg[5]_0 ),
        .I1(\blue_reg[7]_0 [16]),
        .I2(\blue_reg[7]_0 [17]),
        .I3(\blue_reg[7]_0 [18]),
        .I4(\blue_reg[7]_0 [19]),
        .I5(\blue[6]_i_4_n_0 ),
        .O(\blue_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFF4888F44448888)) 
    \blue[4]_i_3 
       (.I0(\blue[6]_i_6_n_0 ),
        .I1(\red_reg[5]_0 ),
        .I2(\blue_reg[7]_0 [16]),
        .I3(\blue[4]_i_4_n_0 ),
        .I4(\blue_reg[7]_0 [20]),
        .I5(\blue[6]_i_4_n_0 ),
        .O(\blue_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \blue[4]_i_4 
       (.I0(\blue_reg[7]_0 [18]),
        .I1(\blue_reg[7]_0 [17]),
        .I2(\blue_reg[7]_0 [19]),
        .O(\blue[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \blue[5]_i_1 
       (.I0(\blue_reg[1]_0 ),
        .I1(blue_value[2]),
        .I2(blue11_in),
        .I3(\red_reg[5]_0 ),
        .I4(\blue[5]_i_3_n_0 ),
        .I5(\blue_reg[7]_1 ),
        .O(\blue[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \blue[5]_i_2 
       (.I0(\blue_reg[7]_0 [20]),
        .I1(\blue_reg[7]_0 [19]),
        .I2(\blue_reg[7]_0 [18]),
        .I3(\blue_reg[7]_0 [17]),
        .I4(\blue_reg[7]_0 [16]),
        .I5(\blue_reg[7]_0 [21]),
        .O(blue11_in));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \blue[5]_i_3 
       (.I0(\blue[6]_i_4_n_0 ),
        .I1(\blue_reg[7]_0 [21]),
        .I2(\blue_reg[7]_0 [20]),
        .I3(\blue[6]_i_7_n_0 ),
        .I4(\blue_reg[7]_0 [19]),
        .I5(\blue_reg[7]_0 [16]),
        .O(\blue[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F8)) 
    \blue[6]_i_1 
       (.I0(\blue_reg[1]_0 ),
        .I1(blue_value[3]),
        .I2(\blue[6]_i_2_n_0 ),
        .I3(\blue[6]_i_3_n_0 ),
        .I4(\blue[6]_i_4_n_0 ),
        .I5(\blue_reg[7]_1 ),
        .O(\blue[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \blue[6]_i_2 
       (.I0(stabled_out),
        .I1(\red_reg[1]_1 ),
        .I2(\blue_reg[7]_0 [22]),
        .I3(\blue_reg[7]_0 [21]),
        .I4(\blue_reg[7]_0 [20]),
        .I5(\blue[6]_i_6_n_0 ),
        .O(\blue[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \blue[6]_i_3 
       (.I0(\blue_reg[7]_0 [16]),
        .I1(\blue_reg[7]_0 [20]),
        .I2(\blue[6]_i_7_n_0 ),
        .I3(\blue_reg[7]_0 [19]),
        .I4(\blue_reg[7]_0 [21]),
        .I5(\blue_reg[7]_0 [22]),
        .O(\blue[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \blue[6]_i_4 
       (.I0(\blue_reg[7]_0 [16]),
        .I1(\blue[7]_i_6_n_0 ),
        .I2(\blue_reg[7]_0 [23]),
        .I3(\red_reg[1]_1 ),
        .I4(stabled_out),
        .O(\blue[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \blue[6]_i_5 
       (.I0(\blue_reg[7]_0 [23]),
        .I1(\red_reg[5]_0 ),
        .I2(\blue[6]_i_6_n_0 ),
        .I3(\blue_reg[7]_0 [21]),
        .I4(\blue_reg[7]_0 [20]),
        .I5(\blue_reg[7]_0 [22]),
        .O(\blue_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \blue[6]_i_6 
       (.I0(\blue_reg[7]_0 [19]),
        .I1(\blue_reg[7]_0 [18]),
        .I2(\blue_reg[7]_0 [17]),
        .I3(\blue_reg[7]_0 [16]),
        .O(\blue[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \blue[6]_i_7 
       (.I0(\blue_reg[7]_0 [17]),
        .I1(\blue_reg[7]_0 [18]),
        .O(\blue[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF74000000)) 
    \blue[7]_i_1 
       (.I0(\led_sel_reg[7]_2 ),
        .I1(pst[0]),
        .I2(\led_sel_reg[7]_1 ),
        .I3(\red_reg[0]_3 ),
        .I4(pst[1]),
        .I5(stabled_out),
        .O(\blue[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F8FFF8F8F8)) 
    \blue[7]_i_2 
       (.I0(\blue_reg[1]_0 ),
        .I1(blue_value[4]),
        .I2(\blue[7]_i_4_n_0 ),
        .I3(\blue[7]_i_5_n_0 ),
        .I4(\red_reg[5]_0 ),
        .I5(\blue_reg[7]_0 [23]),
        .O(\blue[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h10101000)) 
    \blue[7]_i_4 
       (.I0(stabled_out),
        .I1(\red_reg[1]_1 ),
        .I2(\blue_reg[7]_0 [23]),
        .I3(\blue[7]_i_6_n_0 ),
        .I4(\blue_reg[7]_0 [16]),
        .O(\blue[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \blue[7]_i_5 
       (.I0(\blue_reg[7]_0 [22]),
        .I1(\blue_reg[7]_0 [20]),
        .I2(\blue_reg[7]_0 [21]),
        .I3(\blue_reg[7]_0 [16]),
        .I4(\blue_reg[7]_0 [17]),
        .I5(\blue[7]_i_7_n_0 ),
        .O(\blue[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \blue[7]_i_6 
       (.I0(\blue_reg[7]_0 [21]),
        .I1(\blue_reg[7]_0 [19]),
        .I2(\blue_reg[7]_0 [17]),
        .I3(\blue_reg[7]_0 [18]),
        .I4(\blue_reg[7]_0 [20]),
        .I5(\blue_reg[7]_0 [22]),
        .O(\blue[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \blue[7]_i_7 
       (.I0(\blue_reg[7]_0 [18]),
        .I1(\blue_reg[7]_0 [19]),
        .O(\blue[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue[0]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue[1]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue_reg[4]_0 [0]),
        .Q(\blue_reg[7]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue_reg[4]_0 [1]),
        .Q(\blue_reg[7]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue_reg[4]_0 [2]),
        .Q(\blue_reg[7]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue[5]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue[6]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \blue_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\blue[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\blue[7]_i_2_n_0 ),
        .Q(\blue_reg[7]_0 [23]));
  LUT6 #(
    .INIT(64'hEAEAEAEAAAAAFFAA)) 
    \green[0]_i_1 
       (.I0(\green[0]_i_2_n_0 ),
        .I1(\green_reg[0]_2 ),
        .I2(green_value[0]),
        .I3(\green[0]_i_3_n_0 ),
        .I4(\blue_reg[7]_0 [8]),
        .I5(stabled_out),
        .O(\green[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC444444444444444)) 
    \green[0]_i_2 
       (.I0(\blue_reg[7]_0 [8]),
        .I1(\red_reg[5]_0 ),
        .I2(\blue_reg[7]_0 [15]),
        .I3(\blue_reg[7]_0 [9]),
        .I4(\green[7]_i_7_n_0 ),
        .I5(\green[0]_i_4_n_0 ),
        .O(\green[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \green[0]_i_3 
       (.I0(\blue_reg[7]_0 [14]),
        .I1(\blue_reg[7]_0 [12]),
        .I2(\green[6]_i_7_n_0 ),
        .I3(\blue_reg[7]_0 [11]),
        .I4(\blue_reg[7]_0 [13]),
        .I5(\blue_reg[7]_0 [15]),
        .O(\green[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \green[0]_i_4 
       (.I0(\blue_reg[7]_0 [13]),
        .I1(\blue_reg[7]_0 [12]),
        .I2(\blue_reg[7]_0 [14]),
        .O(\green[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF88888F8)) 
    \green[1]_i_1 
       (.I0(green_value[1]),
        .I1(\green_reg[1]_0 ),
        .I2(\green[6]_i_4_n_0 ),
        .I3(\blue_reg[7]_0 [9]),
        .I4(\blue_reg[7]_0 [8]),
        .I5(\green[1]_i_2_n_0 ),
        .O(\green[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A0A0A0C00)) 
    \green[1]_i_2 
       (.I0(\red_reg[1]_1 ),
        .I1(\green[7]_i_5_n_0 ),
        .I2(stabled_out),
        .I3(\blue_reg[7]_0 [15]),
        .I4(\blue_reg[7]_0 [9]),
        .I5(\blue_reg[7]_0 [8]),
        .O(\green[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2200F02222000)) 
    \green[2]_i_2 
       (.I0(\red_reg[1]_1 ),
        .I1(stabled_out),
        .I2(\blue_reg[7]_0 [8]),
        .I3(\blue_reg[7]_0 [9]),
        .I4(\blue_reg[7]_0 [10]),
        .I5(\green[6]_i_4_n_0 ),
        .O(\stabled_out_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFE80032AAA8000)) 
    \green[3]_i_2 
       (.I0(\red_reg[5]_0 ),
        .I1(\blue_reg[7]_0 [8]),
        .I2(\blue_reg[7]_0 [9]),
        .I3(\blue_reg[7]_0 [10]),
        .I4(\blue_reg[7]_0 [11]),
        .I5(\green[6]_i_4_n_0 ),
        .O(\green_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFF4888F44448888)) 
    \green[4]_i_3 
       (.I0(\green[6]_i_6_n_0 ),
        .I1(\red_reg[5]_0 ),
        .I2(\blue_reg[7]_0 [8]),
        .I3(\green[4]_i_5_n_0 ),
        .I4(\blue_reg[7]_0 [12]),
        .I5(\green[6]_i_4_n_0 ),
        .O(\green_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \green[4]_i_5 
       (.I0(\blue_reg[7]_0 [10]),
        .I1(\blue_reg[7]_0 [9]),
        .I2(\blue_reg[7]_0 [11]),
        .O(\green[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \green[5]_i_1 
       (.I0(\green_reg[1]_0 ),
        .I1(green_value[2]),
        .I2(green11_in),
        .I3(\red_reg[5]_0 ),
        .I4(\green[5]_i_3_n_0 ),
        .I5(\green_reg[7]_0 ),
        .O(\green[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \green[5]_i_2 
       (.I0(\blue_reg[7]_0 [12]),
        .I1(\blue_reg[7]_0 [11]),
        .I2(\blue_reg[7]_0 [10]),
        .I3(\blue_reg[7]_0 [9]),
        .I4(\blue_reg[7]_0 [8]),
        .I5(\blue_reg[7]_0 [13]),
        .O(green11_in));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \green[5]_i_3 
       (.I0(\green[6]_i_4_n_0 ),
        .I1(\blue_reg[7]_0 [13]),
        .I2(\blue_reg[7]_0 [12]),
        .I3(\green[6]_i_7_n_0 ),
        .I4(\blue_reg[7]_0 [11]),
        .I5(\blue_reg[7]_0 [8]),
        .O(\green[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F8)) 
    \green[6]_i_1 
       (.I0(\green_reg[1]_0 ),
        .I1(green_value[3]),
        .I2(\green[6]_i_2_n_0 ),
        .I3(\green[6]_i_3_n_0 ),
        .I4(\green[6]_i_4_n_0 ),
        .I5(\green_reg[7]_0 ),
        .O(\green[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \green[6]_i_2 
       (.I0(stabled_out),
        .I1(\red_reg[1]_1 ),
        .I2(\blue_reg[7]_0 [14]),
        .I3(\blue_reg[7]_0 [13]),
        .I4(\blue_reg[7]_0 [12]),
        .I5(\green[6]_i_6_n_0 ),
        .O(\green[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \green[6]_i_3 
       (.I0(\blue_reg[7]_0 [8]),
        .I1(\blue_reg[7]_0 [12]),
        .I2(\green[6]_i_7_n_0 ),
        .I3(\blue_reg[7]_0 [11]),
        .I4(\blue_reg[7]_0 [13]),
        .I5(\blue_reg[7]_0 [14]),
        .O(\green[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \green[6]_i_4 
       (.I0(\blue_reg[7]_0 [8]),
        .I1(\green[7]_i_6_n_0 ),
        .I2(\blue_reg[7]_0 [15]),
        .I3(\red_reg[1]_1 ),
        .I4(stabled_out),
        .O(\green[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \green[6]_i_5 
       (.I0(\blue_reg[7]_0 [15]),
        .I1(\red_reg[5]_0 ),
        .I2(\green[6]_i_6_n_0 ),
        .I3(\blue_reg[7]_0 [13]),
        .I4(\blue_reg[7]_0 [12]),
        .I5(\blue_reg[7]_0 [14]),
        .O(\green_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \green[6]_i_6 
       (.I0(\blue_reg[7]_0 [11]),
        .I1(\blue_reg[7]_0 [10]),
        .I2(\blue_reg[7]_0 [9]),
        .I3(\blue_reg[7]_0 [8]),
        .O(\green[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \green[6]_i_7 
       (.I0(\blue_reg[7]_0 [9]),
        .I1(\blue_reg[7]_0 [10]),
        .O(\green[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8200008)) 
    \green[7]_i_1 
       (.I0(\red_reg[0]_3 ),
        .I1(pst[1]),
        .I2(\led_sel_reg[7]_1 ),
        .I3(\led_sel_reg[7]_2 ),
        .I4(pst[0]),
        .I5(stabled_out),
        .O(\green[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F8FFF8F8F8)) 
    \green[7]_i_2 
       (.I0(\green_reg[1]_0 ),
        .I1(green_value[4]),
        .I2(\green[7]_i_4_n_0 ),
        .I3(\green[7]_i_5_n_0 ),
        .I4(\red_reg[5]_0 ),
        .I5(\blue_reg[7]_0 [15]),
        .O(\green[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h10101000)) 
    \green[7]_i_4 
       (.I0(stabled_out),
        .I1(\red_reg[1]_1 ),
        .I2(\blue_reg[7]_0 [15]),
        .I3(\green[7]_i_6_n_0 ),
        .I4(\blue_reg[7]_0 [8]),
        .O(\green[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \green[7]_i_5 
       (.I0(\blue_reg[7]_0 [14]),
        .I1(\blue_reg[7]_0 [12]),
        .I2(\blue_reg[7]_0 [13]),
        .I3(\blue_reg[7]_0 [8]),
        .I4(\blue_reg[7]_0 [9]),
        .I5(\green[7]_i_7_n_0 ),
        .O(\green[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \green[7]_i_6 
       (.I0(\blue_reg[7]_0 [13]),
        .I1(\blue_reg[7]_0 [11]),
        .I2(\blue_reg[7]_0 [9]),
        .I3(\blue_reg[7]_0 [10]),
        .I4(\blue_reg[7]_0 [12]),
        .I5(\blue_reg[7]_0 [14]),
        .O(\green[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \green[7]_i_7 
       (.I0(\blue_reg[7]_0 [10]),
        .I1(\blue_reg[7]_0 [11]),
        .O(\green[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green[0]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green[1]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green_reg[4]_0 [0]),
        .Q(\blue_reg[7]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green_reg[4]_0 [1]),
        .Q(\blue_reg[7]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green_reg[4]_0 [2]),
        .Q(\blue_reg[7]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green[5]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green[6]_i_1_n_0 ),
        .Q(\blue_reg[7]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \green_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\green[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(\green[7]_i_2_n_0 ),
        .Q(\blue_reg[7]_0 [15]));
  LUT4 #(
    .INIT(16'h2E00)) 
    \led_sel[1]_i_1 
       (.I0(\led_sel_reg[7]_1 ),
        .I1(pst[0]),
        .I2(\led_sel_reg[7]_2 ),
        .I3(pst[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE402)) 
    \led_sel[3]_i_1 
       (.I0(pst[1]),
        .I1(\led_sel_reg[7]_1 ),
        .I2(\led_sel_reg[7]_2 ),
        .I3(pst[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0518)) 
    \led_sel[5]_i_1 
       (.I0(pst[1]),
        .I1(\led_sel_reg[7]_2 ),
        .I2(pst[0]),
        .I3(\led_sel_reg[7]_1 ),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h0301)) 
    \led_sel[7]_i_1 
       (.I0(pst[0]),
        .I1(pst[1]),
        .I2(\led_sel_reg[7]_1 ),
        .I3(\led_sel_reg[7]_2 ),
        .O(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \led_sel_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\green_reg[0]_3 ),
        .D(p_0_in[1]),
        .Q(\led_sel_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_sel_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\green_reg[0]_3 ),
        .D(p_0_in[3]),
        .Q(\led_sel_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_sel_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\green_reg[0]_3 ),
        .D(p_0_in[5]),
        .Q(\led_sel_reg[7]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \led_sel_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .PRE(\green_reg[0]_3 ),
        .Q(\led_sel_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'h0F008F08)) 
    pwm_out0_carry__0_i_1
       (.I0(pwm_out_reg),
        .I1(\blue_reg[7]_0 [7]),
        .I2(Q[1]),
        .I3(pwm_out_reg_0),
        .I4(Q[0]),
        .O(DI));
  LUT5 #(
    .INIT(32'h0F008F08)) 
    pwm_out0_carry__0_i_1__0
       (.I0(pwm_out_reg_1),
        .I1(\blue_reg[7]_0 [15]),
        .I2(pwm_out_reg_3[1]),
        .I3(pwm_out_reg_2),
        .I4(pwm_out_reg_3[0]),
        .O(\green_reg[7]_2 ));
  LUT5 #(
    .INIT(32'h0F008F08)) 
    pwm_out0_carry__0_i_1__1
       (.I0(pwm_out_reg_4),
        .I1(\blue_reg[7]_0 [23]),
        .I2(pwm_out_reg_6[1]),
        .I3(pwm_out_reg_5),
        .I4(pwm_out_reg_6[0]),
        .O(\blue_reg[7]_3 ));
  LUT5 #(
    .INIT(32'h80087007)) 
    pwm_out0_carry__0_i_2
       (.I0(pwm_out_reg),
        .I1(\blue_reg[7]_0 [7]),
        .I2(pwm_out_reg_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(S));
  LUT5 #(
    .INIT(32'h80087007)) 
    pwm_out0_carry__0_i_2__0
       (.I0(pwm_out_reg_1),
        .I1(\blue_reg[7]_0 [15]),
        .I2(pwm_out_reg_2),
        .I3(pwm_out_reg_3[1]),
        .I4(pwm_out_reg_3[0]),
        .O(\green_reg[7]_1 ));
  LUT5 #(
    .INIT(32'h80087007)) 
    pwm_out0_carry__0_i_2__1
       (.I0(pwm_out_reg_4),
        .I1(\blue_reg[7]_0 [23]),
        .I2(pwm_out_reg_5),
        .I3(pwm_out_reg_6[1]),
        .I4(pwm_out_reg_6[0]),
        .O(\blue_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    pwm_out0_carry__0_i_5
       (.I0(\blue_reg[7]_0 [18]),
        .I1(\blue_reg[7]_0 [17]),
        .I2(\blue_reg[7]_0 [16]),
        .O(\blue_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    pwm_out0_carry__0_i_5__0
       (.I0(\blue_reg[7]_0 [10]),
        .I1(\blue_reg[7]_0 [9]),
        .I2(\blue_reg[7]_0 [8]),
        .O(\green_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    pwm_out0_carry__0_i_5__1
       (.I0(\blue_reg[7]_0 [2]),
        .I1(\blue_reg[7]_0 [1]),
        .I2(\blue_reg[7]_0 [0]),
        .O(\red_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAAAAAFFAA)) 
    \red[0]_i_1 
       (.I0(\red[0]_i_2_n_0 ),
        .I1(\red_reg[0]_2 ),
        .I2(red_value[0]),
        .I3(\red[0]_i_3_n_0 ),
        .I4(\blue_reg[7]_0 [0]),
        .I5(stabled_out),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hC444444444444444)) 
    \red[0]_i_2 
       (.I0(\blue_reg[7]_0 [0]),
        .I1(\red_reg[5]_0 ),
        .I2(\blue_reg[7]_0 [7]),
        .I3(\blue_reg[7]_0 [1]),
        .I4(\red[7]_i_9_n_0 ),
        .I5(\red[0]_i_4_n_0 ),
        .O(\red[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red[0]_i_3 
       (.I0(\blue_reg[7]_0 [6]),
        .I1(\blue_reg[7]_0 [4]),
        .I2(\red[6]_i_7_n_0 ),
        .I3(\blue_reg[7]_0 [3]),
        .I4(\blue_reg[7]_0 [5]),
        .I5(\blue_reg[7]_0 [7]),
        .O(\red[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \red[0]_i_4 
       (.I0(\blue_reg[7]_0 [5]),
        .I1(\blue_reg[7]_0 [4]),
        .I2(\blue_reg[7]_0 [6]),
        .O(\red[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF88888F8)) 
    \red[1]_i_1 
       (.I0(red_value[1]),
        .I1(\red_reg[1]_0 ),
        .I2(\red[6]_i_4_n_0 ),
        .I3(\blue_reg[7]_0 [1]),
        .I4(\blue_reg[7]_0 [0]),
        .I5(\red[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0C000A0A0A0A0C00)) 
    \red[1]_i_2 
       (.I0(\red_reg[1]_1 ),
        .I1(\red[7]_i_6_n_0 ),
        .I2(stabled_out),
        .I3(\blue_reg[7]_0 [7]),
        .I4(\blue_reg[7]_0 [1]),
        .I5(\blue_reg[7]_0 [0]),
        .O(\red[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2200F02222000)) 
    \red[2]_i_2 
       (.I0(\red_reg[1]_1 ),
        .I1(stabled_out),
        .I2(\blue_reg[7]_0 [0]),
        .I3(\blue_reg[7]_0 [1]),
        .I4(\blue_reg[7]_0 [2]),
        .I5(\red[6]_i_4_n_0 ),
        .O(\stabled_out_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFE80032AAA8000)) 
    \red[3]_i_2 
       (.I0(\red_reg[5]_0 ),
        .I1(\blue_reg[7]_0 [0]),
        .I2(\blue_reg[7]_0 [1]),
        .I3(\blue_reg[7]_0 [2]),
        .I4(\blue_reg[7]_0 [3]),
        .I5(\red[6]_i_4_n_0 ),
        .O(\red_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFF4888F44448888)) 
    \red[4]_i_3 
       (.I0(\red[6]_i_6_n_0 ),
        .I1(\red_reg[5]_0 ),
        .I2(\blue_reg[7]_0 [0]),
        .I3(\red[4]_i_5_n_0 ),
        .I4(\blue_reg[7]_0 [4]),
        .I5(\red[6]_i_4_n_0 ),
        .O(\red_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \red[4]_i_5 
       (.I0(\blue_reg[7]_0 [2]),
        .I1(\blue_reg[7]_0 [1]),
        .I2(\blue_reg[7]_0 [3]),
        .O(\red[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \red[5]_i_1 
       (.I0(\red_reg[1]_0 ),
        .I1(red_value[2]),
        .I2(red11_in),
        .I3(\red_reg[5]_0 ),
        .I4(\red[5]_i_3_n_0 ),
        .I5(\red_reg[7]_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \red[5]_i_2 
       (.I0(\blue_reg[7]_0 [4]),
        .I1(\blue_reg[7]_0 [3]),
        .I2(\blue_reg[7]_0 [2]),
        .I3(\blue_reg[7]_0 [1]),
        .I4(\blue_reg[7]_0 [0]),
        .I5(\blue_reg[7]_0 [5]),
        .O(red11_in));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \red[5]_i_3 
       (.I0(\red[6]_i_4_n_0 ),
        .I1(\blue_reg[7]_0 [5]),
        .I2(\blue_reg[7]_0 [4]),
        .I3(\red[6]_i_7_n_0 ),
        .I4(\blue_reg[7]_0 [3]),
        .I5(\blue_reg[7]_0 [0]),
        .O(\red[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF8F8)) 
    \red[6]_i_1 
       (.I0(\red_reg[1]_0 ),
        .I1(red_value[3]),
        .I2(\red[6]_i_2_n_0 ),
        .I3(\red[6]_i_3_n_0 ),
        .I4(\red[6]_i_4_n_0 ),
        .I5(\red_reg[7]_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \red[6]_i_2 
       (.I0(stabled_out),
        .I1(\red_reg[1]_1 ),
        .I2(\blue_reg[7]_0 [6]),
        .I3(\blue_reg[7]_0 [5]),
        .I4(\blue_reg[7]_0 [4]),
        .I5(\red[6]_i_6_n_0 ),
        .O(\red[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \red[6]_i_3 
       (.I0(\blue_reg[7]_0 [0]),
        .I1(\blue_reg[7]_0 [4]),
        .I2(\red[6]_i_7_n_0 ),
        .I3(\blue_reg[7]_0 [3]),
        .I4(\blue_reg[7]_0 [5]),
        .I5(\blue_reg[7]_0 [6]),
        .O(\red[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \red[6]_i_4 
       (.I0(\blue_reg[7]_0 [0]),
        .I1(\red[7]_i_8_n_0 ),
        .I2(\blue_reg[7]_0 [7]),
        .I3(\red_reg[1]_1 ),
        .I4(stabled_out),
        .O(\red[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \red[6]_i_5 
       (.I0(\blue_reg[7]_0 [7]),
        .I1(\red_reg[5]_0 ),
        .I2(\red[6]_i_6_n_0 ),
        .I3(\blue_reg[7]_0 [5]),
        .I4(\blue_reg[7]_0 [4]),
        .I5(\blue_reg[7]_0 [6]),
        .O(\red_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \red[6]_i_6 
       (.I0(\blue_reg[7]_0 [3]),
        .I1(\blue_reg[7]_0 [2]),
        .I2(\blue_reg[7]_0 [1]),
        .I3(\blue_reg[7]_0 [0]),
        .O(\red[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \red[6]_i_7 
       (.I0(\blue_reg[7]_0 [1]),
        .I1(\blue_reg[7]_0 [2]),
        .O(\red[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00220280)) 
    \red[7]_i_1 
       (.I0(\red_reg[0]_3 ),
        .I1(pst[1]),
        .I2(\led_sel_reg[7]_2 ),
        .I3(pst[0]),
        .I4(\led_sel_reg[7]_1 ),
        .I5(stabled_out),
        .O(\red[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8F8FFF8F8F8)) 
    \red[7]_i_2 
       (.I0(\red_reg[1]_0 ),
        .I1(red_value[4]),
        .I2(\red[7]_i_5_n_0 ),
        .I3(\red[7]_i_6_n_0 ),
        .I4(\red_reg[5]_0 ),
        .I5(\blue_reg[7]_0 [7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h10101000)) 
    \red[7]_i_5 
       (.I0(stabled_out),
        .I1(\red_reg[1]_1 ),
        .I2(\blue_reg[7]_0 [7]),
        .I3(\red[7]_i_8_n_0 ),
        .I4(\blue_reg[7]_0 [0]),
        .O(\red[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \red[7]_i_6 
       (.I0(\blue_reg[7]_0 [6]),
        .I1(\blue_reg[7]_0 [4]),
        .I2(\blue_reg[7]_0 [5]),
        .I3(\blue_reg[7]_0 [0]),
        .I4(\blue_reg[7]_0 [1]),
        .I5(\red[7]_i_9_n_0 ),
        .O(\red[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \red[7]_i_8 
       (.I0(\blue_reg[7]_0 [5]),
        .I1(\blue_reg[7]_0 [3]),
        .I2(\blue_reg[7]_0 [1]),
        .I3(\blue_reg[7]_0 [2]),
        .I4(\blue_reg[7]_0 [4]),
        .I5(\blue_reg[7]_0 [6]),
        .O(\red[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \red[7]_i_9 
       (.I0(\blue_reg[7]_0 [2]),
        .I1(\blue_reg[7]_0 [3]),
        .O(\red[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(p_1_in[0]),
        .Q(\blue_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(p_1_in[1]),
        .Q(\blue_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(D[0]),
        .Q(\blue_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(D[1]),
        .Q(\blue_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(D[2]),
        .Q(\blue_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(p_1_in[5]),
        .Q(\blue_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(p_1_in[6]),
        .Q(\blue_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \red_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\red[7]_i_1_n_0 ),
        .CLR(\green_reg[0]_3 ),
        .D(p_1_in[7]),
        .Q(\blue_reg[7]_0 [7]));
endmodule

module frame_parser
   (O,
    \frame_data_reg[105] ,
    \frame_data_reg[97] ,
    \frame_data_reg[104] ,
    \frame_data_reg[58] ,
    \frame_data_reg[65] ,
    \frame_data_reg[57] ,
    \frame_data_reg[64] ,
    \frame_data_reg[18] ,
    \frame_data_reg[25] ,
    \frame_data_reg[17] ,
    \frame_data_reg[24] ,
    DI,
    S,
    red_value__25_carry__0_i_2,
    red_value__25_carry__0_i_2_0,
    \red_reg[4] ,
    \red_reg[4]_0 ,
    \red_reg[7] ,
    \red_reg[7]_0 ,
    \green_reg[0] ,
    \green_reg[0]_0 ,
    green_value__25_carry__0_i_2,
    green_value__25_carry__0_i_2_0,
    \green_reg[4] ,
    \green_reg[4]_0 ,
    \green_reg[7] ,
    \green_reg[7]_0 ,
    \blue_reg[0] ,
    \blue_reg[0]_0 ,
    blue_value__25_carry__0_i_2,
    blue_value__25_carry__0_i_2_0,
    \blue_reg[4] ,
    \blue_reg[4]_0 ,
    \blue_reg[7] ,
    \blue_reg[7]_0 );
  output [2:0]O;
  output [3:0]\frame_data_reg[105] ;
  output [3:0]\frame_data_reg[97] ;
  output [2:0]\frame_data_reg[104] ;
  output [2:0]\frame_data_reg[58] ;
  output [3:0]\frame_data_reg[65] ;
  output [3:0]\frame_data_reg[57] ;
  output [2:0]\frame_data_reg[64] ;
  output [2:0]\frame_data_reg[18] ;
  output [3:0]\frame_data_reg[25] ;
  output [3:0]\frame_data_reg[17] ;
  output [2:0]\frame_data_reg[24] ;
  input [2:0]DI;
  input [3:0]S;
  input [2:0]red_value__25_carry__0_i_2;
  input [3:0]red_value__25_carry__0_i_2_0;
  input [2:0]\red_reg[4] ;
  input [2:0]\red_reg[4]_0 ;
  input [1:0]\red_reg[7] ;
  input [2:0]\red_reg[7]_0 ;
  input [2:0]\green_reg[0] ;
  input [3:0]\green_reg[0]_0 ;
  input [2:0]green_value__25_carry__0_i_2;
  input [3:0]green_value__25_carry__0_i_2_0;
  input [2:0]\green_reg[4] ;
  input [2:0]\green_reg[4]_0 ;
  input [1:0]\green_reg[7] ;
  input [2:0]\green_reg[7]_0 ;
  input [2:0]\blue_reg[0] ;
  input [3:0]\blue_reg[0]_0 ;
  input [2:0]blue_value__25_carry__0_i_2;
  input [3:0]blue_value__25_carry__0_i_2_0;
  input [2:0]\blue_reg[4] ;
  input [2:0]\blue_reg[4]_0 ;
  input [1:0]\blue_reg[7] ;
  input [2:0]\blue_reg[7]_0 ;

  wire [2:0]DI;
  wire [2:0]O;
  wire [3:0]S;
  wire [2:0]\blue_reg[0] ;
  wire [3:0]\blue_reg[0]_0 ;
  wire [2:0]\blue_reg[4] ;
  wire [2:0]\blue_reg[4]_0 ;
  wire [1:0]\blue_reg[7] ;
  wire [2:0]\blue_reg[7]_0 ;
  wire blue_value__1_carry__0_n_1;
  wire blue_value__1_carry__0_n_2;
  wire blue_value__1_carry__0_n_3;
  wire blue_value__1_carry_n_0;
  wire blue_value__1_carry_n_1;
  wire blue_value__1_carry_n_2;
  wire blue_value__1_carry_n_3;
  wire blue_value__1_carry_n_6;
  wire [2:0]blue_value__25_carry__0_i_2;
  wire [3:0]blue_value__25_carry__0_i_2_0;
  wire blue_value__25_carry__0_n_2;
  wire blue_value__25_carry__0_n_3;
  wire blue_value__25_carry_n_0;
  wire blue_value__25_carry_n_1;
  wire blue_value__25_carry_n_2;
  wire blue_value__25_carry_n_3;
  wire [2:0]\frame_data_reg[104] ;
  wire [3:0]\frame_data_reg[105] ;
  wire [3:0]\frame_data_reg[17] ;
  wire [2:0]\frame_data_reg[18] ;
  wire [2:0]\frame_data_reg[24] ;
  wire [3:0]\frame_data_reg[25] ;
  wire [3:0]\frame_data_reg[57] ;
  wire [2:0]\frame_data_reg[58] ;
  wire [2:0]\frame_data_reg[64] ;
  wire [3:0]\frame_data_reg[65] ;
  wire [3:0]\frame_data_reg[97] ;
  wire [2:0]\green_reg[0] ;
  wire [3:0]\green_reg[0]_0 ;
  wire [2:0]\green_reg[4] ;
  wire [2:0]\green_reg[4]_0 ;
  wire [1:0]\green_reg[7] ;
  wire [2:0]\green_reg[7]_0 ;
  wire green_value__1_carry__0_n_1;
  wire green_value__1_carry__0_n_2;
  wire green_value__1_carry__0_n_3;
  wire green_value__1_carry_n_0;
  wire green_value__1_carry_n_1;
  wire green_value__1_carry_n_2;
  wire green_value__1_carry_n_3;
  wire green_value__1_carry_n_6;
  wire [2:0]green_value__25_carry__0_i_2;
  wire [3:0]green_value__25_carry__0_i_2_0;
  wire green_value__25_carry__0_n_2;
  wire green_value__25_carry__0_n_3;
  wire green_value__25_carry_n_0;
  wire green_value__25_carry_n_1;
  wire green_value__25_carry_n_2;
  wire green_value__25_carry_n_3;
  wire [2:0]\red_reg[4] ;
  wire [2:0]\red_reg[4]_0 ;
  wire [1:0]\red_reg[7] ;
  wire [2:0]\red_reg[7]_0 ;
  wire red_value__1_carry__0_n_1;
  wire red_value__1_carry__0_n_2;
  wire red_value__1_carry__0_n_3;
  wire red_value__1_carry_n_0;
  wire red_value__1_carry_n_1;
  wire red_value__1_carry_n_2;
  wire red_value__1_carry_n_3;
  wire red_value__1_carry_n_6;
  wire [2:0]red_value__25_carry__0_i_2;
  wire [3:0]red_value__25_carry__0_i_2_0;
  wire red_value__25_carry__0_n_2;
  wire red_value__25_carry__0_n_3;
  wire red_value__25_carry_n_0;
  wire red_value__25_carry_n_1;
  wire red_value__25_carry_n_2;
  wire red_value__25_carry_n_3;
  wire [3:3]NLW_blue_value__1_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_blue_value__25_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_blue_value__25_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_green_value__1_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_green_value__25_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_green_value__25_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_red_value__1_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_red_value__25_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_red_value__25_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_value__1_carry
       (.CI(1'b0),
        .CO({blue_value__1_carry_n_0,blue_value__1_carry_n_1,blue_value__1_carry_n_2,blue_value__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\blue_reg[0] ,1'b0}),
        .O({\frame_data_reg[18] [2:1],blue_value__1_carry_n_6,\frame_data_reg[18] [0]}),
        .S(\blue_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_value__1_carry__0
       (.CI(blue_value__1_carry_n_0),
        .CO({NLW_blue_value__1_carry__0_CO_UNCONNECTED[3],blue_value__1_carry__0_n_1,blue_value__1_carry__0_n_2,blue_value__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,blue_value__25_carry__0_i_2}),
        .O(\frame_data_reg[25] ),
        .S(blue_value__25_carry__0_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_value__25_carry
       (.CI(1'b0),
        .CO({blue_value__25_carry_n_0,blue_value__25_carry_n_1,blue_value__25_carry_n_2,blue_value__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\blue_reg[4] ,1'b0}),
        .O(\frame_data_reg[17] ),
        .S({\blue_reg[4]_0 ,blue_value__1_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_value__25_carry__0
       (.CI(blue_value__25_carry_n_0),
        .CO({NLW_blue_value__25_carry__0_CO_UNCONNECTED[3:2],blue_value__25_carry__0_n_2,blue_value__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\blue_reg[7] }),
        .O({NLW_blue_value__25_carry__0_O_UNCONNECTED[3],\frame_data_reg[24] }),
        .S({1'b0,\blue_reg[7]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_value__1_carry
       (.CI(1'b0),
        .CO({green_value__1_carry_n_0,green_value__1_carry_n_1,green_value__1_carry_n_2,green_value__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\green_reg[0] ,1'b0}),
        .O({\frame_data_reg[58] [2:1],green_value__1_carry_n_6,\frame_data_reg[58] [0]}),
        .S(\green_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_value__1_carry__0
       (.CI(green_value__1_carry_n_0),
        .CO({NLW_green_value__1_carry__0_CO_UNCONNECTED[3],green_value__1_carry__0_n_1,green_value__1_carry__0_n_2,green_value__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,green_value__25_carry__0_i_2}),
        .O(\frame_data_reg[65] ),
        .S(green_value__25_carry__0_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_value__25_carry
       (.CI(1'b0),
        .CO({green_value__25_carry_n_0,green_value__25_carry_n_1,green_value__25_carry_n_2,green_value__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\green_reg[4] ,1'b0}),
        .O(\frame_data_reg[57] ),
        .S({\green_reg[4]_0 ,green_value__1_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_value__25_carry__0
       (.CI(green_value__25_carry_n_0),
        .CO({NLW_green_value__25_carry__0_CO_UNCONNECTED[3:2],green_value__25_carry__0_n_2,green_value__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\green_reg[7] }),
        .O({NLW_green_value__25_carry__0_O_UNCONNECTED[3],\frame_data_reg[64] }),
        .S({1'b0,\green_reg[7]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 red_value__1_carry
       (.CI(1'b0),
        .CO({red_value__1_carry_n_0,red_value__1_carry_n_1,red_value__1_carry_n_2,red_value__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({O[2:1],red_value__1_carry_n_6,O[0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 red_value__1_carry__0
       (.CI(red_value__1_carry_n_0),
        .CO({NLW_red_value__1_carry__0_CO_UNCONNECTED[3],red_value__1_carry__0_n_1,red_value__1_carry__0_n_2,red_value__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,red_value__25_carry__0_i_2}),
        .O(\frame_data_reg[105] ),
        .S(red_value__25_carry__0_i_2_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 red_value__25_carry
       (.CI(1'b0),
        .CO({red_value__25_carry_n_0,red_value__25_carry_n_1,red_value__25_carry_n_2,red_value__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\red_reg[4] ,1'b0}),
        .O(\frame_data_reg[97] ),
        .S({\red_reg[4]_0 ,red_value__1_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 red_value__25_carry__0
       (.CI(red_value__25_carry_n_0),
        .CO({NLW_red_value__25_carry__0_CO_UNCONNECTED[3:2],red_value__25_carry__0_n_2,red_value__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\red_reg[7] }),
        .O({NLW_red_value__25_carry__0_O_UNCONNECTED[3],\frame_data_reg[104] }),
        .S({1'b0,\red_reg[7]_0 }));
endmodule

module load_reg
   (stabled_out,
    BTNC_IBUF,
    clk_IBUF_BUFG,
    \stabled_out_reg[0]_0 );
  output [0:0]stabled_out;
  input BTNC_IBUF;
  input clk_IBUF_BUFG;
  input \stabled_out_reg[0]_0 ;

  wire BTNC_IBUF;
  wire clk_IBUF_BUFG;
  wire \debounce_counter[0]_i_1_n_0 ;
  wire \debounce_counter[1]_i_1_n_0 ;
  wire \debounce_counter[2]_i_1_n_0 ;
  wire \debounce_counter[2]_i_2_n_0 ;
  wire \debounce_counter[3]_i_1_n_0 ;
  wire \debounce_counter[4]_i_1_n_0 ;
  wire \debounce_counter[5]_i_1_n_0 ;
  wire \debounce_counter[6]_i_1_n_0 ;
  wire \debounce_counter[6]_i_2_n_0 ;
  wire \debounce_counter[6]_i_3_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire \debounce_counter_reg_n_0_[4] ;
  wire \debounce_counter_reg_n_0_[5] ;
  wire \debounce_counter_reg_n_0_[6] ;
  wire pulse_en_i_1_n_0;
  wire pulse_en_reg_n_0;
  wire [0:0]stabled_out;
  wire \stabled_out[0]_i_1_n_0 ;
  wire \stabled_out_reg[0]_0 ;
  wire temp;

  LUT6 #(
    .INIT(64'h66FF66FF66FF66F6)) 
    \debounce_counter[0]_i_1 
       (.I0(temp),
        .I1(BTNC_IBUF),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(\debounce_counter_reg_n_0_[0] ),
        .I4(\debounce_counter[2]_i_2_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF66FF66FF66FF666)) 
    \debounce_counter[1]_i_1 
       (.I0(temp),
        .I1(BTNC_IBUF),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(\debounce_counter[2]_i_2_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC200000000CCC2)) 
    \debounce_counter[2]_i_1 
       (.I0(\debounce_counter[2]_i_2_n_0 ),
        .I1(\debounce_counter_reg_n_0_[2] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(BTNC_IBUF),
        .I5(temp),
        .O(\debounce_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debounce_counter[2]_i_2 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[6] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .O(\debounce_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999998)) 
    \debounce_counter[3]_i_1 
       (.I0(\debounce_counter[6]_i_2_n_0 ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[4] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .I4(\debounce_counter_reg_n_0_[6] ),
        .I5(\debounce_counter[6]_i_3_n_0 ),
        .O(\debounce_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9A9A9A8)) 
    \debounce_counter[4]_i_1 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter[6]_i_2_n_0 ),
        .I3(\debounce_counter_reg_n_0_[6] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3_n_0 ),
        .O(\debounce_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABFFFEAAAA)) 
    \debounce_counter[5]_i_1 
       (.I0(\debounce_counter[6]_i_3_n_0 ),
        .I1(\debounce_counter[6]_i_2_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter_reg_n_0_[6] ),
        .O(\debounce_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \debounce_counter[6]_i_1 
       (.I0(\debounce_counter_reg_n_0_[6] ),
        .I1(\debounce_counter[6]_i_2_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3_n_0 ),
        .O(\debounce_counter[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_counter[6]_i_2 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_counter[6]_i_3 
       (.I0(temp),
        .I1(BTNC_IBUF),
        .O(\debounce_counter[6]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[0]_i_1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[1]_i_1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[2]_i_1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[3]_i_1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[4]_i_1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[5]_i_1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[6]_i_1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    pulse_en_i_1
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter[2]_i_2_n_0 ),
        .I4(\debounce_counter[6]_i_3_n_0 ),
        .I5(pulse_en_reg_n_0),
        .O(pulse_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(pulse_en_i_1_n_0),
        .Q(pulse_en_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \stabled_out[0]_i_1 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(pulse_en_reg_n_0),
        .I4(BTNC_IBUF),
        .I5(\debounce_counter[2]_i_2_n_0 ),
        .O(\stabled_out[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stabled_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\stabled_out[0]_i_1_n_0 ),
        .Q(stabled_out));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(BTNC_IBUF),
        .Q(temp));
endmodule

(* ORIG_REF_NAME = "load_reg" *) 
module load_reg_0
   (stabled_out,
    BTNL_IBUF,
    clk_IBUF_BUFG,
    \stabled_out_reg[0]_0 );
  output [0:0]stabled_out;
  input BTNL_IBUF;
  input clk_IBUF_BUFG;
  input \stabled_out_reg[0]_0 ;

  wire BTNL_IBUF;
  wire clk_IBUF_BUFG;
  wire \debounce_counter[0]_i_1__0_n_0 ;
  wire \debounce_counter[1]_i_1__0_n_0 ;
  wire \debounce_counter[2]_i_1__0_n_0 ;
  wire \debounce_counter[2]_i_2__0_n_0 ;
  wire \debounce_counter[3]_i_1__0_n_0 ;
  wire \debounce_counter[4]_i_1__0_n_0 ;
  wire \debounce_counter[5]_i_1__0_n_0 ;
  wire \debounce_counter[6]_i_1__0_n_0 ;
  wire \debounce_counter[6]_i_2__0_n_0 ;
  wire \debounce_counter[6]_i_3__0_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire \debounce_counter_reg_n_0_[4] ;
  wire \debounce_counter_reg_n_0_[5] ;
  wire \debounce_counter_reg_n_0_[6] ;
  wire pulse_en_i_1__0_n_0;
  wire pulse_en_reg_n_0;
  wire [0:0]stabled_out;
  wire \stabled_out[0]_i_1__0_n_0 ;
  wire \stabled_out_reg[0]_0 ;
  wire temp;

  LUT6 #(
    .INIT(64'h66FF66FF66FF66F6)) 
    \debounce_counter[0]_i_1__0 
       (.I0(temp),
        .I1(BTNL_IBUF),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(\debounce_counter_reg_n_0_[0] ),
        .I4(\debounce_counter[2]_i_2__0_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF66FF66FF66FF666)) 
    \debounce_counter[1]_i_1__0 
       (.I0(temp),
        .I1(BTNL_IBUF),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(\debounce_counter[2]_i_2__0_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCC200000000CCC2)) 
    \debounce_counter[2]_i_1__0 
       (.I0(\debounce_counter[2]_i_2__0_n_0 ),
        .I1(\debounce_counter_reg_n_0_[2] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(BTNL_IBUF),
        .I5(temp),
        .O(\debounce_counter[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debounce_counter[2]_i_2__0 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[6] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .O(\debounce_counter[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999998)) 
    \debounce_counter[3]_i_1__0 
       (.I0(\debounce_counter[6]_i_2__0_n_0 ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[4] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .I4(\debounce_counter_reg_n_0_[6] ),
        .I5(\debounce_counter[6]_i_3__0_n_0 ),
        .O(\debounce_counter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9A9A9A8)) 
    \debounce_counter[4]_i_1__0 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter[6]_i_2__0_n_0 ),
        .I3(\debounce_counter_reg_n_0_[6] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__0_n_0 ),
        .O(\debounce_counter[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABFFFEAAAA)) 
    \debounce_counter[5]_i_1__0 
       (.I0(\debounce_counter[6]_i_3__0_n_0 ),
        .I1(\debounce_counter[6]_i_2__0_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter_reg_n_0_[6] ),
        .O(\debounce_counter[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \debounce_counter[6]_i_1__0 
       (.I0(\debounce_counter_reg_n_0_[6] ),
        .I1(\debounce_counter[6]_i_2__0_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__0_n_0 ),
        .O(\debounce_counter[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_counter[6]_i_2__0 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[6]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_counter[6]_i_3__0 
       (.I0(temp),
        .I1(BTNL_IBUF),
        .O(\debounce_counter[6]_i_3__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[0]_i_1__0_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[1]_i_1__0_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[2]_i_1__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[3]_i_1__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[4]_i_1__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[5]_i_1__0_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[6]_i_1__0_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    pulse_en_i_1__0
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter[2]_i_2__0_n_0 ),
        .I4(\debounce_counter[6]_i_3__0_n_0 ),
        .I5(pulse_en_reg_n_0),
        .O(pulse_en_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(pulse_en_i_1__0_n_0),
        .Q(pulse_en_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \stabled_out[0]_i_1__0 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(pulse_en_reg_n_0),
        .I4(BTNL_IBUF),
        .I5(\debounce_counter[2]_i_2__0_n_0 ),
        .O(\stabled_out[0]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stabled_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\stabled_out[0]_i_1__0_n_0 ),
        .Q(stabled_out));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(BTNL_IBUF),
        .Q(temp));
endmodule

(* ORIG_REF_NAME = "load_reg" *) 
module load_reg_1
   (stabled_out,
    BTNR_IBUF,
    clk_IBUF_BUFG,
    \stabled_out_reg[0]_0 );
  output [0:0]stabled_out;
  input BTNR_IBUF;
  input clk_IBUF_BUFG;
  input \stabled_out_reg[0]_0 ;

  wire BTNR_IBUF;
  wire clk_IBUF_BUFG;
  wire \debounce_counter[0]_i_1__1_n_0 ;
  wire \debounce_counter[1]_i_1__1_n_0 ;
  wire \debounce_counter[2]_i_1__1_n_0 ;
  wire \debounce_counter[2]_i_2__1_n_0 ;
  wire \debounce_counter[3]_i_1__1_n_0 ;
  wire \debounce_counter[4]_i_1__1_n_0 ;
  wire \debounce_counter[5]_i_1__1_n_0 ;
  wire \debounce_counter[6]_i_1__1_n_0 ;
  wire \debounce_counter[6]_i_2__1_n_0 ;
  wire \debounce_counter[6]_i_3__1_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire \debounce_counter_reg_n_0_[4] ;
  wire \debounce_counter_reg_n_0_[5] ;
  wire \debounce_counter_reg_n_0_[6] ;
  wire pulse_en_i_1__1_n_0;
  wire pulse_en_reg_n_0;
  wire [0:0]stabled_out;
  wire \stabled_out[0]_i_1__1_n_0 ;
  wire \stabled_out_reg[0]_0 ;
  wire temp;

  LUT6 #(
    .INIT(64'h66FF66FF66FF66F6)) 
    \debounce_counter[0]_i_1__1 
       (.I0(temp),
        .I1(BTNR_IBUF),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(\debounce_counter_reg_n_0_[0] ),
        .I4(\debounce_counter[2]_i_2__1_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF66FF66FF66FF666)) 
    \debounce_counter[1]_i_1__1 
       (.I0(temp),
        .I1(BTNR_IBUF),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(\debounce_counter[2]_i_2__1_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC200000000CCC2)) 
    \debounce_counter[2]_i_1__1 
       (.I0(\debounce_counter[2]_i_2__1_n_0 ),
        .I1(\debounce_counter_reg_n_0_[2] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(BTNR_IBUF),
        .I5(temp),
        .O(\debounce_counter[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debounce_counter[2]_i_2__1 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[6] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .O(\debounce_counter[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999998)) 
    \debounce_counter[3]_i_1__1 
       (.I0(\debounce_counter[6]_i_2__1_n_0 ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[4] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .I4(\debounce_counter_reg_n_0_[6] ),
        .I5(\debounce_counter[6]_i_3__1_n_0 ),
        .O(\debounce_counter[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9A9A9A8)) 
    \debounce_counter[4]_i_1__1 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter[6]_i_2__1_n_0 ),
        .I3(\debounce_counter_reg_n_0_[6] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__1_n_0 ),
        .O(\debounce_counter[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABFFFEAAAA)) 
    \debounce_counter[5]_i_1__1 
       (.I0(\debounce_counter[6]_i_3__1_n_0 ),
        .I1(\debounce_counter[6]_i_2__1_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter_reg_n_0_[6] ),
        .O(\debounce_counter[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \debounce_counter[6]_i_1__1 
       (.I0(\debounce_counter_reg_n_0_[6] ),
        .I1(\debounce_counter[6]_i_2__1_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__1_n_0 ),
        .O(\debounce_counter[6]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_counter[6]_i_2__1 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[6]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_counter[6]_i_3__1 
       (.I0(temp),
        .I1(BTNR_IBUF),
        .O(\debounce_counter[6]_i_3__1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[0]_i_1__1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[1]_i_1__1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[2]_i_1__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[3]_i_1__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[4]_i_1__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[5]_i_1__1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[6]_i_1__1_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    pulse_en_i_1__1
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter[2]_i_2__1_n_0 ),
        .I4(\debounce_counter[6]_i_3__1_n_0 ),
        .I5(pulse_en_reg_n_0),
        .O(pulse_en_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(pulse_en_i_1__1_n_0),
        .Q(pulse_en_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \stabled_out[0]_i_1__1 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(pulse_en_reg_n_0),
        .I4(BTNR_IBUF),
        .I5(\debounce_counter[2]_i_2__1_n_0 ),
        .O(\stabled_out[0]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stabled_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\stabled_out[0]_i_1__1_n_0 ),
        .Q(stabled_out));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(BTNR_IBUF),
        .Q(temp));
endmodule

(* ORIG_REF_NAME = "load_reg" *) 
module load_reg_2
   (stabled_out,
    BTND_IBUF,
    clk_IBUF_BUFG,
    \stabled_out_reg[0]_0 );
  output [0:0]stabled_out;
  input BTND_IBUF;
  input clk_IBUF_BUFG;
  input \stabled_out_reg[0]_0 ;

  wire BTND_IBUF;
  wire clk_IBUF_BUFG;
  wire \debounce_counter[0]_i_1__2_n_0 ;
  wire \debounce_counter[1]_i_1__2_n_0 ;
  wire \debounce_counter[2]_i_1__2_n_0 ;
  wire \debounce_counter[2]_i_2__2_n_0 ;
  wire \debounce_counter[3]_i_1__2_n_0 ;
  wire \debounce_counter[4]_i_1__2_n_0 ;
  wire \debounce_counter[5]_i_1__2_n_0 ;
  wire \debounce_counter[6]_i_1__2_n_0 ;
  wire \debounce_counter[6]_i_2__2_n_0 ;
  wire \debounce_counter[6]_i_3__2_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire \debounce_counter_reg_n_0_[4] ;
  wire \debounce_counter_reg_n_0_[5] ;
  wire \debounce_counter_reg_n_0_[6] ;
  wire pulse_en_i_1__2_n_0;
  wire pulse_en_reg_n_0;
  wire [0:0]stabled_out;
  wire \stabled_out[0]_i_1__2_n_0 ;
  wire \stabled_out_reg[0]_0 ;
  wire temp;

  LUT6 #(
    .INIT(64'h66FF66FF66FF66F6)) 
    \debounce_counter[0]_i_1__2 
       (.I0(temp),
        .I1(BTND_IBUF),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(\debounce_counter_reg_n_0_[0] ),
        .I4(\debounce_counter[2]_i_2__2_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hF66FF66FF66FF666)) 
    \debounce_counter[1]_i_1__2 
       (.I0(temp),
        .I1(BTND_IBUF),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(\debounce_counter[2]_i_2__2_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC200000000CCC2)) 
    \debounce_counter[2]_i_1__2 
       (.I0(\debounce_counter[2]_i_2__2_n_0 ),
        .I1(\debounce_counter_reg_n_0_[2] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(BTND_IBUF),
        .I5(temp),
        .O(\debounce_counter[2]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debounce_counter[2]_i_2__2 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[6] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .O(\debounce_counter[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999998)) 
    \debounce_counter[3]_i_1__2 
       (.I0(\debounce_counter[6]_i_2__2_n_0 ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[4] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .I4(\debounce_counter_reg_n_0_[6] ),
        .I5(\debounce_counter[6]_i_3__2_n_0 ),
        .O(\debounce_counter[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9A9A9A8)) 
    \debounce_counter[4]_i_1__2 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter[6]_i_2__2_n_0 ),
        .I3(\debounce_counter_reg_n_0_[6] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__2_n_0 ),
        .O(\debounce_counter[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABFFFEAAAA)) 
    \debounce_counter[5]_i_1__2 
       (.I0(\debounce_counter[6]_i_3__2_n_0 ),
        .I1(\debounce_counter[6]_i_2__2_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter_reg_n_0_[6] ),
        .O(\debounce_counter[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \debounce_counter[6]_i_1__2 
       (.I0(\debounce_counter_reg_n_0_[6] ),
        .I1(\debounce_counter[6]_i_2__2_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__2_n_0 ),
        .O(\debounce_counter[6]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_counter[6]_i_2__2 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[6]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_counter[6]_i_3__2 
       (.I0(temp),
        .I1(BTND_IBUF),
        .O(\debounce_counter[6]_i_3__2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[0]_i_1__2_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[1]_i_1__2_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[2]_i_1__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[3]_i_1__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\debounce_counter[4]_i_1__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[5]_i_1__2_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[6]_i_1__2_n_0 ),
        .PRE(\stabled_out_reg[0]_0 ),
        .Q(\debounce_counter_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    pulse_en_i_1__2
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter[2]_i_2__2_n_0 ),
        .I4(\debounce_counter[6]_i_3__2_n_0 ),
        .I5(pulse_en_reg_n_0),
        .O(pulse_en_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(pulse_en_i_1__2_n_0),
        .Q(pulse_en_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \stabled_out[0]_i_1__2 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(pulse_en_reg_n_0),
        .I4(BTND_IBUF),
        .I5(\debounce_counter[2]_i_2__2_n_0 ),
        .O(\stabled_out[0]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stabled_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(\stabled_out[0]_i_1__2_n_0 ),
        .Q(stabled_out));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_0 ),
        .D(BTND_IBUF),
        .Q(temp));
endmodule

(* ORIG_REF_NAME = "load_reg" *) 
module load_reg_3
   (\stabled_out_reg[0]_0 ,
    stabled_out,
    \stabled_out_reg[0]_1 ,
    \red_reg[0] ,
    \red_reg[5] ,
    BTNU_IBUF,
    clk_IBUF_BUFG,
    \stabled_out_reg[0]_2 );
  output \stabled_out_reg[0]_0 ;
  output [0:0]stabled_out;
  output \stabled_out_reg[0]_1 ;
  input [0:0]\red_reg[0] ;
  input [0:0]\red_reg[5] ;
  input BTNU_IBUF;
  input clk_IBUF_BUFG;
  input \stabled_out_reg[0]_2 ;

  wire BTNU_IBUF;
  wire clk_IBUF_BUFG;
  wire \debounce_counter[0]_i_1__3_n_0 ;
  wire \debounce_counter[1]_i_1__3_n_0 ;
  wire \debounce_counter[2]_i_1__3_n_0 ;
  wire \debounce_counter[2]_i_2__3_n_0 ;
  wire \debounce_counter[3]_i_1__3_n_0 ;
  wire \debounce_counter[4]_i_1__3_n_0 ;
  wire \debounce_counter[5]_i_1__3_n_0 ;
  wire \debounce_counter[6]_i_1__3_n_0 ;
  wire \debounce_counter[6]_i_2__3_n_0 ;
  wire \debounce_counter[6]_i_3__3_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire \debounce_counter_reg_n_0_[4] ;
  wire \debounce_counter_reg_n_0_[5] ;
  wire \debounce_counter_reg_n_0_[6] ;
  wire pulse_en_i_1__3_n_0;
  wire pulse_en_reg_n_0;
  wire [0:0]\red_reg[0] ;
  wire [0:0]\red_reg[5] ;
  wire [0:0]stabled_out;
  wire \stabled_out[0]_i_1__3_n_0 ;
  wire \stabled_out_reg[0]_0 ;
  wire \stabled_out_reg[0]_1 ;
  wire \stabled_out_reg[0]_2 ;
  wire temp;

  LUT6 #(
    .INIT(64'h66FF66FF66FF66F6)) 
    \debounce_counter[0]_i_1__3 
       (.I0(temp),
        .I1(BTNU_IBUF),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(\debounce_counter_reg_n_0_[0] ),
        .I4(\debounce_counter[2]_i_2__3_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hF66FF66FF66FF666)) 
    \debounce_counter[1]_i_1__3 
       (.I0(temp),
        .I1(BTNU_IBUF),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(\debounce_counter[2]_i_2__3_n_0 ),
        .I5(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hCCC200000000CCC2)) 
    \debounce_counter[2]_i_1__3 
       (.I0(\debounce_counter[2]_i_2__3_n_0 ),
        .I1(\debounce_counter_reg_n_0_[2] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[1] ),
        .I4(BTNU_IBUF),
        .I5(temp),
        .O(\debounce_counter[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debounce_counter[2]_i_2__3 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[6] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .O(\debounce_counter[2]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999998)) 
    \debounce_counter[3]_i_1__3 
       (.I0(\debounce_counter[6]_i_2__3_n_0 ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter_reg_n_0_[4] ),
        .I3(\debounce_counter_reg_n_0_[5] ),
        .I4(\debounce_counter_reg_n_0_[6] ),
        .I5(\debounce_counter[6]_i_3__3_n_0 ),
        .O(\debounce_counter[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9A9A9A8)) 
    \debounce_counter[4]_i_1__3 
       (.I0(\debounce_counter_reg_n_0_[4] ),
        .I1(\debounce_counter_reg_n_0_[3] ),
        .I2(\debounce_counter[6]_i_2__3_n_0 ),
        .I3(\debounce_counter_reg_n_0_[6] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__3_n_0 ),
        .O(\debounce_counter[4]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAABFFFEAAAA)) 
    \debounce_counter[5]_i_1__3 
       (.I0(\debounce_counter[6]_i_3__3_n_0 ),
        .I1(\debounce_counter[6]_i_2__3_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter_reg_n_0_[6] ),
        .O(\debounce_counter[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \debounce_counter[6]_i_1__3 
       (.I0(\debounce_counter_reg_n_0_[6] ),
        .I1(\debounce_counter[6]_i_2__3_n_0 ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[4] ),
        .I4(\debounce_counter_reg_n_0_[5] ),
        .I5(\debounce_counter[6]_i_3__3_n_0 ),
        .O(\debounce_counter[6]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_counter[6]_i_2__3 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[6]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_counter[6]_i_3__3 
       (.I0(temp),
        .I1(BTNU_IBUF),
        .O(\debounce_counter[6]_i_3__3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[0]_i_1__3_n_0 ),
        .PRE(\stabled_out_reg[0]_2 ),
        .Q(\debounce_counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[1]_i_1__3_n_0 ),
        .PRE(\stabled_out_reg[0]_2 ),
        .Q(\debounce_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_2 ),
        .D(\debounce_counter[2]_i_1__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_2 ),
        .D(\debounce_counter[3]_i_1__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_2 ),
        .D(\debounce_counter[4]_i_1__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[5]_i_1__3_n_0 ),
        .PRE(\stabled_out_reg[0]_2 ),
        .Q(\debounce_counter_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \debounce_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\debounce_counter[6]_i_1__3_n_0 ),
        .PRE(\stabled_out_reg[0]_2 ),
        .Q(\debounce_counter_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    pulse_en_i_1__3
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter[2]_i_2__3_n_0 ),
        .I4(\debounce_counter[6]_i_3__3_n_0 ),
        .I5(pulse_en_reg_n_0),
        .O(pulse_en_i_1__3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_2 ),
        .D(pulse_en_i_1__3_n_0),
        .Q(pulse_en_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \red[7]_i_3 
       (.I0(stabled_out),
        .I1(\red_reg[0] ),
        .O(\stabled_out_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \red[7]_i_7 
       (.I0(stabled_out),
        .I1(\red_reg[5] ),
        .O(\stabled_out_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \stabled_out[0]_i_1__3 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(pulse_en_reg_n_0),
        .I4(BTNU_IBUF),
        .I5(\debounce_counter[2]_i_2__3_n_0 ),
        .O(\stabled_out[0]_i_1__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stabled_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_2 ),
        .D(\stabled_out[0]_i_1__3_n_0 ),
        .Q(stabled_out));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\stabled_out_reg[0]_2 ),
        .D(BTNU_IBUF),
        .Q(temp));
endmodule

module mac_fsm
   (Q,
    \byte_data_count_reg[0]_0 ,
    \byte_data_count_reg[1]_0 ,
    \FSM_sequential_pst_reg[1]_0 ,
    \FSM_sequential_pst_reg[1]_1 ,
    \FSM_sequential_pst_reg[0]_0 ,
    \FSM_sequential_pst_reg[0]_1 ,
    \byte_data_count_reg[0]_1 ,
    D,
    \frame_data_reg[113]_0 ,
    \stabled_out_reg[0] ,
    \frame_data_reg[99]_0 ,
    \frame_data_reg[97]_0 ,
    \frame_data_reg[104]_0 ,
    \frame_data_reg[100]_0 ,
    DI,
    S,
    \frame_data_reg[105]_0 ,
    \stabled_out_reg[0]_0 ,
    \frame_data_reg[72]_0 ,
    \stabled_out_reg[0]_1 ,
    \frame_data_reg[59]_0 ,
    \frame_data_reg[57]_0 ,
    \frame_data_reg[64]_0 ,
    \frame_data_reg[60]_0 ,
    \frame_data_reg[58]_0 ,
    \frame_data_reg[51]_0 ,
    \frame_data_reg[65]_0 ,
    \stabled_out_reg[0]_2 ,
    \frame_data_reg[35]_0 ,
    \stabled_out_reg[0]_3 ,
    \frame_data_reg[19]_0 ,
    \frame_data_reg[17]_0 ,
    \frame_data_reg[24]_0 ,
    \frame_data_reg[25]_0 ,
    \frame_data_reg[18]_0 ,
    \frame_data_reg[11]_0 ,
    \frame_data_reg[25]_1 ,
    \frame_data_reg[11]_1 ,
    \frame_data_reg[106]_0 ,
    \frame_data_reg[66]_0 ,
    \frame_data_reg[26]_0 ,
    rst_n,
    LED17_B_OBUF,
    LED17_G_OBUF,
    LED17_R_OBUF,
    LED16_B_OBUF,
    LED16_G_OBUF,
    LED16_R_OBUF,
    byte_done,
    \frame_data_reg[8]_0 ,
    \FSM_sequential_pst_reg[0]_2 ,
    \temp_frame_reg_reg[8]_0 ,
    \byte_data_count_reg[1]_1 ,
    \FSM_sequential_pst_reg[1]_2 ,
    \FSM_sequential_pst_reg[1]_3 ,
    \temp_frame_reg_reg[8]_1 ,
    \FSM_sequential_pst_reg[2]_0 ,
    \FSM_sequential_pst_reg[0]_3 ,
    str_frame,
    stabled_out,
    \red_reg[4] ,
    \red_reg[2] ,
    \red_reg[4]_0 ,
    \red_reg[3] ,
    \red_reg[4]_1 ,
    red_value__25_carry__0_i_3_0,
    \green_reg[4] ,
    \green_reg[2] ,
    \green_reg[4]_0 ,
    \green_reg[3] ,
    \green_reg[4]_1 ,
    green_value__25_carry__0_i_3_0,
    \blue_reg[4] ,
    \blue_reg[2] ,
    \blue_reg[4]_0 ,
    \blue_reg[3] ,
    \blue_reg[4]_1 ,
    blue_value__25_carry__0_i_3_0,
    O,
    green_value__25_carry,
    blue_value__25_carry,
    rst_n_IBUF,
    \RGB[2] ,
    \RGB[1] ,
    \RGB[0] ,
    clk_IBUF_BUFG,
    E,
    \temp_frame_reg_reg[7]_0 );
  output [2:0]Q;
  output [0:0]\byte_data_count_reg[0]_0 ;
  output \byte_data_count_reg[1]_0 ;
  output \FSM_sequential_pst_reg[1]_0 ;
  output \FSM_sequential_pst_reg[1]_1 ;
  output \FSM_sequential_pst_reg[0]_0 ;
  output \FSM_sequential_pst_reg[0]_1 ;
  output \byte_data_count_reg[0]_1 ;
  output [2:0]D;
  output \frame_data_reg[113]_0 ;
  output \stabled_out_reg[0] ;
  output [2:0]\frame_data_reg[99]_0 ;
  output [2:0]\frame_data_reg[97]_0 ;
  output [1:0]\frame_data_reg[104]_0 ;
  output [3:0]\frame_data_reg[100]_0 ;
  output [2:0]DI;
  output [3:0]S;
  output [2:0]\frame_data_reg[105]_0 ;
  output [2:0]\stabled_out_reg[0]_0 ;
  output \frame_data_reg[72]_0 ;
  output \stabled_out_reg[0]_1 ;
  output [2:0]\frame_data_reg[59]_0 ;
  output [2:0]\frame_data_reg[57]_0 ;
  output [1:0]\frame_data_reg[64]_0 ;
  output [3:0]\frame_data_reg[60]_0 ;
  output [2:0]\frame_data_reg[58]_0 ;
  output [3:0]\frame_data_reg[51]_0 ;
  output [2:0]\frame_data_reg[65]_0 ;
  output [2:0]\stabled_out_reg[0]_2 ;
  output \frame_data_reg[35]_0 ;
  output \stabled_out_reg[0]_3 ;
  output [2:0]\frame_data_reg[19]_0 ;
  output [2:0]\frame_data_reg[17]_0 ;
  output [1:0]\frame_data_reg[24]_0 ;
  output [3:0]\frame_data_reg[25]_0 ;
  output [2:0]\frame_data_reg[18]_0 ;
  output [3:0]\frame_data_reg[11]_0 ;
  output [2:0]\frame_data_reg[25]_1 ;
  output [1:0]\frame_data_reg[11]_1 ;
  output [2:0]\frame_data_reg[106]_0 ;
  output [2:0]\frame_data_reg[66]_0 ;
  output [2:0]\frame_data_reg[26]_0 ;
  output rst_n;
  output LED17_B_OBUF;
  output LED17_G_OBUF;
  output LED17_R_OBUF;
  output LED16_B_OBUF;
  output LED16_G_OBUF;
  output LED16_R_OBUF;
  input byte_done;
  input \frame_data_reg[8]_0 ;
  input [0:0]\FSM_sequential_pst_reg[0]_2 ;
  input \temp_frame_reg_reg[8]_0 ;
  input \byte_data_count_reg[1]_1 ;
  input \FSM_sequential_pst_reg[1]_2 ;
  input \FSM_sequential_pst_reg[1]_3 ;
  input \temp_frame_reg_reg[8]_1 ;
  input \FSM_sequential_pst_reg[2]_0 ;
  input \FSM_sequential_pst_reg[0]_3 ;
  input str_frame;
  input [0:0]stabled_out;
  input [2:0]\red_reg[4] ;
  input \red_reg[2] ;
  input \red_reg[4]_0 ;
  input \red_reg[3] ;
  input \red_reg[4]_1 ;
  input [3:0]red_value__25_carry__0_i_3_0;
  input [2:0]\green_reg[4] ;
  input \green_reg[2] ;
  input \green_reg[4]_0 ;
  input \green_reg[3] ;
  input \green_reg[4]_1 ;
  input [3:0]green_value__25_carry__0_i_3_0;
  input [2:0]\blue_reg[4] ;
  input \blue_reg[2] ;
  input \blue_reg[4]_0 ;
  input \blue_reg[3] ;
  input \blue_reg[4]_1 ;
  input [3:0]blue_value__25_carry__0_i_3_0;
  input [1:0]O;
  input [1:0]green_value__25_carry;
  input [1:0]blue_value__25_carry;
  input rst_n_IBUF;
  input \RGB[2] ;
  input \RGB[1] ;
  input \RGB[0] ;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [7:0]\temp_frame_reg_reg[7]_0 ;

  wire [2:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_pst[1]_i_3_n_0 ;
  wire \FSM_sequential_pst[2]_i_3_n_0 ;
  wire \FSM_sequential_pst_reg[0]_0 ;
  wire \FSM_sequential_pst_reg[0]_1 ;
  wire [0:0]\FSM_sequential_pst_reg[0]_2 ;
  wire \FSM_sequential_pst_reg[0]_3 ;
  wire \FSM_sequential_pst_reg[1]_0 ;
  wire \FSM_sequential_pst_reg[1]_1 ;
  wire \FSM_sequential_pst_reg[1]_2 ;
  wire \FSM_sequential_pst_reg[1]_3 ;
  wire \FSM_sequential_pst_reg[2]_0 ;
  wire LED16_B_OBUF;
  wire LED16_G_OBUF;
  wire LED16_R_OBUF;
  wire LED16_R_OBUF_inst_i_10_n_0;
  wire LED16_R_OBUF_inst_i_2_n_0;
  wire LED16_R_OBUF_inst_i_3_n_0;
  wire LED16_R_OBUF_inst_i_4_n_0;
  wire LED16_R_OBUF_inst_i_5_n_0;
  wire LED16_R_OBUF_inst_i_6_n_0;
  wire LED16_R_OBUF_inst_i_7_n_0;
  wire LED16_R_OBUF_inst_i_8_n_0;
  wire LED16_R_OBUF_inst_i_9_n_0;
  wire LED17_B_OBUF;
  wire LED17_G_OBUF;
  wire LED17_R_OBUF;
  wire [1:0]O;
  wire [2:0]Q;
  wire \RGB[0] ;
  wire \RGB[1] ;
  wire \RGB[2] ;
  wire [3:0]S;
  wire \blue_reg[2] ;
  wire \blue_reg[3] ;
  wire [2:0]\blue_reg[4] ;
  wire \blue_reg[4]_0 ;
  wire \blue_reg[4]_1 ;
  wire blue_value__1_carry__0_i_11_n_0;
  wire blue_value__1_carry__0_i_8_n_0;
  wire blue_value__1_carry__0_i_9_n_0;
  wire [1:0]blue_value__25_carry;
  wire [3:0]blue_value__25_carry__0_i_3_0;
  wire blue_value__25_carry__0_i_6_n_0;
  wire \byte_data_count[0]_i_1_n_0 ;
  wire \byte_data_count[1]_i_1_n_0 ;
  wire [0:0]\byte_data_count_reg[0]_0 ;
  wire \byte_data_count_reg[0]_1 ;
  wire \byte_data_count_reg[1]_0 ;
  wire \byte_data_count_reg[1]_1 ;
  wire \byte_data_count_reg_n_0_[0] ;
  wire \byte_data_count_reg_n_0_[1] ;
  wire byte_done;
  wire clk_IBUF_BUFG;
  wire [39:8]frame_data;
  wire \frame_data[119]_i_1_n_0 ;
  wire \frame_data[119]_i_2_n_0 ;
  wire [3:0]\frame_data_reg[100]_0 ;
  wire [1:0]\frame_data_reg[104]_0 ;
  wire [2:0]\frame_data_reg[105]_0 ;
  wire [2:0]\frame_data_reg[106]_0 ;
  wire \frame_data_reg[113]_0 ;
  wire [3:0]\frame_data_reg[11]_0 ;
  wire [1:0]\frame_data_reg[11]_1 ;
  wire [2:0]\frame_data_reg[17]_0 ;
  wire [2:0]\frame_data_reg[18]_0 ;
  wire [2:0]\frame_data_reg[19]_0 ;
  wire [1:0]\frame_data_reg[24]_0 ;
  wire [3:0]\frame_data_reg[25]_0 ;
  wire [2:0]\frame_data_reg[25]_1 ;
  wire [2:0]\frame_data_reg[26]_0 ;
  wire \frame_data_reg[35]_0 ;
  wire [3:0]\frame_data_reg[51]_0 ;
  wire [2:0]\frame_data_reg[57]_0 ;
  wire [2:0]\frame_data_reg[58]_0 ;
  wire [2:0]\frame_data_reg[59]_0 ;
  wire [3:0]\frame_data_reg[60]_0 ;
  wire [1:0]\frame_data_reg[64]_0 ;
  wire [2:0]\frame_data_reg[65]_0 ;
  wire [2:0]\frame_data_reg[66]_0 ;
  wire \frame_data_reg[72]_0 ;
  wire \frame_data_reg[8]_0 ;
  wire [2:0]\frame_data_reg[97]_0 ;
  wire [2:0]\frame_data_reg[99]_0 ;
  wire \frame_data_reg_n_0_[100] ;
  wire \frame_data_reg_n_0_[101] ;
  wire \frame_data_reg_n_0_[102] ;
  wire \frame_data_reg_n_0_[104] ;
  wire \frame_data_reg_n_0_[105] ;
  wire \frame_data_reg_n_0_[106] ;
  wire \frame_data_reg_n_0_[107] ;
  wire \frame_data_reg_n_0_[108] ;
  wire \frame_data_reg_n_0_[109] ;
  wire \frame_data_reg_n_0_[48] ;
  wire \frame_data_reg_n_0_[49] ;
  wire \frame_data_reg_n_0_[50] ;
  wire \frame_data_reg_n_0_[51] ;
  wire \frame_data_reg_n_0_[52] ;
  wire \frame_data_reg_n_0_[53] ;
  wire \frame_data_reg_n_0_[54] ;
  wire \frame_data_reg_n_0_[55] ;
  wire \frame_data_reg_n_0_[56] ;
  wire \frame_data_reg_n_0_[57] ;
  wire \frame_data_reg_n_0_[58] ;
  wire \frame_data_reg_n_0_[59] ;
  wire \frame_data_reg_n_0_[60] ;
  wire \frame_data_reg_n_0_[61] ;
  wire \frame_data_reg_n_0_[62] ;
  wire \frame_data_reg_n_0_[64] ;
  wire \frame_data_reg_n_0_[65] ;
  wire \frame_data_reg_n_0_[66] ;
  wire \frame_data_reg_n_0_[67] ;
  wire \frame_data_reg_n_0_[68] ;
  wire \frame_data_reg_n_0_[69] ;
  wire \frame_data_reg_n_0_[72] ;
  wire \frame_data_reg_n_0_[73] ;
  wire \frame_data_reg_n_0_[74] ;
  wire \frame_data_reg_n_0_[75] ;
  wire \frame_data_reg_n_0_[76] ;
  wire \frame_data_reg_n_0_[77] ;
  wire \frame_data_reg_n_0_[78] ;
  wire \frame_data_reg_n_0_[79] ;
  wire \frame_data_reg_n_0_[88] ;
  wire \frame_data_reg_n_0_[89] ;
  wire \frame_data_reg_n_0_[90] ;
  wire \frame_data_reg_n_0_[91] ;
  wire \frame_data_reg_n_0_[92] ;
  wire \frame_data_reg_n_0_[93] ;
  wire \frame_data_reg_n_0_[94] ;
  wire \frame_data_reg_n_0_[95] ;
  wire \frame_data_reg_n_0_[96] ;
  wire \frame_data_reg_n_0_[97] ;
  wire \frame_data_reg_n_0_[98] ;
  wire \frame_data_reg_n_0_[99] ;
  wire [5:5]\frame_parser_inst/temp_led_o__7 ;
  wire \green[4]_i_4_n_0 ;
  wire \green_reg[2] ;
  wire \green_reg[3] ;
  wire [2:0]\green_reg[4] ;
  wire \green_reg[4]_0 ;
  wire \green_reg[4]_1 ;
  wire green_value__1_carry__0_i_10_n_0;
  wire green_value__1_carry__0_i_8_n_0;
  wire green_value__1_carry__0_i_9_n_0;
  wire [1:0]green_value__25_carry;
  wire [3:0]green_value__25_carry__0_i_3_0;
  wire green_value__25_carry__0_i_6_n_0;
  wire [1:1]nst__0;
  wire [119:8]p_0_in1_in;
  wire \red[4]_i_4_n_0 ;
  wire \red_reg[2] ;
  wire \red_reg[3] ;
  wire [2:0]\red_reg[4] ;
  wire \red_reg[4]_0 ;
  wire \red_reg[4]_1 ;
  wire red_value__1_carry__0_i_10_n_0;
  wire red_value__1_carry__0_i_8_n_0;
  wire red_value__1_carry__0_i_9_n_0;
  wire [3:0]red_value__25_carry__0_i_3_0;
  wire red_value__25_carry__0_i_6_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]sel0;
  wire [0:0]stabled_out;
  wire \stabled_out_reg[0] ;
  wire [2:0]\stabled_out_reg[0]_0 ;
  wire \stabled_out_reg[0]_1 ;
  wire [2:0]\stabled_out_reg[0]_2 ;
  wire \stabled_out_reg[0]_3 ;
  wire str_frame;
  wire \temp_frame_reg[100]_i_1_n_0 ;
  wire \temp_frame_reg[101]_i_1_n_0 ;
  wire \temp_frame_reg[102]_i_1_n_0 ;
  wire \temp_frame_reg[103]_i_1_n_0 ;
  wire \temp_frame_reg[104]_i_1_n_0 ;
  wire \temp_frame_reg[105]_i_1_n_0 ;
  wire \temp_frame_reg[106]_i_1_n_0 ;
  wire \temp_frame_reg[107]_i_1_n_0 ;
  wire \temp_frame_reg[108]_i_1_n_0 ;
  wire \temp_frame_reg[109]_i_1_n_0 ;
  wire \temp_frame_reg[10]_i_1_n_0 ;
  wire \temp_frame_reg[110]_i_1_n_0 ;
  wire \temp_frame_reg[111]_i_2_n_0 ;
  wire \temp_frame_reg[11]_i_1_n_0 ;
  wire \temp_frame_reg[12]_i_1_n_0 ;
  wire \temp_frame_reg[13]_i_1_n_0 ;
  wire \temp_frame_reg[14]_i_1_n_0 ;
  wire \temp_frame_reg[15]_i_1_n_0 ;
  wire \temp_frame_reg[16]_i_1_n_0 ;
  wire \temp_frame_reg[17]_i_1_n_0 ;
  wire \temp_frame_reg[18]_i_1_n_0 ;
  wire \temp_frame_reg[19]_i_1_n_0 ;
  wire \temp_frame_reg[20]_i_1_n_0 ;
  wire \temp_frame_reg[21]_i_1_n_0 ;
  wire \temp_frame_reg[22]_i_1_n_0 ;
  wire \temp_frame_reg[23]_i_1_n_0 ;
  wire \temp_frame_reg[24]_i_1_n_0 ;
  wire \temp_frame_reg[25]_i_1_n_0 ;
  wire \temp_frame_reg[26]_i_1_n_0 ;
  wire \temp_frame_reg[27]_i_1_n_0 ;
  wire \temp_frame_reg[28]_i_1_n_0 ;
  wire \temp_frame_reg[29]_i_1_n_0 ;
  wire \temp_frame_reg[30]_i_1_n_0 ;
  wire \temp_frame_reg[31]_i_1_n_0 ;
  wire \temp_frame_reg[32]_i_1_n_0 ;
  wire \temp_frame_reg[33]_i_1_n_0 ;
  wire \temp_frame_reg[34]_i_1_n_0 ;
  wire \temp_frame_reg[35]_i_1_n_0 ;
  wire \temp_frame_reg[36]_i_1_n_0 ;
  wire \temp_frame_reg[37]_i_1_n_0 ;
  wire \temp_frame_reg[38]_i_1_n_0 ;
  wire \temp_frame_reg[39]_i_1_n_0 ;
  wire \temp_frame_reg[40]_i_1_n_0 ;
  wire \temp_frame_reg[41]_i_1_n_0 ;
  wire \temp_frame_reg[42]_i_1_n_0 ;
  wire \temp_frame_reg[43]_i_1_n_0 ;
  wire \temp_frame_reg[44]_i_1_n_0 ;
  wire \temp_frame_reg[45]_i_1_n_0 ;
  wire \temp_frame_reg[46]_i_1_n_0 ;
  wire \temp_frame_reg[47]_i_1_n_0 ;
  wire \temp_frame_reg[48]_i_1_n_0 ;
  wire \temp_frame_reg[49]_i_1_n_0 ;
  wire \temp_frame_reg[50]_i_1_n_0 ;
  wire \temp_frame_reg[51]_i_1_n_0 ;
  wire \temp_frame_reg[52]_i_1_n_0 ;
  wire \temp_frame_reg[53]_i_1_n_0 ;
  wire \temp_frame_reg[54]_i_1_n_0 ;
  wire \temp_frame_reg[55]_i_1_n_0 ;
  wire \temp_frame_reg[56]_i_1_n_0 ;
  wire \temp_frame_reg[57]_i_1_n_0 ;
  wire \temp_frame_reg[58]_i_1_n_0 ;
  wire \temp_frame_reg[59]_i_1_n_0 ;
  wire \temp_frame_reg[60]_i_1_n_0 ;
  wire \temp_frame_reg[61]_i_1_n_0 ;
  wire \temp_frame_reg[62]_i_1_n_0 ;
  wire \temp_frame_reg[63]_i_1_n_0 ;
  wire \temp_frame_reg[64]_i_1_n_0 ;
  wire \temp_frame_reg[65]_i_1_n_0 ;
  wire \temp_frame_reg[66]_i_1_n_0 ;
  wire \temp_frame_reg[67]_i_1_n_0 ;
  wire \temp_frame_reg[68]_i_1_n_0 ;
  wire \temp_frame_reg[69]_i_1_n_0 ;
  wire \temp_frame_reg[70]_i_1_n_0 ;
  wire \temp_frame_reg[71]_i_1_n_0 ;
  wire \temp_frame_reg[72]_i_1_n_0 ;
  wire \temp_frame_reg[73]_i_1_n_0 ;
  wire \temp_frame_reg[74]_i_1_n_0 ;
  wire \temp_frame_reg[75]_i_1_n_0 ;
  wire \temp_frame_reg[76]_i_1_n_0 ;
  wire \temp_frame_reg[77]_i_1_n_0 ;
  wire \temp_frame_reg[78]_i_1_n_0 ;
  wire \temp_frame_reg[79]_i_1_n_0 ;
  wire \temp_frame_reg[80]_i_1_n_0 ;
  wire \temp_frame_reg[81]_i_1_n_0 ;
  wire \temp_frame_reg[82]_i_1_n_0 ;
  wire \temp_frame_reg[83]_i_1_n_0 ;
  wire \temp_frame_reg[84]_i_1_n_0 ;
  wire \temp_frame_reg[85]_i_1_n_0 ;
  wire \temp_frame_reg[86]_i_1_n_0 ;
  wire \temp_frame_reg[87]_i_1_n_0 ;
  wire \temp_frame_reg[88]_i_1_n_0 ;
  wire \temp_frame_reg[89]_i_1_n_0 ;
  wire \temp_frame_reg[8]_i_1_n_0 ;
  wire \temp_frame_reg[90]_i_1_n_0 ;
  wire \temp_frame_reg[91]_i_1_n_0 ;
  wire \temp_frame_reg[92]_i_1_n_0 ;
  wire \temp_frame_reg[93]_i_1_n_0 ;
  wire \temp_frame_reg[94]_i_1_n_0 ;
  wire \temp_frame_reg[95]_i_1_n_0 ;
  wire \temp_frame_reg[96]_i_1_n_0 ;
  wire \temp_frame_reg[97]_i_1_n_0 ;
  wire \temp_frame_reg[98]_i_1_n_0 ;
  wire \temp_frame_reg[99]_i_1_n_0 ;
  wire \temp_frame_reg[9]_i_1_n_0 ;
  wire [7:0]\temp_frame_reg_reg[7]_0 ;
  wire \temp_frame_reg_reg[8]_0 ;
  wire \temp_frame_reg_reg[8]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_pst[0]_i_10 
       (.I0(\byte_data_count_reg_n_0_[0] ),
        .I1(\byte_data_count_reg_n_0_[1] ),
        .O(\byte_data_count_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h5D55)) 
    \FSM_sequential_pst[0]_i_5 
       (.I0(Q[1]),
        .I1(\FSM_sequential_pst_reg[0]_3 ),
        .I2(Q[0]),
        .I3(byte_done),
        .O(\FSM_sequential_pst_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_pst[0]_i_6 
       (.I0(Q[0]),
        .I1(byte_done),
        .O(\FSM_sequential_pst_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \FSM_sequential_pst[0]_i_9 
       (.I0(Q[1]),
        .I1(str_frame),
        .I2(Q[0]),
        .O(\FSM_sequential_pst_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h1F1F1F10)) 
    \FSM_sequential_pst[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_pst_reg[1]_2 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_pst[1]_i_3_n_0 ),
        .I4(\FSM_sequential_pst_reg[1]_3 ),
        .O(nst__0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \FSM_sequential_pst[1]_i_3 
       (.I0(\byte_data_count_reg[1]_1 ),
        .I1(Q[0]),
        .I2(\byte_data_count_reg_n_0_[0] ),
        .I3(\byte_data_count_reg_n_0_[1] ),
        .I4(\FSM_sequential_pst_reg[1]_0 ),
        .O(\FSM_sequential_pst[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \FSM_sequential_pst[2]_i_1 
       (.I0(\byte_data_count_reg_n_0_[0] ),
        .I1(\byte_data_count_reg[1]_1 ),
        .I2(\FSM_sequential_pst[2]_i_3_n_0 ),
        .I3(\byte_data_count_reg_n_0_[1] ),
        .I4(\FSM_sequential_pst_reg[2]_0 ),
        .O(\byte_data_count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_pst[2]_i_13 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_pst_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_pst[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(\FSM_sequential_pst[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STR_FRAME:001,DATA:011,COMMA_or_END_FRAME:100,IDLE:000,END_FRAME:101,LETTER:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pst_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_sequential_pst_reg[0]_2 ),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "STR_FRAME:001,DATA:011,COMMA_or_END_FRAME:100,IDLE:000,END_FRAME:101,LETTER:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pst_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(nst__0),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "STR_FRAME:001,DATA:011,COMMA_or_END_FRAME:100,IDLE:000,END_FRAME:101,LETTER:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_pst_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\byte_data_count_reg[0]_0 ),
        .Q(Q[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    LED16_B_OBUF_inst_i_1
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .I5(\RGB[2] ),
        .O(LED16_B_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    LED16_G_OBUF_inst_i_1
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .I5(\RGB[1] ),
        .O(LED16_G_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    LED16_R_OBUF_inst_i_1
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .I5(\RGB[0] ),
        .O(LED16_R_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hF7FFFFF7)) 
    LED16_R_OBUF_inst_i_10
       (.I0(frame_data[35]),
        .I1(frame_data[34]),
        .I2(frame_data[25]),
        .I3(frame_data[20]),
        .I4(frame_data[21]),
        .O(LED16_R_OBUF_inst_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    LED16_R_OBUF_inst_i_2
       (.I0(frame_data[11]),
        .I1(frame_data[10]),
        .I2(frame_data[8]),
        .I3(frame_data[9]),
        .I4(LED16_R_OBUF_inst_i_7_n_0),
        .O(LED16_R_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE7E7FF)) 
    LED16_R_OBUF_inst_i_3
       (.I0(frame_data[13]),
        .I1(frame_data[12]),
        .I2(frame_data[14]),
        .I3(LED16_R_OBUF_inst_i_8_n_0),
        .I4(frame_data[22]),
        .I5(frame_data[23]),
        .O(LED16_R_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    LED16_R_OBUF_inst_i_4
       (.I0(frame_data[32]),
        .I1(frame_data[39]),
        .I2(frame_data[38]),
        .I3(frame_data[37]),
        .I4(frame_data[36]),
        .O(LED16_R_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    LED16_R_OBUF_inst_i_5
       (.I0(frame_data[18]),
        .I1(frame_data[27]),
        .I2(frame_data[17]),
        .I3(frame_data[26]),
        .I4(LED16_R_OBUF_inst_i_9_n_0),
        .O(LED16_R_OBUF_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    LED16_R_OBUF_inst_i_6
       (.I0(frame_data[31]),
        .I1(frame_data[33]),
        .I2(frame_data[30]),
        .I3(frame_data[29]),
        .I4(LED16_R_OBUF_inst_i_10_n_0),
        .O(LED16_R_OBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    LED16_R_OBUF_inst_i_7
       (.I0(frame_data[16]),
        .I1(frame_data[12]),
        .I2(frame_data[20]),
        .I3(frame_data[19]),
        .O(LED16_R_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LED16_R_OBUF_inst_i_8
       (.I0(frame_data[20]),
        .I1(frame_data[21]),
        .O(LED16_R_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'hFDFDFDFDFDDFDFDF)) 
    LED16_R_OBUF_inst_i_9
       (.I0(frame_data[28]),
        .I1(frame_data[24]),
        .I2(frame_data[15]),
        .I3(frame_data[13]),
        .I4(frame_data[12]),
        .I5(frame_data[14]),
        .O(LED16_R_OBUF_inst_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    LED17_B_OBUF_inst_i_1
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .I5(\RGB[2] ),
        .O(LED17_B_OBUF));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    LED17_G_OBUF_inst_i_1
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .I5(\RGB[1] ),
        .O(LED17_G_OBUF));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    LED17_R_OBUF_inst_i_1
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .I5(\RGB[0] ),
        .O(LED17_R_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \blue[2]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[35]_0 ),
        .I2(\blue_reg[4] [0]),
        .I3(\blue_reg[2] ),
        .I4(\blue_reg[4]_0 ),
        .O(\stabled_out_reg[0]_2 [0]));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \blue[3]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[35]_0 ),
        .I2(\blue_reg[4] [1]),
        .I3(\blue_reg[3] ),
        .I4(\blue_reg[4]_0 ),
        .O(\stabled_out_reg[0]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \blue[4]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[35]_0 ),
        .I2(\blue_reg[4] [2]),
        .I3(\blue_reg[4]_1 ),
        .I4(\blue_reg[4]_0 ),
        .O(\stabled_out_reg[0]_2 [2]));
  LUT4 #(
    .INIT(16'h0100)) 
    \blue[4]_i_2 
       (.I0(frame_data[35]),
        .I1(LED16_R_OBUF_inst_i_4_n_0),
        .I2(frame_data[34]),
        .I3(frame_data[33]),
        .O(\frame_data_reg[35]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \blue[7]_i_3 
       (.I0(\frame_data_reg[35]_0 ),
        .I1(stabled_out),
        .O(\stabled_out_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h84484884)) 
    blue_value__1_carry__0_i_1
       (.I0(frame_data[25]),
        .I1(\frame_data_reg[35]_0 ),
        .I2(frame_data[21]),
        .I3(frame_data[20]),
        .I4(blue_value__1_carry__0_i_8_n_0),
        .O(\frame_data_reg[25]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    blue_value__1_carry__0_i_10
       (.I0(frame_data[12]),
        .I1(frame_data[13]),
        .O(\frame_parser_inst/temp_led_o__7 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    blue_value__1_carry__0_i_11
       (.I0(frame_data[14]),
        .I1(frame_data[12]),
        .I2(frame_data[13]),
        .I3(frame_data[15]),
        .O(blue_value__1_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    blue_value__1_carry__0_i_2
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[24]),
        .O(\frame_data_reg[25]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    blue_value__1_carry__0_i_3
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[12]),
        .O(\frame_data_reg[25]_1 [0]));
  LUT6 #(
    .INIT(64'hD7FF41FF2800BE00)) 
    blue_value__1_carry__0_i_4
       (.I0(frame_data[25]),
        .I1(frame_data[20]),
        .I2(frame_data[21]),
        .I3(\frame_data_reg[35]_0 ),
        .I4(blue_value__1_carry__0_i_8_n_0),
        .I5(blue_value__1_carry__0_i_9_n_0),
        .O(\frame_data_reg[25]_0 [3]));
  LUT6 #(
    .INIT(64'h9600960096006900)) 
    blue_value__1_carry__0_i_5
       (.I0(blue_value__1_carry__0_i_8_n_0),
        .I1(frame_data[21]),
        .I2(frame_data[25]),
        .I3(\frame_data_reg[35]_0 ),
        .I4(\frame_parser_inst/temp_led_o__7 ),
        .I5(frame_data[20]),
        .O(\frame_data_reg[25]_0 [2]));
  LUT5 #(
    .INIT(32'h96690000)) 
    blue_value__1_carry__0_i_6
       (.I0(frame_data[20]),
        .I1(frame_data[13]),
        .I2(frame_data[12]),
        .I3(frame_data[24]),
        .I4(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[25]_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    blue_value__1_carry__0_i_7
       (.I0(frame_data[12]),
        .I1(frame_data[19]),
        .I2(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[25]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h78)) 
    blue_value__1_carry__0_i_8
       (.I0(frame_data[13]),
        .I1(frame_data[12]),
        .I2(frame_data[14]),
        .O(blue_value__1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h4884848484484848)) 
    blue_value__1_carry__0_i_9
       (.I0(frame_data[26]),
        .I1(\frame_data_reg[35]_0 ),
        .I2(frame_data[22]),
        .I3(frame_data[20]),
        .I4(frame_data[21]),
        .I5(blue_value__1_carry__0_i_11_n_0),
        .O(blue_value__1_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    blue_value__1_carry_i_1
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[18]),
        .O(\frame_data_reg[18]_0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    blue_value__1_carry_i_2
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[10]),
        .O(\frame_data_reg[18]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    blue_value__1_carry_i_3
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[9]),
        .O(\frame_data_reg[18]_0 [0]));
  LUT3 #(
    .INIT(8'h60)) 
    blue_value__1_carry_i_4
       (.I0(frame_data[11]),
        .I1(frame_data[18]),
        .I2(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[11]_0 [3]));
  LUT3 #(
    .INIT(8'h60)) 
    blue_value__1_carry_i_5
       (.I0(frame_data[10]),
        .I1(frame_data[17]),
        .I2(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'h60)) 
    blue_value__1_carry_i_6
       (.I0(frame_data[9]),
        .I1(frame_data[16]),
        .I2(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    blue_value__1_carry_i_7
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[8]),
        .O(\frame_data_reg[11]_0 [0]));
  LUT5 #(
    .INIT(32'h9669CCCC)) 
    blue_value__25_carry__0_i_1
       (.I0(frame_data[24]),
        .I1(blue_value__25_carry__0_i_3_0[2]),
        .I2(frame_data[28]),
        .I3(frame_data[19]),
        .I4(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[24]_0 [1]));
  LUT4 #(
    .INIT(16'hA880)) 
    blue_value__25_carry__0_i_2
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[26]),
        .I2(frame_data[17]),
        .I3(blue_value__25_carry__0_i_3_0[0]),
        .O(\frame_data_reg[24]_0 [0]));
  LUT6 #(
    .INIT(64'h666A6AAAA666666A)) 
    blue_value__25_carry__0_i_3
       (.I0(blue_value__25_carry__0_i_6_n_0),
        .I1(\frame_data_reg[35]_0 ),
        .I2(frame_data[19]),
        .I3(frame_data[24]),
        .I4(blue_value__25_carry__0_i_3_0[2]),
        .I5(frame_data[28]),
        .O(\frame_data_reg[19]_0 [2]));
  LUT5 #(
    .INIT(32'h566AAAAA)) 
    blue_value__25_carry__0_i_4
       (.I0(\frame_data_reg[24]_0 [1]),
        .I1(blue_value__25_carry__0_i_3_0[1]),
        .I2(frame_data[18]),
        .I3(frame_data[27]),
        .I4(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[19]_0 [1]));
  LUT5 #(
    .INIT(32'h659A956A)) 
    blue_value__25_carry__0_i_5
       (.I0(\frame_data_reg[24]_0 [0]),
        .I1(frame_data[27]),
        .I2(\frame_data_reg[35]_0 ),
        .I3(blue_value__25_carry__0_i_3_0[1]),
        .I4(frame_data[18]),
        .O(\frame_data_reg[19]_0 [0]));
  LUT6 #(
    .INIT(64'h69969669CCCCCCCC)) 
    blue_value__25_carry__0_i_6
       (.I0(frame_data[25]),
        .I1(blue_value__25_carry__0_i_3_0[3]),
        .I2(frame_data[29]),
        .I3(frame_data[28]),
        .I4(frame_data[20]),
        .I5(\frame_data_reg[35]_0 ),
        .O(blue_value__25_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9C6C)) 
    blue_value__25_carry_i_1
       (.I0(frame_data[17]),
        .I1(blue_value__25_carry__0_i_3_0[0]),
        .I2(\frame_data_reg[35]_0 ),
        .I3(frame_data[26]),
        .O(\frame_data_reg[17]_0 [2]));
  LUT3 #(
    .INIT(8'h78)) 
    blue_value__25_carry_i_2
       (.I0(frame_data[25]),
        .I1(\frame_data_reg[35]_0 ),
        .I2(blue_value__25_carry[1]),
        .O(\frame_data_reg[17]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    blue_value__25_carry_i_3
       (.I0(\frame_data_reg[35]_0 ),
        .I1(frame_data[24]),
        .O(\frame_data_reg[17]_0 [0]));
  LUT6 #(
    .INIT(64'h69CC96CC96CC96CC)) 
    blue_value__25_carry_i_4
       (.I0(frame_data[26]),
        .I1(blue_value__25_carry__0_i_3_0[0]),
        .I2(frame_data[17]),
        .I3(\frame_data_reg[35]_0 ),
        .I4(frame_data[25]),
        .I5(blue_value__25_carry[1]),
        .O(\frame_data_reg[26]_0 [2]));
  LUT4 #(
    .INIT(16'h96AA)) 
    blue_value__25_carry_i_5
       (.I0(blue_value__25_carry[1]),
        .I1(frame_data[25]),
        .I2(frame_data[16]),
        .I3(\frame_data_reg[35]_0 ),
        .O(\frame_data_reg[26]_0 [1]));
  LUT3 #(
    .INIT(8'h78)) 
    blue_value__25_carry_i_6
       (.I0(frame_data[24]),
        .I1(\frame_data_reg[35]_0 ),
        .I2(blue_value__25_carry[0]),
        .O(\frame_data_reg[26]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h20000020)) 
    \byte_data_count[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\byte_data_count_reg[1]_1 ),
        .I4(\byte_data_count_reg_n_0_[0] ),
        .O(\byte_data_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C00040000000800)) 
    \byte_data_count[1]_i_1 
       (.I0(\byte_data_count_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\byte_data_count_reg[1]_1 ),
        .I5(\byte_data_count_reg_n_0_[1] ),
        .O(\byte_data_count[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_data_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\byte_data_count[0]_i_1_n_0 ),
        .Q(\byte_data_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_data_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\byte_data_count[1]_i_1_n_0 ),
        .Q(\byte_data_count_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h404F000000000000)) 
    \frame_data[119]_i_1 
       (.I0(Q[0]),
        .I1(byte_done),
        .I2(Q[2]),
        .I3(\frame_data[119]_i_2_n_0 ),
        .I4(\frame_data_reg[8]_0 ),
        .I5(\byte_data_count_reg[0]_0 ),
        .O(\frame_data[119]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AEAEAA00AA00)) 
    \frame_data[119]_i_2 
       (.I0(\FSM_sequential_pst_reg[1]_0 ),
        .I1(\byte_data_count_reg_n_0_[1] ),
        .I2(\byte_data_count_reg_n_0_[0] ),
        .I3(\FSM_sequential_pst_reg[1]_1 ),
        .I4(\byte_data_count_reg[1]_1 ),
        .I5(Q[0]),
        .O(\frame_data[119]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[100]),
        .Q(\frame_data_reg_n_0_[100] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[101]),
        .Q(\frame_data_reg_n_0_[101] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[102]),
        .Q(\frame_data_reg_n_0_[102] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[104]),
        .Q(\frame_data_reg_n_0_[104] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[105]),
        .Q(\frame_data_reg_n_0_[105] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[106]),
        .Q(\frame_data_reg_n_0_[106] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[107]),
        .Q(\frame_data_reg_n_0_[107] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[108]),
        .Q(\frame_data_reg_n_0_[108] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[109]),
        .Q(\frame_data_reg_n_0_[109] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[10]),
        .Q(frame_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[112]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[113]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[114]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[115]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[116]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[117]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[118]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[119]),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[11]),
        .Q(frame_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[12]),
        .Q(frame_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[13]),
        .Q(frame_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[14]),
        .Q(frame_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[15]),
        .Q(frame_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[16]),
        .Q(frame_data[16]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[17]),
        .Q(frame_data[17]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[18]),
        .Q(frame_data[18]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[19]),
        .Q(frame_data[19]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[20]),
        .Q(frame_data[20]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[21]),
        .Q(frame_data[21]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[22]),
        .Q(frame_data[22]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[23]),
        .Q(frame_data[23]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[24]),
        .Q(frame_data[24]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[25]),
        .Q(frame_data[25]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[26]),
        .Q(frame_data[26]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[27]),
        .Q(frame_data[27]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[28]),
        .Q(frame_data[28]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[29]),
        .Q(frame_data[29]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[30]),
        .Q(frame_data[30]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[31]),
        .Q(frame_data[31]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[32]),
        .Q(frame_data[32]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[33]),
        .Q(frame_data[33]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[34]),
        .Q(frame_data[34]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[35]),
        .Q(frame_data[35]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[36]),
        .Q(frame_data[36]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[37]),
        .Q(frame_data[37]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[38]),
        .Q(frame_data[38]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[39]),
        .Q(frame_data[39]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[48]),
        .Q(\frame_data_reg_n_0_[48] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[49]),
        .Q(\frame_data_reg_n_0_[49] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[50]),
        .Q(\frame_data_reg_n_0_[50] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[51]),
        .Q(\frame_data_reg_n_0_[51] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[52]),
        .Q(\frame_data_reg_n_0_[52] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[53]),
        .Q(\frame_data_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[54]),
        .Q(\frame_data_reg_n_0_[54] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[55]),
        .Q(\frame_data_reg_n_0_[55] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[56]),
        .Q(\frame_data_reg_n_0_[56] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[57]),
        .Q(\frame_data_reg_n_0_[57] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[58]),
        .Q(\frame_data_reg_n_0_[58] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[59]),
        .Q(\frame_data_reg_n_0_[59] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[60]),
        .Q(\frame_data_reg_n_0_[60] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[61]),
        .Q(\frame_data_reg_n_0_[61] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[62]),
        .Q(\frame_data_reg_n_0_[62] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[64]),
        .Q(\frame_data_reg_n_0_[64] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[65]),
        .Q(\frame_data_reg_n_0_[65] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[66]),
        .Q(\frame_data_reg_n_0_[66] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[67]),
        .Q(\frame_data_reg_n_0_[67] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[68]),
        .Q(\frame_data_reg_n_0_[68] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[69]),
        .Q(\frame_data_reg_n_0_[69] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[72]),
        .Q(\frame_data_reg_n_0_[72] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[73]),
        .Q(\frame_data_reg_n_0_[73] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[74]),
        .Q(\frame_data_reg_n_0_[74] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[75]),
        .Q(\frame_data_reg_n_0_[75] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[76]),
        .Q(\frame_data_reg_n_0_[76] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[77]),
        .Q(\frame_data_reg_n_0_[77] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[78]),
        .Q(\frame_data_reg_n_0_[78] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[79]),
        .Q(\frame_data_reg_n_0_[79] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[88]),
        .Q(\frame_data_reg_n_0_[88] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[89]),
        .Q(\frame_data_reg_n_0_[89] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[8]),
        .Q(frame_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[90]),
        .Q(\frame_data_reg_n_0_[90] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[91]),
        .Q(\frame_data_reg_n_0_[91] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[92]),
        .Q(\frame_data_reg_n_0_[92] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[93]),
        .Q(\frame_data_reg_n_0_[93] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[94]),
        .Q(\frame_data_reg_n_0_[94] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[95]),
        .Q(\frame_data_reg_n_0_[95] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[96]),
        .Q(\frame_data_reg_n_0_[96] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[97]),
        .Q(\frame_data_reg_n_0_[97] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[98]),
        .Q(\frame_data_reg_n_0_[98] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[99]),
        .Q(\frame_data_reg_n_0_[99] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\frame_data[119]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in1_in[9]),
        .Q(frame_data[9]));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \green[2]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\green_reg[4] [0]),
        .I3(\green_reg[2] ),
        .I4(\green_reg[4]_0 ),
        .O(\stabled_out_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \green[3]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\green_reg[4] [1]),
        .I3(\green_reg[3] ),
        .I4(\green_reg[4]_0 ),
        .O(\stabled_out_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \green[4]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\green_reg[4] [2]),
        .I3(\green_reg[4]_1 ),
        .I4(\green_reg[4]_0 ),
        .O(\stabled_out_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \green[4]_i_2 
       (.I0(\frame_data_reg_n_0_[72] ),
        .I1(\frame_data_reg_n_0_[73] ),
        .I2(\frame_data_reg_n_0_[74] ),
        .I3(\frame_data_reg_n_0_[75] ),
        .I4(\green[4]_i_4_n_0 ),
        .O(\frame_data_reg[72]_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \green[4]_i_4 
       (.I0(\frame_data_reg_n_0_[79] ),
        .I1(\frame_data_reg_n_0_[78] ),
        .I2(\frame_data_reg_n_0_[77] ),
        .I3(\frame_data_reg_n_0_[76] ),
        .O(\green[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \green[7]_i_3 
       (.I0(\frame_data_reg[72]_0 ),
        .I1(stabled_out),
        .O(\stabled_out_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h84484884)) 
    green_value__1_carry__0_i_1
       (.I0(\frame_data_reg_n_0_[65] ),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\frame_data_reg_n_0_[61] ),
        .I3(\frame_data_reg_n_0_[60] ),
        .I4(green_value__1_carry__0_i_8_n_0),
        .O(\frame_data_reg[65]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    green_value__1_carry__0_i_10
       (.I0(\frame_data_reg_n_0_[54] ),
        .I1(\frame_data_reg_n_0_[52] ),
        .I2(\frame_data_reg_n_0_[53] ),
        .I3(\frame_data_reg_n_0_[55] ),
        .O(green_value__1_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    green_value__1_carry__0_i_2
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[64] ),
        .O(\frame_data_reg[65]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    green_value__1_carry__0_i_3
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[52] ),
        .O(\frame_data_reg[65]_0 [0]));
  LUT6 #(
    .INIT(64'h82FFEBFF7D001400)) 
    green_value__1_carry__0_i_4
       (.I0(green_value__1_carry__0_i_8_n_0),
        .I1(\frame_data_reg_n_0_[60] ),
        .I2(\frame_data_reg_n_0_[61] ),
        .I3(\frame_data_reg[72]_0 ),
        .I4(\frame_data_reg_n_0_[65] ),
        .I5(green_value__1_carry__0_i_9_n_0),
        .O(\frame_data_reg[60]_0 [3]));
  LUT5 #(
    .INIT(32'hAAAAA66A)) 
    green_value__1_carry__0_i_5
       (.I0(\frame_data_reg[65]_0 [2]),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\frame_data_reg_n_0_[53] ),
        .I3(\frame_data_reg_n_0_[52] ),
        .I4(\frame_data_reg_n_0_[60] ),
        .O(\frame_data_reg[60]_0 [2]));
  LUT5 #(
    .INIT(32'h96690000)) 
    green_value__1_carry__0_i_6
       (.I0(\frame_data_reg_n_0_[60] ),
        .I1(\frame_data_reg_n_0_[53] ),
        .I2(\frame_data_reg_n_0_[52] ),
        .I3(\frame_data_reg_n_0_[64] ),
        .I4(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[60]_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    green_value__1_carry__0_i_7
       (.I0(\frame_data_reg_n_0_[52] ),
        .I1(\frame_data_reg_n_0_[59] ),
        .I2(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[60]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    green_value__1_carry__0_i_8
       (.I0(\frame_data_reg_n_0_[53] ),
        .I1(\frame_data_reg_n_0_[52] ),
        .I2(\frame_data_reg_n_0_[54] ),
        .O(green_value__1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h4884848484484848)) 
    green_value__1_carry__0_i_9
       (.I0(\frame_data_reg_n_0_[66] ),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\frame_data_reg_n_0_[62] ),
        .I3(\frame_data_reg_n_0_[61] ),
        .I4(\frame_data_reg_n_0_[60] ),
        .I5(green_value__1_carry__0_i_10_n_0),
        .O(green_value__1_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    green_value__1_carry_i_1
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[58] ),
        .O(\frame_data_reg[58]_0 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    green_value__1_carry_i_2
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[50] ),
        .O(\frame_data_reg[58]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    green_value__1_carry_i_3
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[49] ),
        .O(\frame_data_reg[58]_0 [0]));
  LUT3 #(
    .INIT(8'h60)) 
    green_value__1_carry_i_4
       (.I0(\frame_data_reg_n_0_[51] ),
        .I1(\frame_data_reg_n_0_[58] ),
        .I2(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[51]_0 [3]));
  LUT3 #(
    .INIT(8'h60)) 
    green_value__1_carry_i_5
       (.I0(\frame_data_reg_n_0_[50] ),
        .I1(\frame_data_reg_n_0_[57] ),
        .I2(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[51]_0 [2]));
  LUT3 #(
    .INIT(8'h60)) 
    green_value__1_carry_i_6
       (.I0(\frame_data_reg_n_0_[49] ),
        .I1(\frame_data_reg_n_0_[56] ),
        .I2(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[51]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    green_value__1_carry_i_7
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[48] ),
        .O(\frame_data_reg[51]_0 [0]));
  LUT5 #(
    .INIT(32'h9669CCCC)) 
    green_value__25_carry__0_i_1
       (.I0(\frame_data_reg_n_0_[64] ),
        .I1(green_value__25_carry__0_i_3_0[2]),
        .I2(\frame_data_reg_n_0_[68] ),
        .I3(\frame_data_reg_n_0_[59] ),
        .I4(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[64]_0 [1]));
  LUT4 #(
    .INIT(16'hC880)) 
    green_value__25_carry__0_i_2
       (.I0(\frame_data_reg_n_0_[57] ),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\frame_data_reg_n_0_[66] ),
        .I3(green_value__25_carry__0_i_3_0[0]),
        .O(\frame_data_reg[64]_0 [0]));
  LUT6 #(
    .INIT(64'h666A6AAAA666666A)) 
    green_value__25_carry__0_i_3
       (.I0(green_value__25_carry__0_i_6_n_0),
        .I1(\frame_data_reg[72]_0 ),
        .I2(\frame_data_reg_n_0_[59] ),
        .I3(\frame_data_reg_n_0_[64] ),
        .I4(green_value__25_carry__0_i_3_0[2]),
        .I5(\frame_data_reg_n_0_[68] ),
        .O(\frame_data_reg[59]_0 [2]));
  LUT5 #(
    .INIT(32'h56AA6AAA)) 
    green_value__25_carry__0_i_4
       (.I0(\frame_data_reg[64]_0 [1]),
        .I1(green_value__25_carry__0_i_3_0[1]),
        .I2(\frame_data_reg_n_0_[67] ),
        .I3(\frame_data_reg[72]_0 ),
        .I4(\frame_data_reg_n_0_[58] ),
        .O(\frame_data_reg[59]_0 [1]));
  LUT5 #(
    .INIT(32'h659A956A)) 
    green_value__25_carry__0_i_5
       (.I0(\frame_data_reg[64]_0 [0]),
        .I1(\frame_data_reg_n_0_[67] ),
        .I2(\frame_data_reg[72]_0 ),
        .I3(green_value__25_carry__0_i_3_0[1]),
        .I4(\frame_data_reg_n_0_[58] ),
        .O(\frame_data_reg[59]_0 [0]));
  LUT6 #(
    .INIT(64'h69969669CCCCCCCC)) 
    green_value__25_carry__0_i_6
       (.I0(\frame_data_reg_n_0_[65] ),
        .I1(green_value__25_carry__0_i_3_0[3]),
        .I2(\frame_data_reg_n_0_[69] ),
        .I3(\frame_data_reg_n_0_[68] ),
        .I4(\frame_data_reg_n_0_[60] ),
        .I5(\frame_data_reg[72]_0 ),
        .O(green_value__25_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9C6C)) 
    green_value__25_carry_i_1
       (.I0(\frame_data_reg_n_0_[57] ),
        .I1(green_value__25_carry__0_i_3_0[0]),
        .I2(\frame_data_reg[72]_0 ),
        .I3(\frame_data_reg_n_0_[66] ),
        .O(\frame_data_reg[57]_0 [2]));
  LUT3 #(
    .INIT(8'h78)) 
    green_value__25_carry_i_2
       (.I0(\frame_data_reg_n_0_[65] ),
        .I1(\frame_data_reg[72]_0 ),
        .I2(green_value__25_carry[1]),
        .O(\frame_data_reg[57]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    green_value__25_carry_i_3
       (.I0(\frame_data_reg[72]_0 ),
        .I1(\frame_data_reg_n_0_[64] ),
        .O(\frame_data_reg[57]_0 [0]));
  LUT6 #(
    .INIT(64'h6996CCCC9696CCCC)) 
    green_value__25_carry_i_4
       (.I0(\frame_data_reg_n_0_[66] ),
        .I1(green_value__25_carry__0_i_3_0[0]),
        .I2(\frame_data_reg_n_0_[57] ),
        .I3(green_value__25_carry[1]),
        .I4(\frame_data_reg[72]_0 ),
        .I5(\frame_data_reg_n_0_[65] ),
        .O(\frame_data_reg[66]_0 [2]));
  LUT4 #(
    .INIT(16'h96AA)) 
    green_value__25_carry_i_5
       (.I0(green_value__25_carry[1]),
        .I1(\frame_data_reg_n_0_[65] ),
        .I2(\frame_data_reg_n_0_[56] ),
        .I3(\frame_data_reg[72]_0 ),
        .O(\frame_data_reg[66]_0 [1]));
  LUT3 #(
    .INIT(8'h78)) 
    green_value__25_carry_i_6
       (.I0(\frame_data_reg_n_0_[64] ),
        .I1(\frame_data_reg[72]_0 ),
        .I2(green_value__25_carry[0]),
        .O(\frame_data_reg[66]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \hex_disp_vec[24]_i_1 
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .O(\frame_data_reg[11]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \hex_disp_vec[28]_i_1 
       (.I0(LED16_R_OBUF_inst_i_2_n_0),
        .I1(LED16_R_OBUF_inst_i_3_n_0),
        .I2(LED16_R_OBUF_inst_i_4_n_0),
        .I3(LED16_R_OBUF_inst_i_5_n_0),
        .I4(LED16_R_OBUF_inst_i_6_n_0),
        .O(\frame_data_reg[11]_1 [1]));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \red[2]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\red_reg[4] [0]),
        .I3(\red_reg[2] ),
        .I4(\red_reg[4]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \red[3]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\red_reg[4] [1]),
        .I3(\red_reg[3] ),
        .I4(\red_reg[4]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \red[4]_i_1 
       (.I0(stabled_out),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\red_reg[4] [2]),
        .I3(\red_reg[4]_1 ),
        .I4(\red_reg[4]_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \red[4]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\red[4]_i_4_n_0 ),
        .O(\frame_data_reg[113]_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \red[4]_i_4 
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\red[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \red[7]_i_4 
       (.I0(\frame_data_reg[113]_0 ),
        .I1(stabled_out),
        .O(\stabled_out_reg[0] ));
  LUT5 #(
    .INIT(32'h84484884)) 
    red_value__1_carry__0_i_1
       (.I0(\frame_data_reg_n_0_[105] ),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\frame_data_reg_n_0_[101] ),
        .I3(\frame_data_reg_n_0_[100] ),
        .I4(red_value__1_carry__0_i_8_n_0),
        .O(\frame_data_reg[105]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    red_value__1_carry__0_i_10
       (.I0(\frame_data_reg_n_0_[94] ),
        .I1(\frame_data_reg_n_0_[92] ),
        .I2(\frame_data_reg_n_0_[93] ),
        .I3(\frame_data_reg_n_0_[95] ),
        .O(red_value__1_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    red_value__1_carry__0_i_2
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[104] ),
        .O(\frame_data_reg[105]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    red_value__1_carry__0_i_3
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[92] ),
        .O(\frame_data_reg[105]_0 [0]));
  LUT6 #(
    .INIT(64'h82FFEBFF7D001400)) 
    red_value__1_carry__0_i_4
       (.I0(red_value__1_carry__0_i_8_n_0),
        .I1(\frame_data_reg_n_0_[100] ),
        .I2(\frame_data_reg_n_0_[101] ),
        .I3(\frame_data_reg[113]_0 ),
        .I4(\frame_data_reg_n_0_[105] ),
        .I5(red_value__1_carry__0_i_9_n_0),
        .O(\frame_data_reg[100]_0 [3]));
  LUT5 #(
    .INIT(32'hAAAAA66A)) 
    red_value__1_carry__0_i_5
       (.I0(\frame_data_reg[105]_0 [2]),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\frame_data_reg_n_0_[93] ),
        .I3(\frame_data_reg_n_0_[92] ),
        .I4(\frame_data_reg_n_0_[100] ),
        .O(\frame_data_reg[100]_0 [2]));
  LUT5 #(
    .INIT(32'h96690000)) 
    red_value__1_carry__0_i_6
       (.I0(\frame_data_reg_n_0_[100] ),
        .I1(\frame_data_reg_n_0_[93] ),
        .I2(\frame_data_reg_n_0_[92] ),
        .I3(\frame_data_reg_n_0_[104] ),
        .I4(\frame_data_reg[113]_0 ),
        .O(\frame_data_reg[100]_0 [1]));
  LUT3 #(
    .INIT(8'h90)) 
    red_value__1_carry__0_i_7
       (.I0(\frame_data_reg_n_0_[92] ),
        .I1(\frame_data_reg_n_0_[99] ),
        .I2(\frame_data_reg[113]_0 ),
        .O(\frame_data_reg[100]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    red_value__1_carry__0_i_8
       (.I0(\frame_data_reg_n_0_[92] ),
        .I1(\frame_data_reg_n_0_[93] ),
        .I2(\frame_data_reg_n_0_[94] ),
        .O(red_value__1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h4884848484484848)) 
    red_value__1_carry__0_i_9
       (.I0(\frame_data_reg_n_0_[106] ),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\frame_data_reg_n_0_[102] ),
        .I3(\frame_data_reg_n_0_[101] ),
        .I4(\frame_data_reg_n_0_[100] ),
        .I5(red_value__1_carry__0_i_10_n_0),
        .O(red_value__1_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    red_value__1_carry_i_1
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[98] ),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    red_value__1_carry_i_2
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[90] ),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    red_value__1_carry_i_3
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[89] ),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h60)) 
    red_value__1_carry_i_4
       (.I0(\frame_data_reg_n_0_[91] ),
        .I1(\frame_data_reg_n_0_[98] ),
        .I2(\frame_data_reg[113]_0 ),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h60)) 
    red_value__1_carry_i_5
       (.I0(\frame_data_reg_n_0_[90] ),
        .I1(\frame_data_reg_n_0_[97] ),
        .I2(\frame_data_reg[113]_0 ),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h60)) 
    red_value__1_carry_i_6
       (.I0(\frame_data_reg_n_0_[89] ),
        .I1(\frame_data_reg_n_0_[96] ),
        .I2(\frame_data_reg[113]_0 ),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    red_value__1_carry_i_7
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[88] ),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h9669CCCC)) 
    red_value__25_carry__0_i_1
       (.I0(\frame_data_reg_n_0_[104] ),
        .I1(red_value__25_carry__0_i_3_0[2]),
        .I2(\frame_data_reg_n_0_[108] ),
        .I3(\frame_data_reg_n_0_[99] ),
        .I4(\frame_data_reg[113]_0 ),
        .O(\frame_data_reg[104]_0 [1]));
  LUT4 #(
    .INIT(16'hC880)) 
    red_value__25_carry__0_i_2
       (.I0(\frame_data_reg_n_0_[97] ),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\frame_data_reg_n_0_[106] ),
        .I3(red_value__25_carry__0_i_3_0[0]),
        .O(\frame_data_reg[104]_0 [0]));
  LUT6 #(
    .INIT(64'h666A6AAAA666666A)) 
    red_value__25_carry__0_i_3
       (.I0(red_value__25_carry__0_i_6_n_0),
        .I1(\frame_data_reg[113]_0 ),
        .I2(\frame_data_reg_n_0_[99] ),
        .I3(\frame_data_reg_n_0_[104] ),
        .I4(red_value__25_carry__0_i_3_0[2]),
        .I5(\frame_data_reg_n_0_[108] ),
        .O(\frame_data_reg[99]_0 [2]));
  LUT5 #(
    .INIT(32'h56AA6AAA)) 
    red_value__25_carry__0_i_4
       (.I0(\frame_data_reg[104]_0 [1]),
        .I1(red_value__25_carry__0_i_3_0[1]),
        .I2(\frame_data_reg_n_0_[107] ),
        .I3(\frame_data_reg[113]_0 ),
        .I4(\frame_data_reg_n_0_[98] ),
        .O(\frame_data_reg[99]_0 [1]));
  LUT5 #(
    .INIT(32'h659A956A)) 
    red_value__25_carry__0_i_5
       (.I0(\frame_data_reg[104]_0 [0]),
        .I1(\frame_data_reg_n_0_[107] ),
        .I2(\frame_data_reg[113]_0 ),
        .I3(red_value__25_carry__0_i_3_0[1]),
        .I4(\frame_data_reg_n_0_[98] ),
        .O(\frame_data_reg[99]_0 [0]));
  LUT6 #(
    .INIT(64'h69969669CCCCCCCC)) 
    red_value__25_carry__0_i_6
       (.I0(\frame_data_reg_n_0_[105] ),
        .I1(red_value__25_carry__0_i_3_0[3]),
        .I2(\frame_data_reg_n_0_[109] ),
        .I3(\frame_data_reg_n_0_[108] ),
        .I4(\frame_data_reg_n_0_[100] ),
        .I5(\frame_data_reg[113]_0 ),
        .O(red_value__25_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9C6C)) 
    red_value__25_carry_i_1
       (.I0(\frame_data_reg_n_0_[97] ),
        .I1(red_value__25_carry__0_i_3_0[0]),
        .I2(\frame_data_reg[113]_0 ),
        .I3(\frame_data_reg_n_0_[106] ),
        .O(\frame_data_reg[97]_0 [2]));
  LUT3 #(
    .INIT(8'h78)) 
    red_value__25_carry_i_2
       (.I0(\frame_data_reg_n_0_[105] ),
        .I1(\frame_data_reg[113]_0 ),
        .I2(O[1]),
        .O(\frame_data_reg[97]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    red_value__25_carry_i_3
       (.I0(\frame_data_reg[113]_0 ),
        .I1(\frame_data_reg_n_0_[104] ),
        .O(\frame_data_reg[97]_0 [0]));
  LUT6 #(
    .INIT(64'h6996CCCC9696CCCC)) 
    red_value__25_carry_i_4
       (.I0(\frame_data_reg_n_0_[106] ),
        .I1(red_value__25_carry__0_i_3_0[0]),
        .I2(\frame_data_reg_n_0_[97] ),
        .I3(O[1]),
        .I4(\frame_data_reg[113]_0 ),
        .I5(\frame_data_reg_n_0_[105] ),
        .O(\frame_data_reg[106]_0 [2]));
  LUT4 #(
    .INIT(16'h96AA)) 
    red_value__25_carry_i_5
       (.I0(O[1]),
        .I1(\frame_data_reg_n_0_[105] ),
        .I2(\frame_data_reg_n_0_[96] ),
        .I3(\frame_data_reg[113]_0 ),
        .O(\frame_data_reg[106]_0 [1]));
  LUT3 #(
    .INIT(8'h78)) 
    red_value__25_carry_i_6
       (.I0(\frame_data_reg_n_0_[104] ),
        .I1(\frame_data_reg[113]_0 ),
        .I2(O[0]),
        .O(\frame_data_reg[106]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[100]_i_1 
       (.I0(p_0_in1_in[100]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[100]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[101]_i_1 
       (.I0(p_0_in1_in[101]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[101]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[102]_i_1 
       (.I0(p_0_in1_in[102]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[102]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[103]_i_1 
       (.I0(p_0_in1_in[103]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[103]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[104]_i_1 
       (.I0(p_0_in1_in[104]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[104]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[105]_i_1 
       (.I0(p_0_in1_in[105]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[105]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[106]_i_1 
       (.I0(p_0_in1_in[106]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[106]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[107]_i_1 
       (.I0(p_0_in1_in[107]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[107]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[108]_i_1 
       (.I0(p_0_in1_in[108]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[108]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[109]_i_1 
       (.I0(p_0_in1_in[109]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[109]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[10]_i_1 
       (.I0(p_0_in1_in[10]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[110]_i_1 
       (.I0(p_0_in1_in[110]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[110]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[111]_i_2 
       (.I0(p_0_in1_in[111]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[111]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555555555155FFFF)) 
    \temp_frame_reg[111]_i_3 
       (.I0(\FSM_sequential_pst_reg[1]_0 ),
        .I1(\byte_data_count_reg_n_0_[1] ),
        .I2(\byte_data_count_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\temp_frame_reg_reg[8]_1 ),
        .I5(\byte_data_count_reg[1]_1 ),
        .O(\byte_data_count_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[11]_i_1 
       (.I0(p_0_in1_in[11]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[12]_i_1 
       (.I0(p_0_in1_in[12]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[13]_i_1 
       (.I0(p_0_in1_in[13]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[14]_i_1 
       (.I0(p_0_in1_in[14]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[15]_i_1 
       (.I0(p_0_in1_in[15]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[16]_i_1 
       (.I0(p_0_in1_in[16]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[17]_i_1 
       (.I0(p_0_in1_in[17]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[18]_i_1 
       (.I0(p_0_in1_in[18]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[19]_i_1 
       (.I0(p_0_in1_in[19]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[20]_i_1 
       (.I0(p_0_in1_in[20]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[21]_i_1 
       (.I0(p_0_in1_in[21]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[22]_i_1 
       (.I0(p_0_in1_in[22]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[23]_i_1 
       (.I0(p_0_in1_in[23]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[24]_i_1 
       (.I0(p_0_in1_in[24]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[25]_i_1 
       (.I0(p_0_in1_in[25]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[26]_i_1 
       (.I0(p_0_in1_in[26]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[27]_i_1 
       (.I0(p_0_in1_in[27]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[28]_i_1 
       (.I0(p_0_in1_in[28]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[29]_i_1 
       (.I0(p_0_in1_in[29]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[30]_i_1 
       (.I0(p_0_in1_in[30]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[31]_i_1 
       (.I0(p_0_in1_in[31]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[32]_i_1 
       (.I0(p_0_in1_in[32]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[33]_i_1 
       (.I0(p_0_in1_in[33]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[34]_i_1 
       (.I0(p_0_in1_in[34]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[35]_i_1 
       (.I0(p_0_in1_in[35]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[36]_i_1 
       (.I0(p_0_in1_in[36]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[37]_i_1 
       (.I0(p_0_in1_in[37]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[38]_i_1 
       (.I0(p_0_in1_in[38]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[39]_i_1 
       (.I0(p_0_in1_in[39]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[40]_i_1 
       (.I0(p_0_in1_in[40]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[41]_i_1 
       (.I0(p_0_in1_in[41]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[42]_i_1 
       (.I0(p_0_in1_in[42]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[43]_i_1 
       (.I0(p_0_in1_in[43]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[44]_i_1 
       (.I0(p_0_in1_in[44]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[45]_i_1 
       (.I0(p_0_in1_in[45]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[46]_i_1 
       (.I0(p_0_in1_in[46]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[47]_i_1 
       (.I0(p_0_in1_in[47]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[48]_i_1 
       (.I0(p_0_in1_in[48]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[49]_i_1 
       (.I0(p_0_in1_in[49]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[50]_i_1 
       (.I0(p_0_in1_in[50]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[51]_i_1 
       (.I0(p_0_in1_in[51]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[52]_i_1 
       (.I0(p_0_in1_in[52]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[53]_i_1 
       (.I0(p_0_in1_in[53]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[54]_i_1 
       (.I0(p_0_in1_in[54]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[55]_i_1 
       (.I0(p_0_in1_in[55]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[56]_i_1 
       (.I0(p_0_in1_in[56]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[57]_i_1 
       (.I0(p_0_in1_in[57]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[58]_i_1 
       (.I0(p_0_in1_in[58]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[59]_i_1 
       (.I0(p_0_in1_in[59]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[60]_i_1 
       (.I0(p_0_in1_in[60]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[61]_i_1 
       (.I0(p_0_in1_in[61]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[62]_i_1 
       (.I0(p_0_in1_in[62]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[63]_i_1 
       (.I0(p_0_in1_in[63]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[64]_i_1 
       (.I0(p_0_in1_in[64]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[64]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[65]_i_1 
       (.I0(p_0_in1_in[65]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[66]_i_1 
       (.I0(p_0_in1_in[66]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[66]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[67]_i_1 
       (.I0(p_0_in1_in[67]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[67]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[68]_i_1 
       (.I0(p_0_in1_in[68]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[68]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[69]_i_1 
       (.I0(p_0_in1_in[69]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[69]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[70]_i_1 
       (.I0(p_0_in1_in[70]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[70]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[71]_i_1 
       (.I0(p_0_in1_in[71]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[72]_i_1 
       (.I0(p_0_in1_in[72]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[73]_i_1 
       (.I0(p_0_in1_in[73]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[74]_i_1 
       (.I0(p_0_in1_in[74]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[74]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[75]_i_1 
       (.I0(p_0_in1_in[75]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[76]_i_1 
       (.I0(p_0_in1_in[76]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[77]_i_1 
       (.I0(p_0_in1_in[77]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[77]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[78]_i_1 
       (.I0(p_0_in1_in[78]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[78]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[79]_i_1 
       (.I0(p_0_in1_in[79]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[80]_i_1 
       (.I0(p_0_in1_in[80]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[80]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[81]_i_1 
       (.I0(p_0_in1_in[81]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[81]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[82]_i_1 
       (.I0(p_0_in1_in[82]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[82]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[83]_i_1 
       (.I0(p_0_in1_in[83]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[83]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[84]_i_1 
       (.I0(p_0_in1_in[84]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[84]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[85]_i_1 
       (.I0(p_0_in1_in[85]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[85]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[86]_i_1 
       (.I0(p_0_in1_in[86]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[86]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[87]_i_1 
       (.I0(p_0_in1_in[87]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[87]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[88]_i_1 
       (.I0(p_0_in1_in[88]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[88]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[89]_i_1 
       (.I0(p_0_in1_in[89]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[89]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[8]_i_1 
       (.I0(p_0_in1_in[8]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[90]_i_1 
       (.I0(p_0_in1_in[90]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[90]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[91]_i_1 
       (.I0(p_0_in1_in[91]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[91]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[92]_i_1 
       (.I0(p_0_in1_in[92]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[92]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[93]_i_1 
       (.I0(p_0_in1_in[93]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[93]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[94]_i_1 
       (.I0(p_0_in1_in[94]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[94]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[95]_i_1 
       (.I0(p_0_in1_in[95]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[95]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[96]_i_1 
       (.I0(p_0_in1_in[96]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[96]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[97]_i_1 
       (.I0(p_0_in1_in[97]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[97]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[98]_i_1 
       (.I0(p_0_in1_in[98]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[98]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[99]_i_1 
       (.I0(p_0_in1_in[99]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[99]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8AAA8)) 
    \temp_frame_reg[9]_i_1 
       (.I0(p_0_in1_in[9]),
        .I1(\FSM_sequential_pst_reg[0]_2 ),
        .I2(\byte_data_count_reg[0]_0 ),
        .I3(\byte_data_count_reg[1]_0 ),
        .I4(Q[2]),
        .I5(\temp_frame_reg_reg[8]_0 ),
        .O(\temp_frame_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [0]),
        .Q(p_0_in1_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[100]_i_1_n_0 ),
        .Q(p_0_in1_in[108]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[101]_i_1_n_0 ),
        .Q(p_0_in1_in[109]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[102]_i_1_n_0 ),
        .Q(p_0_in1_in[110]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[103]_i_1_n_0 ),
        .Q(p_0_in1_in[111]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[104]_i_1_n_0 ),
        .Q(p_0_in1_in[112]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[105]_i_1_n_0 ),
        .Q(p_0_in1_in[113]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[106]_i_1_n_0 ),
        .Q(p_0_in1_in[114]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[107]_i_1_n_0 ),
        .Q(p_0_in1_in[115]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[108]_i_1_n_0 ),
        .Q(p_0_in1_in[116]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[109]_i_1_n_0 ),
        .Q(p_0_in1_in[117]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[10]_i_1_n_0 ),
        .Q(p_0_in1_in[18]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[110]_i_1_n_0 ),
        .Q(p_0_in1_in[118]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[111]_i_2_n_0 ),
        .Q(p_0_in1_in[119]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[11]_i_1_n_0 ),
        .Q(p_0_in1_in[19]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[12]_i_1_n_0 ),
        .Q(p_0_in1_in[20]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[13]_i_1_n_0 ),
        .Q(p_0_in1_in[21]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[14]_i_1_n_0 ),
        .Q(p_0_in1_in[22]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[15]_i_1_n_0 ),
        .Q(p_0_in1_in[23]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[16]_i_1_n_0 ),
        .Q(p_0_in1_in[24]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[17]_i_1_n_0 ),
        .Q(p_0_in1_in[25]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[18]_i_1_n_0 ),
        .Q(p_0_in1_in[26]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[19]_i_1_n_0 ),
        .Q(p_0_in1_in[27]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [1]),
        .Q(p_0_in1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[20]_i_1_n_0 ),
        .Q(p_0_in1_in[28]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[21]_i_1_n_0 ),
        .Q(p_0_in1_in[29]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[22]_i_1_n_0 ),
        .Q(p_0_in1_in[30]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[23]_i_1_n_0 ),
        .Q(p_0_in1_in[31]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[24]_i_1_n_0 ),
        .Q(p_0_in1_in[32]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[25]_i_1_n_0 ),
        .Q(p_0_in1_in[33]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[26]_i_1_n_0 ),
        .Q(p_0_in1_in[34]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[27]_i_1_n_0 ),
        .Q(p_0_in1_in[35]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[28]_i_1_n_0 ),
        .Q(p_0_in1_in[36]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[29]_i_1_n_0 ),
        .Q(p_0_in1_in[37]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [2]),
        .Q(p_0_in1_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[30]_i_1_n_0 ),
        .Q(p_0_in1_in[38]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[31]_i_1_n_0 ),
        .Q(p_0_in1_in[39]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[32]_i_1_n_0 ),
        .Q(p_0_in1_in[40]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[33]_i_1_n_0 ),
        .Q(p_0_in1_in[41]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[34]_i_1_n_0 ),
        .Q(p_0_in1_in[42]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[35]_i_1_n_0 ),
        .Q(p_0_in1_in[43]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[36]_i_1_n_0 ),
        .Q(p_0_in1_in[44]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[37]_i_1_n_0 ),
        .Q(p_0_in1_in[45]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[38]_i_1_n_0 ),
        .Q(p_0_in1_in[46]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[39]_i_1_n_0 ),
        .Q(p_0_in1_in[47]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [3]),
        .Q(p_0_in1_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[40]_i_1_n_0 ),
        .Q(p_0_in1_in[48]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[41]_i_1_n_0 ),
        .Q(p_0_in1_in[49]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[42]_i_1_n_0 ),
        .Q(p_0_in1_in[50]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[43]_i_1_n_0 ),
        .Q(p_0_in1_in[51]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[44]_i_1_n_0 ),
        .Q(p_0_in1_in[52]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[45]_i_1_n_0 ),
        .Q(p_0_in1_in[53]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[46]_i_1_n_0 ),
        .Q(p_0_in1_in[54]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[47]_i_1_n_0 ),
        .Q(p_0_in1_in[55]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[48]_i_1_n_0 ),
        .Q(p_0_in1_in[56]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[49]_i_1_n_0 ),
        .Q(p_0_in1_in[57]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [4]),
        .Q(p_0_in1_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[50]_i_1_n_0 ),
        .Q(p_0_in1_in[58]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[51]_i_1_n_0 ),
        .Q(p_0_in1_in[59]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[52]_i_1_n_0 ),
        .Q(p_0_in1_in[60]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[53]_i_1_n_0 ),
        .Q(p_0_in1_in[61]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[54]_i_1_n_0 ),
        .Q(p_0_in1_in[62]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[55]_i_1_n_0 ),
        .Q(p_0_in1_in[63]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[56]_i_1_n_0 ),
        .Q(p_0_in1_in[64]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[57]_i_1_n_0 ),
        .Q(p_0_in1_in[65]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[58]_i_1_n_0 ),
        .Q(p_0_in1_in[66]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[59]_i_1_n_0 ),
        .Q(p_0_in1_in[67]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [5]),
        .Q(p_0_in1_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[60]_i_1_n_0 ),
        .Q(p_0_in1_in[68]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[61]_i_1_n_0 ),
        .Q(p_0_in1_in[69]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[62]_i_1_n_0 ),
        .Q(p_0_in1_in[70]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[63]_i_1_n_0 ),
        .Q(p_0_in1_in[71]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[64]_i_1_n_0 ),
        .Q(p_0_in1_in[72]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[65]_i_1_n_0 ),
        .Q(p_0_in1_in[73]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[66]_i_1_n_0 ),
        .Q(p_0_in1_in[74]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[67]_i_1_n_0 ),
        .Q(p_0_in1_in[75]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[68]_i_1_n_0 ),
        .Q(p_0_in1_in[76]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[69]_i_1_n_0 ),
        .Q(p_0_in1_in[77]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [6]),
        .Q(p_0_in1_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[70]_i_1_n_0 ),
        .Q(p_0_in1_in[78]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[71]_i_1_n_0 ),
        .Q(p_0_in1_in[79]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[72]_i_1_n_0 ),
        .Q(p_0_in1_in[80]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[73]_i_1_n_0 ),
        .Q(p_0_in1_in[81]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[74]_i_1_n_0 ),
        .Q(p_0_in1_in[82]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[75]_i_1_n_0 ),
        .Q(p_0_in1_in[83]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[76]_i_1_n_0 ),
        .Q(p_0_in1_in[84]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[77]_i_1_n_0 ),
        .Q(p_0_in1_in[85]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[78]_i_1_n_0 ),
        .Q(p_0_in1_in[86]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[79]_i_1_n_0 ),
        .Q(p_0_in1_in[87]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg_reg[7]_0 [7]),
        .Q(p_0_in1_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[80]_i_1_n_0 ),
        .Q(p_0_in1_in[88]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[81]_i_1_n_0 ),
        .Q(p_0_in1_in[89]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[82]_i_1_n_0 ),
        .Q(p_0_in1_in[90]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[83]_i_1_n_0 ),
        .Q(p_0_in1_in[91]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[84]_i_1_n_0 ),
        .Q(p_0_in1_in[92]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[85]_i_1_n_0 ),
        .Q(p_0_in1_in[93]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[86]_i_1_n_0 ),
        .Q(p_0_in1_in[94]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[87]_i_1_n_0 ),
        .Q(p_0_in1_in[95]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[88]_i_1_n_0 ),
        .Q(p_0_in1_in[96]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[89]_i_1_n_0 ),
        .Q(p_0_in1_in[97]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[8]_i_1_n_0 ),
        .Q(p_0_in1_in[16]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[90]_i_1_n_0 ),
        .Q(p_0_in1_in[98]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[91]_i_1_n_0 ),
        .Q(p_0_in1_in[99]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[92]_i_1_n_0 ),
        .Q(p_0_in1_in[100]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[93]_i_1_n_0 ),
        .Q(p_0_in1_in[101]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[94]_i_1_n_0 ),
        .Q(p_0_in1_in[102]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[95]_i_1_n_0 ),
        .Q(p_0_in1_in[103]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[96]_i_1_n_0 ),
        .Q(p_0_in1_in[104]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[97]_i_1_n_0 ),
        .Q(p_0_in1_in[105]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[98]_i_1_n_0 ),
        .Q(p_0_in1_in[106]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[99]_i_1_n_0 ),
        .Q(p_0_in1_in[107]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_frame_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_n),
        .D(\temp_frame_reg[9]_i_1_n_0 ),
        .Q(p_0_in1_in[17]));
  LUT1 #(
    .INIT(2'h1)) 
    temp_i_1
       (.I0(rst_n_IBUF),
        .O(rst_n));
endmodule

module pwm
   (\RGB[0] ,
    Q,
    \red_reg[6] ,
    \red_reg[6]_0 ,
    clk_IBUF_BUFG,
    pwm_out_reg_0,
    DI,
    S,
    pwm_out0_carry_i_1_0,
    pwm_out0_carry__0_i_1);
  output \RGB[0] ;
  output [1:0]Q;
  output \red_reg[6] ;
  output \red_reg[6]_0 ;
  input clk_IBUF_BUFG;
  input pwm_out_reg_0;
  input [0:0]DI;
  input [0:0]S;
  input [7:0]pwm_out0_carry_i_1_0;
  input pwm_out0_carry__0_i_1;

  wire [0:0]DI;
  wire [1:0]Q;
  wire \RGB[0] ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire [9:1]p_0_in__0;
  wire \pwm_counter[0]_i_1_n_0 ;
  wire \pwm_counter[9]_i_2_n_0 ;
  wire [7:0]pwm_counter_reg;
  wire pwm_out0_carry__0_i_1;
  wire pwm_out0_carry_i_10_n_0;
  wire pwm_out0_carry_i_11_n_0;
  wire pwm_out0_carry_i_12_n_0;
  wire pwm_out0_carry_i_13_n_0;
  wire pwm_out0_carry_i_14_n_0;
  wire pwm_out0_carry_i_15_n_0;
  wire pwm_out0_carry_i_16_n_0;
  wire pwm_out0_carry_i_17_n_0;
  wire pwm_out0_carry_i_18_n_0;
  wire pwm_out0_carry_i_19_n_0;
  wire [7:0]pwm_out0_carry_i_1_0;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_20_n_0;
  wire pwm_out0_carry_i_21_n_0;
  wire pwm_out0_carry_i_22_n_0;
  wire pwm_out0_carry_i_23_n_0;
  wire pwm_out0_carry_i_24_n_0;
  wire pwm_out0_carry_i_25_n_0;
  wire pwm_out0_carry_i_26_n_0;
  wire pwm_out0_carry_i_27_n_0;
  wire pwm_out0_carry_i_28_n_0;
  wire pwm_out0_carry_i_29_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_30_n_0;
  wire pwm_out0_carry_i_31_n_0;
  wire pwm_out0_carry_i_32_n_0;
  wire pwm_out0_carry_i_33_n_0;
  wire pwm_out0_carry_i_34_n_0;
  wire pwm_out0_carry_i_35_n_0;
  wire pwm_out0_carry_i_36_n_0;
  wire pwm_out0_carry_i_37_n_0;
  wire pwm_out0_carry_i_38_n_0;
  wire pwm_out0_carry_i_39_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_40_n_0;
  wire pwm_out0_carry_i_41_n_0;
  wire pwm_out0_carry_i_42_n_0;
  wire pwm_out0_carry_i_43_n_0;
  wire pwm_out0_carry_i_44_n_0;
  wire pwm_out0_carry_i_45_n_0;
  wire pwm_out0_carry_i_46_n_0;
  wire pwm_out0_carry_i_47_n_0;
  wire pwm_out0_carry_i_48_n_0;
  wire pwm_out0_carry_i_49_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_50_n_0;
  wire pwm_out0_carry_i_51_n_0;
  wire pwm_out0_carry_i_52_n_0;
  wire pwm_out0_carry_i_53_n_0;
  wire pwm_out0_carry_i_54_n_0;
  wire pwm_out0_carry_i_55_n_0;
  wire pwm_out0_carry_i_56_n_0;
  wire pwm_out0_carry_i_57_n_0;
  wire pwm_out0_carry_i_58_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_i_7_n_0;
  wire pwm_out0_carry_i_8_n_0;
  wire pwm_out0_carry_i_9_n_0;
  wire pwm_out0_carry_n_0;
  wire pwm_out0_carry_n_1;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire pwm_out_reg_0;
  wire \red_reg[6] ;
  wire \red_reg[6]_0 ;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pwm_out0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \pwm_counter[0]_i_1 
       (.I0(pwm_counter_reg[0]),
        .O(\pwm_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_counter[1]_i_1 
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_counter_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_counter[2]_i_1 
       (.I0(pwm_counter_reg[2]),
        .I1(pwm_counter_reg[0]),
        .I2(pwm_counter_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_counter[3]_i_1 
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_counter_reg[1]),
        .I2(pwm_counter_reg[0]),
        .I3(pwm_counter_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_counter[4]_i_1 
       (.I0(pwm_counter_reg[4]),
        .I1(pwm_counter_reg[2]),
        .I2(pwm_counter_reg[0]),
        .I3(pwm_counter_reg[1]),
        .I4(pwm_counter_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pwm_counter[5]_i_1 
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_counter_reg[3]),
        .I2(pwm_counter_reg[1]),
        .I3(pwm_counter_reg[0]),
        .I4(pwm_counter_reg[2]),
        .I5(pwm_counter_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_counter[6]_i_1 
       (.I0(pwm_counter_reg[6]),
        .I1(\pwm_counter[9]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_counter[7]_i_1 
       (.I0(pwm_counter_reg[7]),
        .I1(\pwm_counter[9]_i_2_n_0 ),
        .I2(pwm_counter_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_counter[8]_i_1 
       (.I0(Q[0]),
        .I1(pwm_counter_reg[6]),
        .I2(\pwm_counter[9]_i_2_n_0 ),
        .I3(pwm_counter_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_counter[9]_i_1 
       (.I0(Q[1]),
        .I1(pwm_counter_reg[7]),
        .I2(\pwm_counter[9]_i_2_n_0 ),
        .I3(pwm_counter_reg[6]),
        .I4(Q[0]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_counter[9]_i_2 
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_counter_reg[3]),
        .I2(pwm_counter_reg[1]),
        .I3(pwm_counter_reg[0]),
        .I4(pwm_counter_reg[2]),
        .I5(pwm_counter_reg[4]),
        .O(\pwm_counter[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(\pwm_counter[0]_i_1_n_0 ),
        .Q(pwm_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[1]),
        .Q(pwm_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[2]),
        .Q(pwm_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[3]),
        .Q(pwm_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[4]),
        .Q(pwm_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[5]),
        .Q(pwm_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[6]),
        .Q(pwm_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[7]),
        .Q(pwm_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[8]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__0[9]),
        .Q(Q[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0,pwm_out0_carry_i_4_n_0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_5_n_0,pwm_out0_carry_i_6_n_0,pwm_out0_carry_i_7_n_0,pwm_out0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out0_carry__0
       (.CI(pwm_out0_carry_n_0),
        .CO({NLW_pwm_out0_carry__0_CO_UNCONNECTED[3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O(NLW_pwm_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,S}));
  LUT6 #(
    .INIT(64'hB5F5B5F5F5F0F050)) 
    pwm_out0_carry__0_i_3
       (.I0(pwm_out0_carry_i_1_0[6]),
        .I1(pwm_out0_carry_i_1_0[2]),
        .I2(pwm_out0_carry_i_1_0[5]),
        .I3(pwm_out0_carry_i_1_0[3]),
        .I4(pwm_out0_carry__0_i_1),
        .I5(pwm_out0_carry_i_1_0[4]),
        .O(\red_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    pwm_out0_carry__0_i_4
       (.I0(pwm_out0_carry_i_1_0[6]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[2]),
        .I3(pwm_out0_carry_i_1_0[3]),
        .I4(pwm_out0_carry_i_1_0[5]),
        .I5(pwm_out0_carry_i_1_0[7]),
        .O(\red_reg[6] ));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_1
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_out0_carry_i_9_n_0),
        .I2(pwm_out0_carry_i_10_n_0),
        .I3(pwm_counter_reg[6]),
        .O(pwm_out0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    pwm_out0_carry_i_10
       (.I0(pwm_out0_carry_i_20_n_0),
        .I1(pwm_out0_carry_i_21_n_0),
        .I2(pwm_out0_carry_i_1_0[7]),
        .I3(pwm_out0_carry_i_22_n_0),
        .I4(pwm_out0_carry_i_1_0[6]),
        .O(pwm_out0_carry_i_10_n_0));
  MUXF8 pwm_out0_carry_i_11
       (.I0(pwm_out0_carry_i_23_n_0),
        .I1(pwm_out0_carry_i_24_n_0),
        .O(pwm_out0_carry_i_11_n_0),
        .S(pwm_out0_carry_i_1_0[7]));
  MUXF8 pwm_out0_carry_i_12
       (.I0(pwm_out0_carry_i_25_n_0),
        .I1(pwm_out0_carry_i_26_n_0),
        .O(pwm_out0_carry_i_12_n_0),
        .S(pwm_out0_carry_i_1_0[7]));
  MUXF8 pwm_out0_carry_i_13
       (.I0(pwm_out0_carry_i_27_n_0),
        .I1(pwm_out0_carry_i_28_n_0),
        .O(pwm_out0_carry_i_13_n_0),
        .S(pwm_out0_carry_i_1_0[7]));
  MUXF8 pwm_out0_carry_i_14
       (.I0(pwm_out0_carry_i_29_n_0),
        .I1(pwm_out0_carry_i_30_n_0),
        .O(pwm_out0_carry_i_14_n_0),
        .S(pwm_out0_carry_i_1_0[7]));
  MUXF8 pwm_out0_carry_i_15
       (.I0(pwm_out0_carry_i_31_n_0),
        .I1(pwm_out0_carry_i_32_n_0),
        .O(pwm_out0_carry_i_15_n_0),
        .S(pwm_out0_carry_i_1_0[7]));
  MUXF8 pwm_out0_carry_i_16
       (.I0(pwm_out0_carry_i_33_n_0),
        .I1(pwm_out0_carry_i_34_n_0),
        .O(pwm_out0_carry_i_16_n_0),
        .S(pwm_out0_carry_i_1_0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    pwm_out0_carry_i_17
       (.I0(pwm_out0_carry_i_1_0[0]),
        .I1(pwm_out0_carry_i_1_0[2]),
        .I2(pwm_out0_carry_i_1_0[1]),
        .I3(pwm_out0_carry_i_1_0[3]),
        .I4(pwm_out0_carry_i_1_0[5]),
        .I5(pwm_out0_carry_i_1_0[4]),
        .O(pwm_out0_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h22AA22AABB99B99D)) 
    pwm_out0_carry_i_18
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[3]),
        .I2(pwm_out0_carry_i_1_0[1]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[4]),
        .O(pwm_out0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    pwm_out0_carry_i_19
       (.I0(pwm_out0_carry_i_1_0[4]),
        .I1(pwm_out0_carry_i_1_0[2]),
        .I2(pwm_out0_carry_i_1_0[0]),
        .I3(pwm_out0_carry_i_1_0[1]),
        .I4(pwm_out0_carry_i_1_0[3]),
        .I5(pwm_out0_carry_i_1_0[5]),
        .O(pwm_out0_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_2
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_out0_carry_i_11_n_0),
        .I2(pwm_out0_carry_i_12_n_0),
        .I3(pwm_counter_reg[4]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFED05000022)) 
    pwm_out0_carry_i_20
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[0]),
        .I2(pwm_out0_carry_i_1_0[4]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[3]),
        .O(pwm_out0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h44CC44CD99BB9BB3)) 
    pwm_out0_carry_i_21
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[0]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[3]),
        .O(pwm_out0_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDD54464646)) 
    pwm_out0_carry_i_22
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[3]),
        .I2(pwm_out0_carry_i_1_0[2]),
        .I3(pwm_out0_carry_i_1_0[1]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[4]),
        .O(pwm_out0_carry_i_22_n_0));
  MUXF7 pwm_out0_carry_i_23
       (.I0(pwm_out0_carry_i_35_n_0),
        .I1(pwm_out0_carry_i_36_n_0),
        .O(pwm_out0_carry_i_23_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_24
       (.I0(pwm_out0_carry_i_37_n_0),
        .I1(pwm_out0_carry_i_38_n_0),
        .O(pwm_out0_carry_i_24_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_25
       (.I0(pwm_out0_carry_i_39_n_0),
        .I1(pwm_out0_carry_i_40_n_0),
        .O(pwm_out0_carry_i_25_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_26
       (.I0(pwm_out0_carry_i_41_n_0),
        .I1(pwm_out0_carry_i_42_n_0),
        .O(pwm_out0_carry_i_26_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_27
       (.I0(pwm_out0_carry_i_43_n_0),
        .I1(pwm_out0_carry_i_44_n_0),
        .O(pwm_out0_carry_i_27_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_28
       (.I0(pwm_out0_carry_i_45_n_0),
        .I1(pwm_out0_carry_i_46_n_0),
        .O(pwm_out0_carry_i_28_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_29
       (.I0(pwm_out0_carry_i_47_n_0),
        .I1(pwm_out0_carry_i_48_n_0),
        .O(pwm_out0_carry_i_29_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_3
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_out0_carry_i_13_n_0),
        .I2(pwm_out0_carry_i_14_n_0),
        .I3(pwm_counter_reg[2]),
        .O(pwm_out0_carry_i_3_n_0));
  MUXF7 pwm_out0_carry_i_30
       (.I0(pwm_out0_carry_i_49_n_0),
        .I1(pwm_out0_carry_i_50_n_0),
        .O(pwm_out0_carry_i_30_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_31
       (.I0(pwm_out0_carry_i_51_n_0),
        .I1(pwm_out0_carry_i_52_n_0),
        .O(pwm_out0_carry_i_31_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_32
       (.I0(pwm_out0_carry_i_53_n_0),
        .I1(pwm_out0_carry_i_54_n_0),
        .O(pwm_out0_carry_i_32_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_33
       (.I0(pwm_out0_carry_i_55_n_0),
        .I1(pwm_out0_carry_i_56_n_0),
        .O(pwm_out0_carry_i_33_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  MUXF7 pwm_out0_carry_i_34
       (.I0(pwm_out0_carry_i_57_n_0),
        .I1(pwm_out0_carry_i_58_n_0),
        .O(pwm_out0_carry_i_34_n_0),
        .S(pwm_out0_carry_i_1_0[6]));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    pwm_out0_carry_i_35
       (.I0(pwm_out0_carry_i_1_0[4]),
        .I1(pwm_out0_carry_i_1_0[2]),
        .I2(pwm_out0_carry_i_1_0[1]),
        .I3(pwm_out0_carry_i_1_0[3]),
        .I4(pwm_out0_carry_i_1_0[5]),
        .O(pwm_out0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h66444444C99B99BB)) 
    pwm_out0_carry_i_36
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[0]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[3]),
        .O(pwm_out0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h6DA725872587279A)) 
    pwm_out0_carry_i_37
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[0]),
        .O(pwm_out0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hFEFE1101FF95016A)) 
    pwm_out0_carry_i_38
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h8981FFFE00000000)) 
    pwm_out0_carry_i_39
       (.I0(pwm_out0_carry_i_1_0[3]),
        .I1(pwm_out0_carry_i_1_0[2]),
        .I2(pwm_out0_carry_i_1_0[1]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[4]),
        .I5(pwm_out0_carry_i_1_0[5]),
        .O(pwm_out0_carry_i_39_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_4
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_out0_carry_i_15_n_0),
        .I2(pwm_out0_carry_i_16_n_0),
        .I3(pwm_counter_reg[0]),
        .O(pwm_out0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hD8ED2527CD2D2707)) 
    pwm_out0_carry_i_40
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[1]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[0]),
        .O(pwm_out0_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'h9D7D828A7562883D)) 
    pwm_out0_carry_i_41
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[3]),
        .I2(pwm_out0_carry_i_1_0[4]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hFEEE949411106B6B)) 
    pwm_out0_carry_i_42
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_42_n_0));
  LUT6 #(
    .INIT(64'h555CCCEE88888802)) 
    pwm_out0_carry_i_43
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[3]),
        .I2(pwm_out0_carry_i_1_0[0]),
        .I3(pwm_out0_carry_i_1_0[1]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[4]),
        .O(pwm_out0_carry_i_43_n_0));
  LUT6 #(
    .INIT(64'h8A1F35F5DD4B0A22)) 
    pwm_out0_carry_i_44
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[2]),
        .O(pwm_out0_carry_i_44_n_0));
  LUT6 #(
    .INIT(64'h1F75F408E0821B77)) 
    pwm_out0_carry_i_45
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[3]),
        .I2(pwm_out0_carry_i_1_0[2]),
        .I3(pwm_out0_carry_i_1_0[4]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'h99856A7A85847B7B)) 
    pwm_out0_carry_i_46
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[1]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[2]),
        .O(pwm_out0_carry_i_46_n_0));
  LUT6 #(
    .INIT(64'h57F5800AA9A05F02)) 
    pwm_out0_carry_i_47
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[0]),
        .I2(pwm_out0_carry_i_1_0[1]),
        .I3(pwm_out0_carry_i_1_0[4]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[3]),
        .O(pwm_out0_carry_i_47_n_0));
  LUT6 #(
    .INIT(64'h4895289E3FC0D569)) 
    pwm_out0_carry_i_48
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'hB0E4802AE5B37F55)) 
    pwm_out0_carry_i_49
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[3]),
        .I2(pwm_out0_carry_i_1_0[1]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[4]),
        .I5(pwm_out0_carry_i_1_0[0]),
        .O(pwm_out0_carry_i_49_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_5
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_out0_carry_i_9_n_0),
        .I2(pwm_out0_carry_i_10_n_0),
        .I3(pwm_counter_reg[6]),
        .O(pwm_out0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h94984958C8C95C54)) 
    pwm_out0_carry_i_50
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_50_n_0));
  LUT6 #(
    .INIT(64'hC90923AE5CD4FC3A)) 
    pwm_out0_carry_i_51
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[2]),
        .O(pwm_out0_carry_i_51_n_0));
  LUT6 #(
    .INIT(64'h2288559FE843B43C)) 
    pwm_out0_carry_i_52
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[1]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[2]),
        .O(pwm_out0_carry_i_52_n_0));
  LUT6 #(
    .INIT(64'h45EE17BCA2288888)) 
    pwm_out0_carry_i_53
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[1]),
        .I2(pwm_out0_carry_i_1_0[2]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[3]),
        .I5(pwm_out0_carry_i_1_0[4]),
        .O(pwm_out0_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'hF4F9B7A62B36737B)) 
    pwm_out0_carry_i_54
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_54_n_0));
  LUT6 #(
    .INIT(64'hBEC0F7D9620D3846)) 
    pwm_out0_carry_i_55
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_55_n_0));
  LUT6 #(
    .INIT(64'hECCE0260E9D278D0)) 
    pwm_out0_carry_i_56
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[2]),
        .I3(pwm_out0_carry_i_1_0[0]),
        .I4(pwm_out0_carry_i_1_0[1]),
        .I5(pwm_out0_carry_i_1_0[3]),
        .O(pwm_out0_carry_i_56_n_0));
  LUT6 #(
    .INIT(64'hEF685AA8C8F8121D)) 
    pwm_out0_carry_i_57
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[0]),
        .I2(pwm_out0_carry_i_1_0[4]),
        .I3(pwm_out0_carry_i_1_0[3]),
        .I4(pwm_out0_carry_i_1_0[2]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_57_n_0));
  LUT6 #(
    .INIT(64'hE6D87A449580091F)) 
    pwm_out0_carry_i_58
       (.I0(pwm_out0_carry_i_1_0[5]),
        .I1(pwm_out0_carry_i_1_0[4]),
        .I2(pwm_out0_carry_i_1_0[3]),
        .I3(pwm_out0_carry_i_1_0[2]),
        .I4(pwm_out0_carry_i_1_0[0]),
        .I5(pwm_out0_carry_i_1_0[1]),
        .O(pwm_out0_carry_i_58_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_6
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_out0_carry_i_11_n_0),
        .I2(pwm_out0_carry_i_12_n_0),
        .I3(pwm_counter_reg[4]),
        .O(pwm_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_7
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_out0_carry_i_13_n_0),
        .I2(pwm_out0_carry_i_14_n_0),
        .I3(pwm_counter_reg[2]),
        .O(pwm_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_8
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_out0_carry_i_15_n_0),
        .I2(pwm_out0_carry_i_16_n_0),
        .I3(pwm_counter_reg[0]),
        .O(pwm_out0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    pwm_out0_carry_i_9
       (.I0(pwm_out0_carry_i_17_n_0),
        .I1(pwm_out0_carry_i_18_n_0),
        .I2(pwm_out0_carry_i_1_0[7]),
        .I3(pwm_out0_carry_i_19_n_0),
        .I4(pwm_out0_carry_i_1_0[6]),
        .O(pwm_out0_carry_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in),
        .Q(\RGB[0] ));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module pwm_4
   (\RGB[1] ,
    Q,
    \green_reg[6] ,
    \green_reg[6]_0 ,
    clk_IBUF_BUFG,
    pwm_out_reg_0,
    DI,
    S,
    pwm_out0_carry_i_1__0_0,
    pwm_out0_carry__0_i_1__0);
  output \RGB[1] ;
  output [1:0]Q;
  output \green_reg[6] ;
  output \green_reg[6]_0 ;
  input clk_IBUF_BUFG;
  input pwm_out_reg_0;
  input [0:0]DI;
  input [0:0]S;
  input [7:0]pwm_out0_carry_i_1__0_0;
  input pwm_out0_carry__0_i_1__0;

  wire [0:0]DI;
  wire [1:0]Q;
  wire \RGB[1] ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;
  wire \green_reg[6] ;
  wire \green_reg[6]_0 ;
  wire p_0_in;
  wire [9:1]p_0_in__1;
  wire \pwm_counter[0]_i_1__0_n_0 ;
  wire \pwm_counter[9]_i_2__0_n_0 ;
  wire [7:0]pwm_counter_reg;
  wire pwm_out0_carry__0_i_1__0;
  wire pwm_out0_carry_i_10_n_0;
  wire pwm_out0_carry_i_11_n_0;
  wire pwm_out0_carry_i_12_n_0;
  wire pwm_out0_carry_i_13_n_0;
  wire pwm_out0_carry_i_14_n_0;
  wire pwm_out0_carry_i_15_n_0;
  wire pwm_out0_carry_i_16_n_0;
  wire pwm_out0_carry_i_17_n_0;
  wire pwm_out0_carry_i_18_n_0;
  wire pwm_out0_carry_i_19_n_0;
  wire [7:0]pwm_out0_carry_i_1__0_0;
  wire pwm_out0_carry_i_1__0_n_0;
  wire pwm_out0_carry_i_20_n_0;
  wire pwm_out0_carry_i_21_n_0;
  wire pwm_out0_carry_i_22_n_0;
  wire pwm_out0_carry_i_23_n_0;
  wire pwm_out0_carry_i_24_n_0;
  wire pwm_out0_carry_i_25_n_0;
  wire pwm_out0_carry_i_26_n_0;
  wire pwm_out0_carry_i_27_n_0;
  wire pwm_out0_carry_i_28_n_0;
  wire pwm_out0_carry_i_29_n_0;
  wire pwm_out0_carry_i_2__0_n_0;
  wire pwm_out0_carry_i_30_n_0;
  wire pwm_out0_carry_i_31_n_0;
  wire pwm_out0_carry_i_32_n_0;
  wire pwm_out0_carry_i_33_n_0;
  wire pwm_out0_carry_i_34_n_0;
  wire pwm_out0_carry_i_35_n_0;
  wire pwm_out0_carry_i_36_n_0;
  wire pwm_out0_carry_i_37_n_0;
  wire pwm_out0_carry_i_38_n_0;
  wire pwm_out0_carry_i_39_n_0;
  wire pwm_out0_carry_i_3__0_n_0;
  wire pwm_out0_carry_i_40_n_0;
  wire pwm_out0_carry_i_41_n_0;
  wire pwm_out0_carry_i_42_n_0;
  wire pwm_out0_carry_i_43_n_0;
  wire pwm_out0_carry_i_44_n_0;
  wire pwm_out0_carry_i_45_n_0;
  wire pwm_out0_carry_i_46_n_0;
  wire pwm_out0_carry_i_47_n_0;
  wire pwm_out0_carry_i_48_n_0;
  wire pwm_out0_carry_i_49_n_0;
  wire pwm_out0_carry_i_4__0_n_0;
  wire pwm_out0_carry_i_50_n_0;
  wire pwm_out0_carry_i_51_n_0;
  wire pwm_out0_carry_i_52_n_0;
  wire pwm_out0_carry_i_53_n_0;
  wire pwm_out0_carry_i_54_n_0;
  wire pwm_out0_carry_i_55_n_0;
  wire pwm_out0_carry_i_56_n_0;
  wire pwm_out0_carry_i_57_n_0;
  wire pwm_out0_carry_i_58_n_0;
  wire pwm_out0_carry_i_5__0_n_0;
  wire pwm_out0_carry_i_6__0_n_0;
  wire pwm_out0_carry_i_7__0_n_0;
  wire pwm_out0_carry_i_8__0_n_0;
  wire pwm_out0_carry_i_9_n_0;
  wire pwm_out0_carry_n_0;
  wire pwm_out0_carry_n_1;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire pwm_out_reg_0;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pwm_out0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \pwm_counter[0]_i_1__0 
       (.I0(pwm_counter_reg[0]),
        .O(\pwm_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_counter[1]_i_1__0 
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_counter_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_counter[2]_i_1__0 
       (.I0(pwm_counter_reg[2]),
        .I1(pwm_counter_reg[0]),
        .I2(pwm_counter_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_counter[3]_i_1__0 
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_counter_reg[1]),
        .I2(pwm_counter_reg[0]),
        .I3(pwm_counter_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_counter[4]_i_1__0 
       (.I0(pwm_counter_reg[4]),
        .I1(pwm_counter_reg[2]),
        .I2(pwm_counter_reg[0]),
        .I3(pwm_counter_reg[1]),
        .I4(pwm_counter_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pwm_counter[5]_i_1__0 
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_counter_reg[3]),
        .I2(pwm_counter_reg[1]),
        .I3(pwm_counter_reg[0]),
        .I4(pwm_counter_reg[2]),
        .I5(pwm_counter_reg[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_counter[6]_i_1__0 
       (.I0(pwm_counter_reg[6]),
        .I1(\pwm_counter[9]_i_2__0_n_0 ),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_counter[7]_i_1__0 
       (.I0(pwm_counter_reg[7]),
        .I1(\pwm_counter[9]_i_2__0_n_0 ),
        .I2(pwm_counter_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_counter[8]_i_1__0 
       (.I0(Q[0]),
        .I1(pwm_counter_reg[6]),
        .I2(\pwm_counter[9]_i_2__0_n_0 ),
        .I3(pwm_counter_reg[7]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_counter[9]_i_1__0 
       (.I0(Q[1]),
        .I1(pwm_counter_reg[7]),
        .I2(\pwm_counter[9]_i_2__0_n_0 ),
        .I3(pwm_counter_reg[6]),
        .I4(Q[0]),
        .O(p_0_in__1[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_counter[9]_i_2__0 
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_counter_reg[3]),
        .I2(pwm_counter_reg[1]),
        .I3(pwm_counter_reg[0]),
        .I4(pwm_counter_reg[2]),
        .I5(pwm_counter_reg[4]),
        .O(\pwm_counter[9]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(\pwm_counter[0]_i_1__0_n_0 ),
        .Q(pwm_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[1]),
        .Q(pwm_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[2]),
        .Q(pwm_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[3]),
        .Q(pwm_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[4]),
        .Q(pwm_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[5]),
        .Q(pwm_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[6]),
        .Q(pwm_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[7]),
        .Q(pwm_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[8]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__1[9]),
        .Q(Q[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry_i_1__0_n_0,pwm_out0_carry_i_2__0_n_0,pwm_out0_carry_i_3__0_n_0,pwm_out0_carry_i_4__0_n_0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_5__0_n_0,pwm_out0_carry_i_6__0_n_0,pwm_out0_carry_i_7__0_n_0,pwm_out0_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out0_carry__0
       (.CI(pwm_out0_carry_n_0),
        .CO({NLW_pwm_out0_carry__0_CO_UNCONNECTED[3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O(NLW_pwm_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,S}));
  LUT6 #(
    .INIT(64'hB5F5B5F5F5F0F050)) 
    pwm_out0_carry__0_i_3
       (.I0(pwm_out0_carry_i_1__0_0[6]),
        .I1(pwm_out0_carry_i_1__0_0[2]),
        .I2(pwm_out0_carry_i_1__0_0[5]),
        .I3(pwm_out0_carry_i_1__0_0[3]),
        .I4(pwm_out0_carry__0_i_1__0),
        .I5(pwm_out0_carry_i_1__0_0[4]),
        .O(\green_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    pwm_out0_carry__0_i_4
       (.I0(pwm_out0_carry_i_1__0_0[6]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[2]),
        .I3(pwm_out0_carry_i_1__0_0[3]),
        .I4(pwm_out0_carry_i_1__0_0[5]),
        .I5(pwm_out0_carry_i_1__0_0[7]),
        .O(\green_reg[6] ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    pwm_out0_carry_i_10
       (.I0(pwm_out0_carry_i_20_n_0),
        .I1(pwm_out0_carry_i_21_n_0),
        .I2(pwm_out0_carry_i_1__0_0[7]),
        .I3(pwm_out0_carry_i_22_n_0),
        .I4(pwm_out0_carry_i_1__0_0[6]),
        .O(pwm_out0_carry_i_10_n_0));
  MUXF8 pwm_out0_carry_i_11
       (.I0(pwm_out0_carry_i_23_n_0),
        .I1(pwm_out0_carry_i_24_n_0),
        .O(pwm_out0_carry_i_11_n_0),
        .S(pwm_out0_carry_i_1__0_0[7]));
  MUXF8 pwm_out0_carry_i_12
       (.I0(pwm_out0_carry_i_25_n_0),
        .I1(pwm_out0_carry_i_26_n_0),
        .O(pwm_out0_carry_i_12_n_0),
        .S(pwm_out0_carry_i_1__0_0[7]));
  MUXF8 pwm_out0_carry_i_13
       (.I0(pwm_out0_carry_i_27_n_0),
        .I1(pwm_out0_carry_i_28_n_0),
        .O(pwm_out0_carry_i_13_n_0),
        .S(pwm_out0_carry_i_1__0_0[7]));
  MUXF8 pwm_out0_carry_i_14
       (.I0(pwm_out0_carry_i_29_n_0),
        .I1(pwm_out0_carry_i_30_n_0),
        .O(pwm_out0_carry_i_14_n_0),
        .S(pwm_out0_carry_i_1__0_0[7]));
  MUXF8 pwm_out0_carry_i_15
       (.I0(pwm_out0_carry_i_31_n_0),
        .I1(pwm_out0_carry_i_32_n_0),
        .O(pwm_out0_carry_i_15_n_0),
        .S(pwm_out0_carry_i_1__0_0[7]));
  MUXF8 pwm_out0_carry_i_16
       (.I0(pwm_out0_carry_i_33_n_0),
        .I1(pwm_out0_carry_i_34_n_0),
        .O(pwm_out0_carry_i_16_n_0),
        .S(pwm_out0_carry_i_1__0_0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    pwm_out0_carry_i_17
       (.I0(pwm_out0_carry_i_1__0_0[0]),
        .I1(pwm_out0_carry_i_1__0_0[2]),
        .I2(pwm_out0_carry_i_1__0_0[1]),
        .I3(pwm_out0_carry_i_1__0_0[3]),
        .I4(pwm_out0_carry_i_1__0_0[5]),
        .I5(pwm_out0_carry_i_1__0_0[4]),
        .O(pwm_out0_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h22AA22AABB99B99D)) 
    pwm_out0_carry_i_18
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[3]),
        .I2(pwm_out0_carry_i_1__0_0[1]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[4]),
        .O(pwm_out0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    pwm_out0_carry_i_19
       (.I0(pwm_out0_carry_i_1__0_0[4]),
        .I1(pwm_out0_carry_i_1__0_0[2]),
        .I2(pwm_out0_carry_i_1__0_0[0]),
        .I3(pwm_out0_carry_i_1__0_0[1]),
        .I4(pwm_out0_carry_i_1__0_0[3]),
        .I5(pwm_out0_carry_i_1__0_0[5]),
        .O(pwm_out0_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_1__0
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_out0_carry_i_9_n_0),
        .I2(pwm_out0_carry_i_10_n_0),
        .I3(pwm_counter_reg[6]),
        .O(pwm_out0_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFED05000022)) 
    pwm_out0_carry_i_20
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[0]),
        .I2(pwm_out0_carry_i_1__0_0[4]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[3]),
        .O(pwm_out0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h44CC44CD99BB9BB3)) 
    pwm_out0_carry_i_21
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[0]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[3]),
        .O(pwm_out0_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDD54464646)) 
    pwm_out0_carry_i_22
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[3]),
        .I2(pwm_out0_carry_i_1__0_0[2]),
        .I3(pwm_out0_carry_i_1__0_0[1]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[4]),
        .O(pwm_out0_carry_i_22_n_0));
  MUXF7 pwm_out0_carry_i_23
       (.I0(pwm_out0_carry_i_35_n_0),
        .I1(pwm_out0_carry_i_36_n_0),
        .O(pwm_out0_carry_i_23_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_24
       (.I0(pwm_out0_carry_i_37_n_0),
        .I1(pwm_out0_carry_i_38_n_0),
        .O(pwm_out0_carry_i_24_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_25
       (.I0(pwm_out0_carry_i_39_n_0),
        .I1(pwm_out0_carry_i_40_n_0),
        .O(pwm_out0_carry_i_25_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_26
       (.I0(pwm_out0_carry_i_41_n_0),
        .I1(pwm_out0_carry_i_42_n_0),
        .O(pwm_out0_carry_i_26_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_27
       (.I0(pwm_out0_carry_i_43_n_0),
        .I1(pwm_out0_carry_i_44_n_0),
        .O(pwm_out0_carry_i_27_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_28
       (.I0(pwm_out0_carry_i_45_n_0),
        .I1(pwm_out0_carry_i_46_n_0),
        .O(pwm_out0_carry_i_28_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_29
       (.I0(pwm_out0_carry_i_47_n_0),
        .I1(pwm_out0_carry_i_48_n_0),
        .O(pwm_out0_carry_i_29_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_2__0
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_out0_carry_i_11_n_0),
        .I2(pwm_out0_carry_i_12_n_0),
        .I3(pwm_counter_reg[4]),
        .O(pwm_out0_carry_i_2__0_n_0));
  MUXF7 pwm_out0_carry_i_30
       (.I0(pwm_out0_carry_i_49_n_0),
        .I1(pwm_out0_carry_i_50_n_0),
        .O(pwm_out0_carry_i_30_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_31
       (.I0(pwm_out0_carry_i_51_n_0),
        .I1(pwm_out0_carry_i_52_n_0),
        .O(pwm_out0_carry_i_31_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_32
       (.I0(pwm_out0_carry_i_53_n_0),
        .I1(pwm_out0_carry_i_54_n_0),
        .O(pwm_out0_carry_i_32_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_33
       (.I0(pwm_out0_carry_i_55_n_0),
        .I1(pwm_out0_carry_i_56_n_0),
        .O(pwm_out0_carry_i_33_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  MUXF7 pwm_out0_carry_i_34
       (.I0(pwm_out0_carry_i_57_n_0),
        .I1(pwm_out0_carry_i_58_n_0),
        .O(pwm_out0_carry_i_34_n_0),
        .S(pwm_out0_carry_i_1__0_0[6]));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    pwm_out0_carry_i_35
       (.I0(pwm_out0_carry_i_1__0_0[4]),
        .I1(pwm_out0_carry_i_1__0_0[2]),
        .I2(pwm_out0_carry_i_1__0_0[1]),
        .I3(pwm_out0_carry_i_1__0_0[3]),
        .I4(pwm_out0_carry_i_1__0_0[5]),
        .O(pwm_out0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h66444444C99B99BB)) 
    pwm_out0_carry_i_36
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[0]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[3]),
        .O(pwm_out0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h6DA725872587279A)) 
    pwm_out0_carry_i_37
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[0]),
        .O(pwm_out0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hFEFE1101FF95016A)) 
    pwm_out0_carry_i_38
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h8981FFFE00000000)) 
    pwm_out0_carry_i_39
       (.I0(pwm_out0_carry_i_1__0_0[3]),
        .I1(pwm_out0_carry_i_1__0_0[2]),
        .I2(pwm_out0_carry_i_1__0_0[1]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[4]),
        .I5(pwm_out0_carry_i_1__0_0[5]),
        .O(pwm_out0_carry_i_39_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_3__0
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_out0_carry_i_13_n_0),
        .I2(pwm_out0_carry_i_14_n_0),
        .I3(pwm_counter_reg[2]),
        .O(pwm_out0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hD8ED2527CD2D2707)) 
    pwm_out0_carry_i_40
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[1]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[0]),
        .O(pwm_out0_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'h9D7D828A7562883D)) 
    pwm_out0_carry_i_41
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[3]),
        .I2(pwm_out0_carry_i_1__0_0[4]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hFEEE949411106B6B)) 
    pwm_out0_carry_i_42
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_42_n_0));
  LUT6 #(
    .INIT(64'h555CCCEE88888802)) 
    pwm_out0_carry_i_43
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[3]),
        .I2(pwm_out0_carry_i_1__0_0[0]),
        .I3(pwm_out0_carry_i_1__0_0[1]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[4]),
        .O(pwm_out0_carry_i_43_n_0));
  LUT6 #(
    .INIT(64'h8A1F35F5DD4B0A22)) 
    pwm_out0_carry_i_44
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[2]),
        .O(pwm_out0_carry_i_44_n_0));
  LUT6 #(
    .INIT(64'h1F75F408E0821B77)) 
    pwm_out0_carry_i_45
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[3]),
        .I2(pwm_out0_carry_i_1__0_0[2]),
        .I3(pwm_out0_carry_i_1__0_0[4]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'h99856A7A85847B7B)) 
    pwm_out0_carry_i_46
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[1]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[2]),
        .O(pwm_out0_carry_i_46_n_0));
  LUT6 #(
    .INIT(64'h57F5800AA9A05F02)) 
    pwm_out0_carry_i_47
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[0]),
        .I2(pwm_out0_carry_i_1__0_0[1]),
        .I3(pwm_out0_carry_i_1__0_0[4]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[3]),
        .O(pwm_out0_carry_i_47_n_0));
  LUT6 #(
    .INIT(64'h4895289E3FC0D569)) 
    pwm_out0_carry_i_48
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'hB0E4802AE5B37F55)) 
    pwm_out0_carry_i_49
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[3]),
        .I2(pwm_out0_carry_i_1__0_0[1]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[4]),
        .I5(pwm_out0_carry_i_1__0_0[0]),
        .O(pwm_out0_carry_i_49_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_4__0
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_out0_carry_i_15_n_0),
        .I2(pwm_out0_carry_i_16_n_0),
        .I3(pwm_counter_reg[0]),
        .O(pwm_out0_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h94984958C8C95C54)) 
    pwm_out0_carry_i_50
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_50_n_0));
  LUT6 #(
    .INIT(64'hC90923AE5CD4FC3A)) 
    pwm_out0_carry_i_51
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[2]),
        .O(pwm_out0_carry_i_51_n_0));
  LUT6 #(
    .INIT(64'h2288559FE843B43C)) 
    pwm_out0_carry_i_52
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[1]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[2]),
        .O(pwm_out0_carry_i_52_n_0));
  LUT6 #(
    .INIT(64'h45EE17BCA2288888)) 
    pwm_out0_carry_i_53
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[1]),
        .I2(pwm_out0_carry_i_1__0_0[2]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[3]),
        .I5(pwm_out0_carry_i_1__0_0[4]),
        .O(pwm_out0_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'hF4F9B7A62B36737B)) 
    pwm_out0_carry_i_54
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_54_n_0));
  LUT6 #(
    .INIT(64'hBEC0F7D9620D3846)) 
    pwm_out0_carry_i_55
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_55_n_0));
  LUT6 #(
    .INIT(64'hECCE0260E9D278D0)) 
    pwm_out0_carry_i_56
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[2]),
        .I3(pwm_out0_carry_i_1__0_0[0]),
        .I4(pwm_out0_carry_i_1__0_0[1]),
        .I5(pwm_out0_carry_i_1__0_0[3]),
        .O(pwm_out0_carry_i_56_n_0));
  LUT6 #(
    .INIT(64'hEF685AA8C8F8121D)) 
    pwm_out0_carry_i_57
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[0]),
        .I2(pwm_out0_carry_i_1__0_0[4]),
        .I3(pwm_out0_carry_i_1__0_0[3]),
        .I4(pwm_out0_carry_i_1__0_0[2]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_57_n_0));
  LUT6 #(
    .INIT(64'hE6D87A449580091F)) 
    pwm_out0_carry_i_58
       (.I0(pwm_out0_carry_i_1__0_0[5]),
        .I1(pwm_out0_carry_i_1__0_0[4]),
        .I2(pwm_out0_carry_i_1__0_0[3]),
        .I3(pwm_out0_carry_i_1__0_0[2]),
        .I4(pwm_out0_carry_i_1__0_0[0]),
        .I5(pwm_out0_carry_i_1__0_0[1]),
        .O(pwm_out0_carry_i_58_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_5__0
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_out0_carry_i_9_n_0),
        .I2(pwm_out0_carry_i_10_n_0),
        .I3(pwm_counter_reg[6]),
        .O(pwm_out0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_6__0
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_out0_carry_i_11_n_0),
        .I2(pwm_out0_carry_i_12_n_0),
        .I3(pwm_counter_reg[4]),
        .O(pwm_out0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_7__0
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_out0_carry_i_13_n_0),
        .I2(pwm_out0_carry_i_14_n_0),
        .I3(pwm_counter_reg[2]),
        .O(pwm_out0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_8__0
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_out0_carry_i_15_n_0),
        .I2(pwm_out0_carry_i_16_n_0),
        .I3(pwm_counter_reg[0]),
        .O(pwm_out0_carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    pwm_out0_carry_i_9
       (.I0(pwm_out0_carry_i_17_n_0),
        .I1(pwm_out0_carry_i_18_n_0),
        .I2(pwm_out0_carry_i_1__0_0[7]),
        .I3(pwm_out0_carry_i_19_n_0),
        .I4(pwm_out0_carry_i_1__0_0[6]),
        .O(pwm_out0_carry_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in),
        .Q(\RGB[1] ));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module pwm_5
   (\RGB[2] ,
    Q,
    \blue_reg[6] ,
    \blue_reg[6]_0 ,
    clk_IBUF_BUFG,
    pwm_out_reg_0,
    DI,
    S,
    pwm_out0_carry_i_1__1_0,
    pwm_out0_carry__0_i_1__1);
  output \RGB[2] ;
  output [1:0]Q;
  output \blue_reg[6] ;
  output \blue_reg[6]_0 ;
  input clk_IBUF_BUFG;
  input pwm_out_reg_0;
  input [0:0]DI;
  input [0:0]S;
  input [7:0]pwm_out0_carry_i_1__1_0;
  input pwm_out0_carry__0_i_1__1;

  wire [0:0]DI;
  wire [1:0]Q;
  wire \RGB[2] ;
  wire [0:0]S;
  wire \blue_reg[6] ;
  wire \blue_reg[6]_0 ;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire [9:1]p_0_in__2;
  wire \pwm_counter[0]_i_1__1_n_0 ;
  wire \pwm_counter[9]_i_2__1_n_0 ;
  wire [7:0]pwm_counter_reg;
  wire pwm_out0_carry__0_i_1__1;
  wire pwm_out0_carry_i_10_n_0;
  wire pwm_out0_carry_i_11_n_0;
  wire pwm_out0_carry_i_12_n_0;
  wire pwm_out0_carry_i_13_n_0;
  wire pwm_out0_carry_i_14_n_0;
  wire pwm_out0_carry_i_15_n_0;
  wire pwm_out0_carry_i_16_n_0;
  wire pwm_out0_carry_i_17_n_0;
  wire pwm_out0_carry_i_18_n_0;
  wire pwm_out0_carry_i_19_n_0;
  wire [7:0]pwm_out0_carry_i_1__1_0;
  wire pwm_out0_carry_i_1__1_n_0;
  wire pwm_out0_carry_i_20_n_0;
  wire pwm_out0_carry_i_21_n_0;
  wire pwm_out0_carry_i_22_n_0;
  wire pwm_out0_carry_i_23_n_0;
  wire pwm_out0_carry_i_24_n_0;
  wire pwm_out0_carry_i_25_n_0;
  wire pwm_out0_carry_i_26_n_0;
  wire pwm_out0_carry_i_27_n_0;
  wire pwm_out0_carry_i_28_n_0;
  wire pwm_out0_carry_i_29_n_0;
  wire pwm_out0_carry_i_2__1_n_0;
  wire pwm_out0_carry_i_30_n_0;
  wire pwm_out0_carry_i_31_n_0;
  wire pwm_out0_carry_i_32_n_0;
  wire pwm_out0_carry_i_33_n_0;
  wire pwm_out0_carry_i_34_n_0;
  wire pwm_out0_carry_i_35_n_0;
  wire pwm_out0_carry_i_36_n_0;
  wire pwm_out0_carry_i_37_n_0;
  wire pwm_out0_carry_i_38_n_0;
  wire pwm_out0_carry_i_39_n_0;
  wire pwm_out0_carry_i_3__1_n_0;
  wire pwm_out0_carry_i_40_n_0;
  wire pwm_out0_carry_i_41_n_0;
  wire pwm_out0_carry_i_42_n_0;
  wire pwm_out0_carry_i_43_n_0;
  wire pwm_out0_carry_i_44_n_0;
  wire pwm_out0_carry_i_45_n_0;
  wire pwm_out0_carry_i_46_n_0;
  wire pwm_out0_carry_i_47_n_0;
  wire pwm_out0_carry_i_48_n_0;
  wire pwm_out0_carry_i_49_n_0;
  wire pwm_out0_carry_i_4__1_n_0;
  wire pwm_out0_carry_i_50_n_0;
  wire pwm_out0_carry_i_51_n_0;
  wire pwm_out0_carry_i_52_n_0;
  wire pwm_out0_carry_i_53_n_0;
  wire pwm_out0_carry_i_54_n_0;
  wire pwm_out0_carry_i_55_n_0;
  wire pwm_out0_carry_i_56_n_0;
  wire pwm_out0_carry_i_57_n_0;
  wire pwm_out0_carry_i_58_n_0;
  wire pwm_out0_carry_i_5__1_n_0;
  wire pwm_out0_carry_i_6__1_n_0;
  wire pwm_out0_carry_i_7__1_n_0;
  wire pwm_out0_carry_i_8__1_n_0;
  wire pwm_out0_carry_i_9_n_0;
  wire pwm_out0_carry_n_0;
  wire pwm_out0_carry_n_1;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire pwm_out_reg_0;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pwm_out0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \pwm_counter[0]_i_1__1 
       (.I0(pwm_counter_reg[0]),
        .O(\pwm_counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_counter[1]_i_1__1 
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_counter_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_counter[2]_i_1__1 
       (.I0(pwm_counter_reg[2]),
        .I1(pwm_counter_reg[0]),
        .I2(pwm_counter_reg[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_counter[3]_i_1__1 
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_counter_reg[1]),
        .I2(pwm_counter_reg[0]),
        .I3(pwm_counter_reg[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_counter[4]_i_1__1 
       (.I0(pwm_counter_reg[4]),
        .I1(pwm_counter_reg[2]),
        .I2(pwm_counter_reg[0]),
        .I3(pwm_counter_reg[1]),
        .I4(pwm_counter_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pwm_counter[5]_i_1__1 
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_counter_reg[3]),
        .I2(pwm_counter_reg[1]),
        .I3(pwm_counter_reg[0]),
        .I4(pwm_counter_reg[2]),
        .I5(pwm_counter_reg[4]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_counter[6]_i_1__1 
       (.I0(pwm_counter_reg[6]),
        .I1(\pwm_counter[9]_i_2__1_n_0 ),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_counter[7]_i_1__1 
       (.I0(pwm_counter_reg[7]),
        .I1(\pwm_counter[9]_i_2__1_n_0 ),
        .I2(pwm_counter_reg[6]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_counter[8]_i_1__1 
       (.I0(Q[0]),
        .I1(pwm_counter_reg[6]),
        .I2(\pwm_counter[9]_i_2__1_n_0 ),
        .I3(pwm_counter_reg[7]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_counter[9]_i_1__1 
       (.I0(Q[1]),
        .I1(pwm_counter_reg[7]),
        .I2(\pwm_counter[9]_i_2__1_n_0 ),
        .I3(pwm_counter_reg[6]),
        .I4(Q[0]),
        .O(p_0_in__2[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_counter[9]_i_2__1 
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_counter_reg[3]),
        .I2(pwm_counter_reg[1]),
        .I3(pwm_counter_reg[0]),
        .I4(pwm_counter_reg[2]),
        .I5(pwm_counter_reg[4]),
        .O(\pwm_counter[9]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(\pwm_counter[0]_i_1__1_n_0 ),
        .Q(pwm_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[1]),
        .Q(pwm_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[2]),
        .Q(pwm_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[3]),
        .Q(pwm_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[4]),
        .Q(pwm_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[5]),
        .Q(pwm_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[6]),
        .Q(pwm_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[7]),
        .Q(pwm_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[8]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in__2[9]),
        .Q(Q[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry_i_1__1_n_0,pwm_out0_carry_i_2__1_n_0,pwm_out0_carry_i_3__1_n_0,pwm_out0_carry_i_4__1_n_0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_5__1_n_0,pwm_out0_carry_i_6__1_n_0,pwm_out0_carry_i_7__1_n_0,pwm_out0_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_out0_carry__0
       (.CI(pwm_out0_carry_n_0),
        .CO({NLW_pwm_out0_carry__0_CO_UNCONNECTED[3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O(NLW_pwm_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,S}));
  LUT6 #(
    .INIT(64'hB5F5B5F5F5F0F050)) 
    pwm_out0_carry__0_i_3
       (.I0(pwm_out0_carry_i_1__1_0[6]),
        .I1(pwm_out0_carry_i_1__1_0[2]),
        .I2(pwm_out0_carry_i_1__1_0[5]),
        .I3(pwm_out0_carry_i_1__1_0[3]),
        .I4(pwm_out0_carry__0_i_1__1),
        .I5(pwm_out0_carry_i_1__1_0[4]),
        .O(\blue_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    pwm_out0_carry__0_i_4
       (.I0(pwm_out0_carry_i_1__1_0[6]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[2]),
        .I3(pwm_out0_carry_i_1__1_0[3]),
        .I4(pwm_out0_carry_i_1__1_0[5]),
        .I5(pwm_out0_carry_i_1__1_0[7]),
        .O(\blue_reg[6] ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    pwm_out0_carry_i_10
       (.I0(pwm_out0_carry_i_20_n_0),
        .I1(pwm_out0_carry_i_21_n_0),
        .I2(pwm_out0_carry_i_1__1_0[7]),
        .I3(pwm_out0_carry_i_22_n_0),
        .I4(pwm_out0_carry_i_1__1_0[6]),
        .O(pwm_out0_carry_i_10_n_0));
  MUXF8 pwm_out0_carry_i_11
       (.I0(pwm_out0_carry_i_23_n_0),
        .I1(pwm_out0_carry_i_24_n_0),
        .O(pwm_out0_carry_i_11_n_0),
        .S(pwm_out0_carry_i_1__1_0[7]));
  MUXF8 pwm_out0_carry_i_12
       (.I0(pwm_out0_carry_i_25_n_0),
        .I1(pwm_out0_carry_i_26_n_0),
        .O(pwm_out0_carry_i_12_n_0),
        .S(pwm_out0_carry_i_1__1_0[7]));
  MUXF8 pwm_out0_carry_i_13
       (.I0(pwm_out0_carry_i_27_n_0),
        .I1(pwm_out0_carry_i_28_n_0),
        .O(pwm_out0_carry_i_13_n_0),
        .S(pwm_out0_carry_i_1__1_0[7]));
  MUXF8 pwm_out0_carry_i_14
       (.I0(pwm_out0_carry_i_29_n_0),
        .I1(pwm_out0_carry_i_30_n_0),
        .O(pwm_out0_carry_i_14_n_0),
        .S(pwm_out0_carry_i_1__1_0[7]));
  MUXF8 pwm_out0_carry_i_15
       (.I0(pwm_out0_carry_i_31_n_0),
        .I1(pwm_out0_carry_i_32_n_0),
        .O(pwm_out0_carry_i_15_n_0),
        .S(pwm_out0_carry_i_1__1_0[7]));
  MUXF8 pwm_out0_carry_i_16
       (.I0(pwm_out0_carry_i_33_n_0),
        .I1(pwm_out0_carry_i_34_n_0),
        .O(pwm_out0_carry_i_16_n_0),
        .S(pwm_out0_carry_i_1__1_0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    pwm_out0_carry_i_17
       (.I0(pwm_out0_carry_i_1__1_0[0]),
        .I1(pwm_out0_carry_i_1__1_0[2]),
        .I2(pwm_out0_carry_i_1__1_0[1]),
        .I3(pwm_out0_carry_i_1__1_0[3]),
        .I4(pwm_out0_carry_i_1__1_0[5]),
        .I5(pwm_out0_carry_i_1__1_0[4]),
        .O(pwm_out0_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h22AA22AABB99B99D)) 
    pwm_out0_carry_i_18
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[3]),
        .I2(pwm_out0_carry_i_1__1_0[1]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[4]),
        .O(pwm_out0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEE00000000)) 
    pwm_out0_carry_i_19
       (.I0(pwm_out0_carry_i_1__1_0[4]),
        .I1(pwm_out0_carry_i_1__1_0[2]),
        .I2(pwm_out0_carry_i_1__1_0[0]),
        .I3(pwm_out0_carry_i_1__1_0[1]),
        .I4(pwm_out0_carry_i_1__1_0[3]),
        .I5(pwm_out0_carry_i_1__1_0[5]),
        .O(pwm_out0_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_1__1
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_out0_carry_i_9_n_0),
        .I2(pwm_out0_carry_i_10_n_0),
        .I3(pwm_counter_reg[6]),
        .O(pwm_out0_carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFED05000022)) 
    pwm_out0_carry_i_20
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[0]),
        .I2(pwm_out0_carry_i_1__1_0[4]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[3]),
        .O(pwm_out0_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h44CC44CD99BB9BB3)) 
    pwm_out0_carry_i_21
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[0]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[3]),
        .O(pwm_out0_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDD54464646)) 
    pwm_out0_carry_i_22
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[3]),
        .I2(pwm_out0_carry_i_1__1_0[2]),
        .I3(pwm_out0_carry_i_1__1_0[1]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[4]),
        .O(pwm_out0_carry_i_22_n_0));
  MUXF7 pwm_out0_carry_i_23
       (.I0(pwm_out0_carry_i_35_n_0),
        .I1(pwm_out0_carry_i_36_n_0),
        .O(pwm_out0_carry_i_23_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_24
       (.I0(pwm_out0_carry_i_37_n_0),
        .I1(pwm_out0_carry_i_38_n_0),
        .O(pwm_out0_carry_i_24_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_25
       (.I0(pwm_out0_carry_i_39_n_0),
        .I1(pwm_out0_carry_i_40_n_0),
        .O(pwm_out0_carry_i_25_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_26
       (.I0(pwm_out0_carry_i_41_n_0),
        .I1(pwm_out0_carry_i_42_n_0),
        .O(pwm_out0_carry_i_26_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_27
       (.I0(pwm_out0_carry_i_43_n_0),
        .I1(pwm_out0_carry_i_44_n_0),
        .O(pwm_out0_carry_i_27_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_28
       (.I0(pwm_out0_carry_i_45_n_0),
        .I1(pwm_out0_carry_i_46_n_0),
        .O(pwm_out0_carry_i_28_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_29
       (.I0(pwm_out0_carry_i_47_n_0),
        .I1(pwm_out0_carry_i_48_n_0),
        .O(pwm_out0_carry_i_29_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_2__1
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_out0_carry_i_11_n_0),
        .I2(pwm_out0_carry_i_12_n_0),
        .I3(pwm_counter_reg[4]),
        .O(pwm_out0_carry_i_2__1_n_0));
  MUXF7 pwm_out0_carry_i_30
       (.I0(pwm_out0_carry_i_49_n_0),
        .I1(pwm_out0_carry_i_50_n_0),
        .O(pwm_out0_carry_i_30_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_31
       (.I0(pwm_out0_carry_i_51_n_0),
        .I1(pwm_out0_carry_i_52_n_0),
        .O(pwm_out0_carry_i_31_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_32
       (.I0(pwm_out0_carry_i_53_n_0),
        .I1(pwm_out0_carry_i_54_n_0),
        .O(pwm_out0_carry_i_32_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_33
       (.I0(pwm_out0_carry_i_55_n_0),
        .I1(pwm_out0_carry_i_56_n_0),
        .O(pwm_out0_carry_i_33_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  MUXF7 pwm_out0_carry_i_34
       (.I0(pwm_out0_carry_i_57_n_0),
        .I1(pwm_out0_carry_i_58_n_0),
        .O(pwm_out0_carry_i_34_n_0),
        .S(pwm_out0_carry_i_1__1_0[6]));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    pwm_out0_carry_i_35
       (.I0(pwm_out0_carry_i_1__1_0[4]),
        .I1(pwm_out0_carry_i_1__1_0[2]),
        .I2(pwm_out0_carry_i_1__1_0[1]),
        .I3(pwm_out0_carry_i_1__1_0[3]),
        .I4(pwm_out0_carry_i_1__1_0[5]),
        .O(pwm_out0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h66444444C99B99BB)) 
    pwm_out0_carry_i_36
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[0]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[3]),
        .O(pwm_out0_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h6DA725872587279A)) 
    pwm_out0_carry_i_37
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[0]),
        .O(pwm_out0_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'hFEFE1101FF95016A)) 
    pwm_out0_carry_i_38
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h8981FFFE00000000)) 
    pwm_out0_carry_i_39
       (.I0(pwm_out0_carry_i_1__1_0[3]),
        .I1(pwm_out0_carry_i_1__1_0[2]),
        .I2(pwm_out0_carry_i_1__1_0[1]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[4]),
        .I5(pwm_out0_carry_i_1__1_0[5]),
        .O(pwm_out0_carry_i_39_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_3__1
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_out0_carry_i_13_n_0),
        .I2(pwm_out0_carry_i_14_n_0),
        .I3(pwm_counter_reg[2]),
        .O(pwm_out0_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hD8ED2527CD2D2707)) 
    pwm_out0_carry_i_40
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[1]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[0]),
        .O(pwm_out0_carry_i_40_n_0));
  LUT6 #(
    .INIT(64'h9D7D828A7562883D)) 
    pwm_out0_carry_i_41
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[3]),
        .I2(pwm_out0_carry_i_1__1_0[4]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_41_n_0));
  LUT6 #(
    .INIT(64'hFEEE949411106B6B)) 
    pwm_out0_carry_i_42
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_42_n_0));
  LUT6 #(
    .INIT(64'h555CCCEE88888802)) 
    pwm_out0_carry_i_43
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[3]),
        .I2(pwm_out0_carry_i_1__1_0[0]),
        .I3(pwm_out0_carry_i_1__1_0[1]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[4]),
        .O(pwm_out0_carry_i_43_n_0));
  LUT6 #(
    .INIT(64'h8A1F35F5DD4B0A22)) 
    pwm_out0_carry_i_44
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[2]),
        .O(pwm_out0_carry_i_44_n_0));
  LUT6 #(
    .INIT(64'h1F75F408E0821B77)) 
    pwm_out0_carry_i_45
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[3]),
        .I2(pwm_out0_carry_i_1__1_0[2]),
        .I3(pwm_out0_carry_i_1__1_0[4]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_45_n_0));
  LUT6 #(
    .INIT(64'h99856A7A85847B7B)) 
    pwm_out0_carry_i_46
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[1]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[2]),
        .O(pwm_out0_carry_i_46_n_0));
  LUT6 #(
    .INIT(64'h57F5800AA9A05F02)) 
    pwm_out0_carry_i_47
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[0]),
        .I2(pwm_out0_carry_i_1__1_0[1]),
        .I3(pwm_out0_carry_i_1__1_0[4]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[3]),
        .O(pwm_out0_carry_i_47_n_0));
  LUT6 #(
    .INIT(64'h4895289E3FC0D569)) 
    pwm_out0_carry_i_48
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_48_n_0));
  LUT6 #(
    .INIT(64'hB0E4802AE5B37F55)) 
    pwm_out0_carry_i_49
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[3]),
        .I2(pwm_out0_carry_i_1__1_0[1]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[4]),
        .I5(pwm_out0_carry_i_1__1_0[0]),
        .O(pwm_out0_carry_i_49_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    pwm_out0_carry_i_4__1
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_out0_carry_i_15_n_0),
        .I2(pwm_out0_carry_i_16_n_0),
        .I3(pwm_counter_reg[0]),
        .O(pwm_out0_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h94984958C8C95C54)) 
    pwm_out0_carry_i_50
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_50_n_0));
  LUT6 #(
    .INIT(64'hC90923AE5CD4FC3A)) 
    pwm_out0_carry_i_51
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[2]),
        .O(pwm_out0_carry_i_51_n_0));
  LUT6 #(
    .INIT(64'h2288559FE843B43C)) 
    pwm_out0_carry_i_52
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[1]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[2]),
        .O(pwm_out0_carry_i_52_n_0));
  LUT6 #(
    .INIT(64'h45EE17BCA2288888)) 
    pwm_out0_carry_i_53
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[1]),
        .I2(pwm_out0_carry_i_1__1_0[2]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[3]),
        .I5(pwm_out0_carry_i_1__1_0[4]),
        .O(pwm_out0_carry_i_53_n_0));
  LUT6 #(
    .INIT(64'hF4F9B7A62B36737B)) 
    pwm_out0_carry_i_54
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_54_n_0));
  LUT6 #(
    .INIT(64'hBEC0F7D9620D3846)) 
    pwm_out0_carry_i_55
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_55_n_0));
  LUT6 #(
    .INIT(64'hECCE0260E9D278D0)) 
    pwm_out0_carry_i_56
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[2]),
        .I3(pwm_out0_carry_i_1__1_0[0]),
        .I4(pwm_out0_carry_i_1__1_0[1]),
        .I5(pwm_out0_carry_i_1__1_0[3]),
        .O(pwm_out0_carry_i_56_n_0));
  LUT6 #(
    .INIT(64'hEF685AA8C8F8121D)) 
    pwm_out0_carry_i_57
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[0]),
        .I2(pwm_out0_carry_i_1__1_0[4]),
        .I3(pwm_out0_carry_i_1__1_0[3]),
        .I4(pwm_out0_carry_i_1__1_0[2]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_57_n_0));
  LUT6 #(
    .INIT(64'hE6D87A449580091F)) 
    pwm_out0_carry_i_58
       (.I0(pwm_out0_carry_i_1__1_0[5]),
        .I1(pwm_out0_carry_i_1__1_0[4]),
        .I2(pwm_out0_carry_i_1__1_0[3]),
        .I3(pwm_out0_carry_i_1__1_0[2]),
        .I4(pwm_out0_carry_i_1__1_0[0]),
        .I5(pwm_out0_carry_i_1__1_0[1]),
        .O(pwm_out0_carry_i_58_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_5__1
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_out0_carry_i_9_n_0),
        .I2(pwm_out0_carry_i_10_n_0),
        .I3(pwm_counter_reg[6]),
        .O(pwm_out0_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_6__1
       (.I0(pwm_counter_reg[5]),
        .I1(pwm_out0_carry_i_11_n_0),
        .I2(pwm_out0_carry_i_12_n_0),
        .I3(pwm_counter_reg[4]),
        .O(pwm_out0_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_7__1
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_out0_carry_i_13_n_0),
        .I2(pwm_out0_carry_i_14_n_0),
        .I3(pwm_counter_reg[2]),
        .O(pwm_out0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_8__1
       (.I0(pwm_counter_reg[1]),
        .I1(pwm_out0_carry_i_15_n_0),
        .I2(pwm_out0_carry_i_16_n_0),
        .I3(pwm_counter_reg[0]),
        .O(pwm_out0_carry_i_8__1_n_0));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    pwm_out0_carry_i_9
       (.I0(pwm_out0_carry_i_17_n_0),
        .I1(pwm_out0_carry_i_18_n_0),
        .I2(pwm_out0_carry_i_1__1_0[7]),
        .I3(pwm_out0_carry_i_19_n_0),
        .I4(pwm_out0_carry_i_1__1_0[6]),
        .O(pwm_out0_carry_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(pwm_out_reg_0),
        .D(p_0_in),
        .Q(\RGB[2] ));
endmodule

module shift_reg
   (\hex_disp_vec_reg[21] ,
    \temp_out_reg[4]_0 ,
    \temp_out_reg[6]_0 ,
    \temp_out_reg[4]_1 ,
    \temp_out_reg[7]_0 ,
    DP_OBUF,
    AN_OBUF,
    \SEG7_OBUF[6]_inst_i_1 ,
    Q,
    rst_n_IBUF,
    E,
    clk_IBUF_BUFG,
    \temp_out_reg[0]_0 );
  output \hex_disp_vec_reg[21] ;
  output \temp_out_reg[4]_0 ;
  output \temp_out_reg[6]_0 ;
  output \temp_out_reg[4]_1 ;
  output \temp_out_reg[7]_0 ;
  output DP_OBUF;
  output [7:0]AN_OBUF;
  input \SEG7_OBUF[6]_inst_i_1 ;
  input [1:0]Q;
  input rst_n_IBUF;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input \temp_out_reg[0]_0 ;

  wire [7:0]AN_OBUF;
  wire DP_OBUF;
  wire DP_OBUF_inst_i_2_n_0;
  wire DP_OBUF_inst_i_3_n_0;
  wire [0:0]E;
  wire [1:0]Q;
  wire \SEG7_OBUF[6]_inst_i_1 ;
  wire \SEG7_OBUF[6]_inst_i_13_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_14_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_15_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_16_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_17_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_18_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_20_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_22_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_23_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_24_n_0 ;
  wire \SEG7_OBUF[6]_inst_i_25_n_0 ;
  wire clk_IBUF_BUFG;
  wire \hex_disp_vec_reg[21] ;
  wire [7:0]p_0_in;
  wire rst_n_IBUF;
  wire \temp_out_reg[0]_0 ;
  wire \temp_out_reg[4]_0 ;
  wire \temp_out_reg[4]_1 ;
  wire \temp_out_reg[6]_0 ;
  wire \temp_out_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(p_0_in[1]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(p_0_in[2]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(p_0_in[3]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(p_0_in[4]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(p_0_in[5]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(p_0_in[6]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(p_0_in[7]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(p_0_in[0]),
        .I1(rst_n_IBUF),
        .O(AN_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBBFBFFF)) 
    DP_OBUF_inst_i_1
       (.I0(DP_OBUF_inst_i_2_n_0),
        .I1(rst_n_IBUF),
        .I2(p_0_in[5]),
        .I3(p_0_in[7]),
        .I4(p_0_in[3]),
        .I5(DP_OBUF_inst_i_3_n_0),
        .O(DP_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h70)) 
    DP_OBUF_inst_i_2
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(rst_n_IBUF),
        .O(DP_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h70F0)) 
    DP_OBUF_inst_i_3
       (.I0(p_0_in[4]),
        .I1(p_0_in[6]),
        .I2(rst_n_IBUF),
        .I3(p_0_in[0]),
        .O(DP_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h4CCCCCCCFFFFFFFF)) 
    \SEG7_OBUF[6]_inst_i_11 
       (.I0(p_0_in[5]),
        .I1(rst_n_IBUF),
        .I2(p_0_in[6]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(\SEG7_OBUF[6]_inst_i_23_n_0 ),
        .O(\temp_out_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF977FFFFF)) 
    \SEG7_OBUF[6]_inst_i_12 
       (.I0(p_0_in[0]),
        .I1(p_0_in[6]),
        .I2(p_0_in[4]),
        .I3(p_0_in[2]),
        .I4(rst_n_IBUF),
        .I5(\SEG7_OBUF[6]_inst_i_24_n_0 ),
        .O(\temp_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF107070F0)) 
    \SEG7_OBUF[6]_inst_i_13 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(rst_n_IBUF),
        .I3(p_0_in[0]),
        .I4(p_0_in[7]),
        .I5(\SEG7_OBUF[6]_inst_i_25_n_0 ),
        .O(\SEG7_OBUF[6]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h70F0F0F0)) 
    \SEG7_OBUF[6]_inst_i_14 
       (.I0(p_0_in[6]),
        .I1(p_0_in[0]),
        .I2(rst_n_IBUF),
        .I3(p_0_in[5]),
        .I4(p_0_in[7]),
        .O(\SEG7_OBUF[6]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SEG7_OBUF[6]_inst_i_15 
       (.I0(rst_n_IBUF),
        .I1(p_0_in[3]),
        .O(\SEG7_OBUF[6]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SEG7_OBUF[6]_inst_i_16 
       (.I0(rst_n_IBUF),
        .I1(p_0_in[4]),
        .O(\SEG7_OBUF[6]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SEG7_OBUF[6]_inst_i_17 
       (.I0(rst_n_IBUF),
        .I1(p_0_in[2]),
        .O(\SEG7_OBUF[6]_inst_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SEG7_OBUF[6]_inst_i_18 
       (.I0(rst_n_IBUF),
        .I1(p_0_in[1]),
        .O(\SEG7_OBUF[6]_inst_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \SEG7_OBUF[6]_inst_i_20 
       (.I0(\temp_out_reg[4]_1 ),
        .I1(Q[1]),
        .I2(\temp_out_reg[7]_0 ),
        .I3(Q[0]),
        .O(\SEG7_OBUF[6]_inst_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h70F0F0F0)) 
    \SEG7_OBUF[6]_inst_i_22 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(rst_n_IBUF),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .O(\SEG7_OBUF[6]_inst_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h60808000)) 
    \SEG7_OBUF[6]_inst_i_23 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(rst_n_IBUF),
        .I3(p_0_in[7]),
        .I4(p_0_in[0]),
        .O(\SEG7_OBUF[6]_inst_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7F00FF00)) 
    \SEG7_OBUF[6]_inst_i_24 
       (.I0(p_0_in[1]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .I3(rst_n_IBUF),
        .I4(p_0_in[3]),
        .O(\SEG7_OBUF[6]_inst_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \SEG7_OBUF[6]_inst_i_25 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(rst_n_IBUF),
        .O(\SEG7_OBUF[6]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFFFCA88B)) 
    \SEG7_OBUF[6]_inst_i_4 
       (.I0(\SEG7_OBUF[6]_inst_i_13_n_0 ),
        .I1(\SEG7_OBUF[6]_inst_i_14_n_0 ),
        .I2(\SEG7_OBUF[6]_inst_i_15_n_0 ),
        .I3(\SEG7_OBUF[6]_inst_i_16_n_0 ),
        .I4(\SEG7_OBUF[6]_inst_i_17_n_0 ),
        .I5(\SEG7_OBUF[6]_inst_i_18_n_0 ),
        .O(\temp_out_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \SEG7_OBUF[6]_inst_i_6 
       (.I0(\temp_out_reg[4]_0 ),
        .I1(\SEG7_OBUF[6]_inst_i_20_n_0 ),
        .I2(\temp_out_reg[6]_0 ),
        .I3(\SEG7_OBUF[6]_inst_i_1 ),
        .O(\hex_disp_vec_reg[21] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF977FFFFF)) 
    \SEG7_OBUF[6]_inst_i_7 
       (.I0(p_0_in[7]),
        .I1(p_0_in[0]),
        .I2(p_0_in[6]),
        .I3(p_0_in[5]),
        .I4(rst_n_IBUF),
        .I5(\SEG7_OBUF[6]_inst_i_22_n_0 ),
        .O(\temp_out_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\temp_out_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[1]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[2]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[2]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[3]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[3]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[4]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[4]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[5]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[5]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[6]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[6]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[7]));
  FDPE #(
    .INIT(1'b1)) 
    \temp_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[7]),
        .PRE(\temp_out_reg[0]_0 ),
        .Q(p_0_in[0]));
endmodule

(* NotValidForBitStream *)
module top_disp
   (clk,
    rst_n,
    BTNC,
    BTNU,
    BTND,
    BTNR,
    BTNL,
    RX_LINE,
    AN,
    SEG7,
    LED_TOGGLE,
    DP,
    TX_LINE,
    LED,
    LED16_R,
    LED16_G,
    LED16_B,
    LED17_R,
    LED17_G,
    LED17_B);
  input clk;
  input rst_n;
  input BTNC;
  input BTNU;
  input BTND;
  input BTNR;
  input BTNL;
  input RX_LINE;
  output [7:0]AN;
  output [6:0]SEG7;
  output LED_TOGGLE;
  output DP;
  output TX_LINE;
  output [7:0]LED;
  output LED16_R;
  output LED16_G;
  output LED16_B;
  output LED17_R;
  output LED17_G;
  output LED17_B;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire BTNC;
  wire BTNC_IBUF;
  wire BTND;
  wire BTND_IBUF;
  wire BTNL;
  wire BTNL_IBUF;
  wire BTNR;
  wire BTNR_IBUF;
  wire \BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst_n_0 ;
  wire \BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst_n_2 ;
  wire BTNU;
  wire BTNU_IBUF;
  wire DP;
  wire DP_OBUF;
  wire [7:0]LED;
  wire LED16_B;
  wire LED16_B_OBUF;
  wire LED16_G;
  wire LED16_G_OBUF;
  wire LED16_R;
  wire LED16_R_OBUF;
  wire LED17_B;
  wire LED17_B_OBUF;
  wire LED17_G;
  wire LED17_G_OBUF;
  wire LED17_R;
  wire LED17_R_OBUF;
  wire [6:0]LED_OBUF;
  wire \LED_PWM_GENERATE_BLOCK[0].pwm_inst_n_3 ;
  wire \LED_PWM_GENERATE_BLOCK[0].pwm_inst_n_4 ;
  wire \LED_PWM_GENERATE_BLOCK[1].pwm_inst_n_3 ;
  wire \LED_PWM_GENERATE_BLOCK[1].pwm_inst_n_4 ;
  wire \LED_PWM_GENERATE_BLOCK[2].pwm_inst_n_3 ;
  wire \LED_PWM_GENERATE_BLOCK[2].pwm_inst_n_4 ;
  wire LED_TOGGLE;
  wire \RGB[0] ;
  wire \RGB[1] ;
  wire \RGB[2] ;
  wire RX_LINE;
  wire RX_LINE_IBUF;
  wire [6:0]SEG7;
  wire [6:0]SEG7_OBUF;
  wire TX_LINE;
  wire [7:0]blue_value;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]\color_vec_pwm[0] ;
  wire [7:0]\color_vec_pwm[1] ;
  wire [7:0]\color_vec_pwm[2] ;
  wire disp_reg_inst_n_9;
  wire display_selection_inst_n_24;
  wire display_selection_inst_n_25;
  wire display_selection_inst_n_26;
  wire display_selection_inst_n_27;
  wire display_selection_inst_n_28;
  wire display_selection_inst_n_29;
  wire display_selection_inst_n_30;
  wire display_selection_inst_n_31;
  wire display_selection_inst_n_32;
  wire display_selection_inst_n_33;
  wire display_selection_inst_n_34;
  wire display_selection_inst_n_35;
  wire display_selection_inst_n_36;
  wire display_selection_inst_n_37;
  wire display_selection_inst_n_38;
  wire display_selection_inst_n_39;
  wire display_selection_inst_n_40;
  wire display_selection_inst_n_41;
  wire display_selection_inst_n_42;
  wire display_selection_inst_n_43;
  wire display_selection_inst_n_44;
  wire [7:0]green_value;
  wire [21:17]hex_disp_vec;
  wire p_0_in;
  wire [4:2]p_1_in;
  wire [9:8]pwm_counter_reg;
  wire [9:8]pwm_counter_reg_0;
  wire [9:8]pwm_counter_reg_1;
  wire [7:0]red_value;
  wire rst_n;
  wire rst_n_IBUF;
  wire stabled_out_0;
  wire stabled_out_1;
  wire stabled_out_2;
  wire stabled_out_3;
  wire stabled_out_4;
  wire warp_display_inst_n_0;
  wire warp_display_inst_n_1;
  wire warp_display_inst_n_2;
  wire warp_display_inst_n_3;
  wire warp_display_inst_n_4;
  wire which_led;
  wire wrap_rx_mac_parser_inst_n_0;
  wire wrap_rx_mac_parser_inst_n_19;
  wire wrap_rx_mac_parser_inst_n_20;
  wire wrap_rx_mac_parser_inst_n_21;
  wire wrap_rx_mac_parser_inst_n_22;
  wire wrap_rx_mac_parser_inst_n_23;
  wire wrap_rx_mac_parser_inst_n_24;
  wire wrap_rx_mac_parser_inst_n_25;
  wire wrap_rx_mac_parser_inst_n_26;
  wire wrap_rx_mac_parser_inst_n_27;
  wire wrap_rx_mac_parser_inst_n_28;
  wire wrap_rx_mac_parser_inst_n_29;
  wire wrap_rx_mac_parser_inst_n_30;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTND_IBUF_inst
       (.I(BTND),
        .O(BTND_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTNL_IBUF_inst
       (.I(BTNL),
        .O(BTNL_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTNR_IBUF_inst
       (.I(BTNR),
        .O(BTNR_IBUF));
  load_reg \BTNS_DEBAUNCER_GENERATE_BLOCK[0].load_reg_inst 
       (.BTNC_IBUF(BTNC_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .stabled_out(stabled_out_0),
        .\stabled_out_reg[0]_0 (wrap_rx_mac_parser_inst_n_0));
  load_reg_0 \BTNS_DEBAUNCER_GENERATE_BLOCK[1].load_reg_inst 
       (.BTNL_IBUF(BTNL_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .stabled_out(stabled_out_1),
        .\stabled_out_reg[0]_0 (wrap_rx_mac_parser_inst_n_0));
  load_reg_1 \BTNS_DEBAUNCER_GENERATE_BLOCK[2].load_reg_inst 
       (.BTNR_IBUF(BTNR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .stabled_out(stabled_out_2),
        .\stabled_out_reg[0]_0 (wrap_rx_mac_parser_inst_n_0));
  load_reg_2 \BTNS_DEBAUNCER_GENERATE_BLOCK[3].load_reg_inst 
       (.BTND_IBUF(BTND_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .stabled_out(stabled_out_3),
        .\stabled_out_reg[0]_0 (wrap_rx_mac_parser_inst_n_0));
  load_reg_3 \BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst 
       (.BTNU_IBUF(BTNU_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\red_reg[0] (stabled_out_3),
        .\red_reg[5] (stabled_out_0),
        .stabled_out(stabled_out_4),
        .\stabled_out_reg[0]_0 (\BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst_n_0 ),
        .\stabled_out_reg[0]_1 (\BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst_n_2 ),
        .\stabled_out_reg[0]_2 (wrap_rx_mac_parser_inst_n_0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTNU_IBUF_inst
       (.I(BTNU),
        .O(BTNU_IBUF));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  OBUF LED16_B_OBUF_inst
       (.I(LED16_B_OBUF),
        .O(LED16_B));
  OBUF LED16_G_OBUF_inst
       (.I(LED16_G_OBUF),
        .O(LED16_G));
  OBUF LED16_R_OBUF_inst
       (.I(LED16_R_OBUF),
        .O(LED16_R));
  OBUF LED17_B_OBUF_inst
       (.I(LED17_B_OBUF),
        .O(LED17_B));
  OBUF LED17_G_OBUF_inst
       (.I(LED17_G_OBUF),
        .O(LED17_G));
  OBUF LED17_R_OBUF_inst
       (.I(LED17_R_OBUF),
        .O(LED17_R));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[7]));
  pwm \LED_PWM_GENERATE_BLOCK[0].pwm_inst 
       (.DI(display_selection_inst_n_40),
        .Q(pwm_counter_reg),
        .\RGB[0] (\RGB[0] ),
        .S(display_selection_inst_n_39),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out0_carry__0_i_1(display_selection_inst_n_38),
        .pwm_out0_carry_i_1_0(\color_vec_pwm[0] ),
        .pwm_out_reg_0(wrap_rx_mac_parser_inst_n_0),
        .\red_reg[6] (\LED_PWM_GENERATE_BLOCK[0].pwm_inst_n_3 ),
        .\red_reg[6]_0 (\LED_PWM_GENERATE_BLOCK[0].pwm_inst_n_4 ));
  pwm_4 \LED_PWM_GENERATE_BLOCK[1].pwm_inst 
       (.DI(display_selection_inst_n_42),
        .Q(pwm_counter_reg_0),
        .\RGB[1] (\RGB[1] ),
        .S(display_selection_inst_n_41),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\green_reg[6] (\LED_PWM_GENERATE_BLOCK[1].pwm_inst_n_3 ),
        .\green_reg[6]_0 (\LED_PWM_GENERATE_BLOCK[1].pwm_inst_n_4 ),
        .pwm_out0_carry__0_i_1__0(display_selection_inst_n_37),
        .pwm_out0_carry_i_1__0_0(\color_vec_pwm[1] ),
        .pwm_out_reg_0(wrap_rx_mac_parser_inst_n_0));
  pwm_5 \LED_PWM_GENERATE_BLOCK[2].pwm_inst 
       (.DI(display_selection_inst_n_44),
        .Q(pwm_counter_reg_1),
        .\RGB[2] (\RGB[2] ),
        .S(display_selection_inst_n_43),
        .\blue_reg[6] (\LED_PWM_GENERATE_BLOCK[2].pwm_inst_n_3 ),
        .\blue_reg[6]_0 (\LED_PWM_GENERATE_BLOCK[2].pwm_inst_n_4 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .pwm_out0_carry__0_i_1__1(display_selection_inst_n_36),
        .pwm_out0_carry_i_1__1_0(\color_vec_pwm[2] ),
        .pwm_out_reg_0(wrap_rx_mac_parser_inst_n_0));
  OBUF LED_TOGGLE_OBUF_inst
       (.I(1'b1),
        .O(LED_TOGGLE));
  IBUF #(
    .CCIO_EN("TRUE")) 
    RX_LINE_IBUF_inst
       (.I(RX_LINE),
        .O(RX_LINE_IBUF));
  OBUF \SEG7_OBUF[0]_inst 
       (.I(SEG7_OBUF[0]),
        .O(SEG7[0]));
  OBUF \SEG7_OBUF[1]_inst 
       (.I(SEG7_OBUF[1]),
        .O(SEG7[1]));
  OBUF \SEG7_OBUF[2]_inst 
       (.I(SEG7_OBUF[2]),
        .O(SEG7[2]));
  OBUF \SEG7_OBUF[3]_inst 
       (.I(SEG7_OBUF[3]),
        .O(SEG7[3]));
  OBUF \SEG7_OBUF[4]_inst 
       (.I(SEG7_OBUF[4]),
        .O(SEG7[4]));
  OBUF \SEG7_OBUF[5]_inst 
       (.I(SEG7_OBUF[5]),
        .O(SEG7[5]));
  OBUF \SEG7_OBUF[6]_inst 
       (.I(SEG7_OBUF[6]),
        .O(SEG7[6]));
  OBUF TX_LINE_OBUF_inst
       (.I(1'b1),
        .O(TX_LINE));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  disp_reg disp_reg_inst
       (.D({which_led,p_0_in,\color_vec_pwm[2] ,\color_vec_pwm[1] ,\color_vec_pwm[0] }),
        .Q({hex_disp_vec[21],hex_disp_vec[17]}),
        .\SEG7[0] (warp_display_inst_n_0),
        .\SEG7[0]_0 (warp_display_inst_n_1),
        .SEG7_OBUF(SEG7_OBUF),
        .\SEG7_OBUF[0]_inst_i_1_0 (warp_display_inst_n_2),
        .\SEG7_OBUF[6]_inst_i_5_0 (warp_display_inst_n_3),
        .\SEG7_OBUF[6]_inst_i_5_1 (warp_display_inst_n_4),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\hex_disp_vec_reg[0]_0 (wrap_rx_mac_parser_inst_n_0),
        .\hex_disp_vec_reg[1]_0 (disp_reg_inst_n_9),
        .rst_n_IBUF(rst_n_IBUF),
        .stabled_out(stabled_out_0));
  display_selection display_selection_inst
       (.D(p_1_in),
        .DI(display_selection_inst_n_40),
        .Q(pwm_counter_reg),
        .S(display_selection_inst_n_39),
        .\blue_reg[0]_0 (display_selection_inst_n_31),
        .\blue_reg[0]_1 (display_selection_inst_n_32),
        .\blue_reg[0]_2 (wrap_rx_mac_parser_inst_n_29),
        .\blue_reg[1]_0 (wrap_rx_mac_parser_inst_n_30),
        .\blue_reg[2]_0 (display_selection_inst_n_36),
        .\blue_reg[4]_0 ({wrap_rx_mac_parser_inst_n_26,wrap_rx_mac_parser_inst_n_27,wrap_rx_mac_parser_inst_n_28}),
        .\blue_reg[7]_0 ({\color_vec_pwm[2] ,\color_vec_pwm[1] ,\color_vec_pwm[0] }),
        .\blue_reg[7]_1 (display_selection_inst_n_26),
        .\blue_reg[7]_2 (display_selection_inst_n_43),
        .\blue_reg[7]_3 (display_selection_inst_n_44),
        .blue_value({blue_value[7:5],blue_value[1:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\green_reg[0]_0 (display_selection_inst_n_34),
        .\green_reg[0]_1 (display_selection_inst_n_35),
        .\green_reg[0]_2 (wrap_rx_mac_parser_inst_n_24),
        .\green_reg[0]_3 (wrap_rx_mac_parser_inst_n_0),
        .\green_reg[1]_0 (wrap_rx_mac_parser_inst_n_25),
        .\green_reg[2]_0 (display_selection_inst_n_37),
        .\green_reg[4]_0 ({wrap_rx_mac_parser_inst_n_21,wrap_rx_mac_parser_inst_n_22,wrap_rx_mac_parser_inst_n_23}),
        .\green_reg[7]_0 (display_selection_inst_n_25),
        .\green_reg[7]_1 (display_selection_inst_n_41),
        .\green_reg[7]_2 (display_selection_inst_n_42),
        .green_value({green_value[7:5],green_value[1:0]}),
        .\led_sel_reg[7]_0 ({LED_OBUF[6],LED_OBUF[4],LED_OBUF[2],LED_OBUF[0]}),
        .\led_sel_reg[7]_1 (stabled_out_1),
        .\led_sel_reg[7]_2 (stabled_out_2),
        .pwm_out_reg(\LED_PWM_GENERATE_BLOCK[0].pwm_inst_n_4 ),
        .pwm_out_reg_0(\LED_PWM_GENERATE_BLOCK[0].pwm_inst_n_3 ),
        .pwm_out_reg_1(\LED_PWM_GENERATE_BLOCK[1].pwm_inst_n_4 ),
        .pwm_out_reg_2(\LED_PWM_GENERATE_BLOCK[1].pwm_inst_n_3 ),
        .pwm_out_reg_3(pwm_counter_reg_0),
        .pwm_out_reg_4(\LED_PWM_GENERATE_BLOCK[2].pwm_inst_n_4 ),
        .pwm_out_reg_5(\LED_PWM_GENERATE_BLOCK[2].pwm_inst_n_3 ),
        .pwm_out_reg_6(pwm_counter_reg_1),
        .\red_reg[0]_0 (display_selection_inst_n_27),
        .\red_reg[0]_1 (display_selection_inst_n_28),
        .\red_reg[0]_2 (wrap_rx_mac_parser_inst_n_19),
        .\red_reg[0]_3 (\BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst_n_0 ),
        .\red_reg[1]_0 (wrap_rx_mac_parser_inst_n_20),
        .\red_reg[1]_1 (stabled_out_4),
        .\red_reg[2]_0 (display_selection_inst_n_38),
        .\red_reg[5]_0 (\BTNS_DEBAUNCER_GENERATE_BLOCK[4].load_reg_inst_n_2 ),
        .\red_reg[7]_0 (display_selection_inst_n_24),
        .red_value({red_value[7:5],red_value[1:0]}),
        .stabled_out(stabled_out_0),
        .\stabled_out_reg[0] (display_selection_inst_n_29),
        .\stabled_out_reg[0]_0 (display_selection_inst_n_30),
        .\stabled_out_reg[0]_1 (display_selection_inst_n_33));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  wrap_display warp_display_inst
       (.AN_OBUF(AN_OBUF),
        .DP_OBUF(DP_OBUF),
        .Q({hex_disp_vec[21],hex_disp_vec[17]}),
        .\SEG7_OBUF[6]_inst_i_1 (disp_reg_inst_n_9),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\hex_disp_vec_reg[21] (warp_display_inst_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .\temp_out_reg[0] (wrap_rx_mac_parser_inst_n_0),
        .\temp_out_reg[4] (warp_display_inst_n_1),
        .\temp_out_reg[4]_0 (warp_display_inst_n_3),
        .\temp_out_reg[6] (warp_display_inst_n_2),
        .\temp_out_reg[7] (warp_display_inst_n_4));
  wrap_rx_mac_parser wrap_rx_mac_parser_inst
       (.D(p_1_in),
        .LED16_B_OBUF(LED16_B_OBUF),
        .LED16_G_OBUF(LED16_G_OBUF),
        .LED16_R_OBUF(LED16_R_OBUF),
        .LED17_B_OBUF(LED17_B_OBUF),
        .LED17_G_OBUF(LED17_G_OBUF),
        .LED17_R_OBUF(LED17_R_OBUF),
        .\RGB[0] (\RGB[0] ),
        .\RGB[1] (\RGB[1] ),
        .\RGB[2] (\RGB[2] ),
        .RX_LINE_IBUF(RX_LINE_IBUF),
        .\blue_reg[2] (display_selection_inst_n_30),
        .\blue_reg[3] (display_selection_inst_n_31),
        .\blue_reg[4] (display_selection_inst_n_26),
        .\blue_reg[4]_0 (display_selection_inst_n_32),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\frame_data_reg[104] ({red_value[7:5],red_value[1:0]}),
        .\frame_data_reg[113] (wrap_rx_mac_parser_inst_n_19),
        .\frame_data_reg[11] ({which_led,p_0_in}),
        .\frame_data_reg[24] ({blue_value[7:5],blue_value[1:0]}),
        .\frame_data_reg[35] (wrap_rx_mac_parser_inst_n_29),
        .\frame_data_reg[64] ({green_value[7:5],green_value[1:0]}),
        .\frame_data_reg[72] (wrap_rx_mac_parser_inst_n_24),
        .\green_reg[2] (display_selection_inst_n_33),
        .\green_reg[3] (display_selection_inst_n_34),
        .\green_reg[4] (display_selection_inst_n_25),
        .\green_reg[4]_0 (display_selection_inst_n_35),
        .\red_reg[2] (display_selection_inst_n_29),
        .\red_reg[3] (display_selection_inst_n_28),
        .\red_reg[4] (display_selection_inst_n_24),
        .\red_reg[4]_0 (display_selection_inst_n_27),
        .rst_n(wrap_rx_mac_parser_inst_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .stabled_out(stabled_out_0),
        .\stabled_out_reg[0] (wrap_rx_mac_parser_inst_n_20),
        .\stabled_out_reg[0]_0 ({wrap_rx_mac_parser_inst_n_21,wrap_rx_mac_parser_inst_n_22,wrap_rx_mac_parser_inst_n_23}),
        .\stabled_out_reg[0]_1 (wrap_rx_mac_parser_inst_n_25),
        .\stabled_out_reg[0]_2 ({wrap_rx_mac_parser_inst_n_26,wrap_rx_mac_parser_inst_n_27,wrap_rx_mac_parser_inst_n_28}),
        .\stabled_out_reg[0]_3 (wrap_rx_mac_parser_inst_n_30));
endmodule

module wrap_display
   (\hex_disp_vec_reg[21] ,
    \temp_out_reg[4] ,
    \temp_out_reg[6] ,
    \temp_out_reg[4]_0 ,
    \temp_out_reg[7] ,
    DP_OBUF,
    AN_OBUF,
    clk_IBUF_BUFG,
    \temp_out_reg[0] ,
    \SEG7_OBUF[6]_inst_i_1 ,
    Q,
    rst_n_IBUF);
  output \hex_disp_vec_reg[21] ;
  output \temp_out_reg[4] ;
  output \temp_out_reg[6] ;
  output \temp_out_reg[4]_0 ;
  output \temp_out_reg[7] ;
  output DP_OBUF;
  output [7:0]AN_OBUF;
  input clk_IBUF_BUFG;
  input \temp_out_reg[0] ;
  input \SEG7_OBUF[6]_inst_i_1 ;
  input [1:0]Q;
  input rst_n_IBUF;

  wire [7:0]AN_OBUF;
  wire DP_OBUF;
  wire [1:0]Q;
  wire \SEG7_OBUF[6]_inst_i_1 ;
  wire clk_IBUF_BUFG;
  wire clk_pulse_out;
  wire \hex_disp_vec_reg[21] ;
  wire rst_n_IBUF;
  wire \temp_out_reg[0] ;
  wire \temp_out_reg[4] ;
  wire \temp_out_reg[4]_0 ;
  wire \temp_out_reg[6] ;
  wire \temp_out_reg[7] ;

  clk_div clk_div_inst
       (.E(clk_pulse_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_en_reg_0(\temp_out_reg[0] ));
  shift_reg shift_reg_inst
       (.AN_OBUF(AN_OBUF),
        .DP_OBUF(DP_OBUF),
        .E(clk_pulse_out),
        .Q(Q),
        .\SEG7_OBUF[6]_inst_i_1 (\SEG7_OBUF[6]_inst_i_1 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\hex_disp_vec_reg[21] (\hex_disp_vec_reg[21] ),
        .rst_n_IBUF(rst_n_IBUF),
        .\temp_out_reg[0]_0 (\temp_out_reg[0] ),
        .\temp_out_reg[4]_0 (\temp_out_reg[4] ),
        .\temp_out_reg[4]_1 (\temp_out_reg[4]_0 ),
        .\temp_out_reg[6]_0 (\temp_out_reg[6] ),
        .\temp_out_reg[7]_0 (\temp_out_reg[7] ));
endmodule

module wrap_rx_mac_parser
   (rst_n,
    \frame_data_reg[104] ,
    \frame_data_reg[64] ,
    \frame_data_reg[24] ,
    D,
    \frame_data_reg[113] ,
    \stabled_out_reg[0] ,
    \stabled_out_reg[0]_0 ,
    \frame_data_reg[72] ,
    \stabled_out_reg[0]_1 ,
    \stabled_out_reg[0]_2 ,
    \frame_data_reg[35] ,
    \stabled_out_reg[0]_3 ,
    \frame_data_reg[11] ,
    LED17_B_OBUF,
    LED17_G_OBUF,
    LED17_R_OBUF,
    LED16_B_OBUF,
    LED16_G_OBUF,
    LED16_R_OBUF,
    clk_IBUF_BUFG,
    RX_LINE_IBUF,
    rst_n_IBUF,
    stabled_out,
    \red_reg[2] ,
    \red_reg[4] ,
    \red_reg[3] ,
    \red_reg[4]_0 ,
    \green_reg[2] ,
    \green_reg[4] ,
    \green_reg[3] ,
    \green_reg[4]_0 ,
    \blue_reg[2] ,
    \blue_reg[4] ,
    \blue_reg[3] ,
    \blue_reg[4]_0 ,
    \RGB[2] ,
    \RGB[1] ,
    \RGB[0] );
  output rst_n;
  output [4:0]\frame_data_reg[104] ;
  output [4:0]\frame_data_reg[64] ;
  output [4:0]\frame_data_reg[24] ;
  output [2:0]D;
  output \frame_data_reg[113] ;
  output \stabled_out_reg[0] ;
  output [2:0]\stabled_out_reg[0]_0 ;
  output \frame_data_reg[72] ;
  output \stabled_out_reg[0]_1 ;
  output [2:0]\stabled_out_reg[0]_2 ;
  output \frame_data_reg[35] ;
  output \stabled_out_reg[0]_3 ;
  output [1:0]\frame_data_reg[11] ;
  output LED17_B_OBUF;
  output LED17_G_OBUF;
  output LED17_R_OBUF;
  output LED16_B_OBUF;
  output LED16_G_OBUF;
  output LED16_R_OBUF;
  input clk_IBUF_BUFG;
  input RX_LINE_IBUF;
  input rst_n_IBUF;
  input [0:0]stabled_out;
  input \red_reg[2] ;
  input \red_reg[4] ;
  input \red_reg[3] ;
  input \red_reg[4]_0 ;
  input \green_reg[2] ;
  input \green_reg[4] ;
  input \green_reg[3] ;
  input \green_reg[4]_0 ;
  input \blue_reg[2] ;
  input \blue_reg[4] ;
  input \blue_reg[3] ;
  input \blue_reg[4]_0 ;
  input \RGB[2] ;
  input \RGB[1] ;
  input \RGB[0] ;

  wire [2:0]D;
  wire LED16_B_OBUF;
  wire LED16_G_OBUF;
  wire LED16_R_OBUF;
  wire LED17_B_OBUF;
  wire LED17_G_OBUF;
  wire LED17_R_OBUF;
  wire \RGB[0] ;
  wire \RGB[1] ;
  wire \RGB[2] ;
  wire RX_LINE_IBUF;
  wire \blue_reg[2] ;
  wire \blue_reg[3] ;
  wire \blue_reg[4] ;
  wire \blue_reg[4]_0 ;
  wire [4:2]blue_value;
  wire byte_done;
  wire clk_IBUF_BUFG;
  wire [4:0]\frame_data_reg[104] ;
  wire \frame_data_reg[113] ;
  wire [1:0]\frame_data_reg[11] ;
  wire [4:0]\frame_data_reg[24] ;
  wire \frame_data_reg[35] ;
  wire [4:0]\frame_data_reg[64] ;
  wire \frame_data_reg[72] ;
  wire frame_parser_inst_n_0;
  wire frame_parser_inst_n_1;
  wire frame_parser_inst_n_14;
  wire frame_parser_inst_n_15;
  wire frame_parser_inst_n_17;
  wire frame_parser_inst_n_18;
  wire frame_parser_inst_n_19;
  wire frame_parser_inst_n_20;
  wire frame_parser_inst_n_28;
  wire frame_parser_inst_n_29;
  wire frame_parser_inst_n_3;
  wire frame_parser_inst_n_31;
  wire frame_parser_inst_n_32;
  wire frame_parser_inst_n_33;
  wire frame_parser_inst_n_34;
  wire frame_parser_inst_n_4;
  wire frame_parser_inst_n_5;
  wire frame_parser_inst_n_6;
  wire \green_reg[2] ;
  wire \green_reg[3] ;
  wire \green_reg[4] ;
  wire \green_reg[4]_0 ;
  wire [4:2]green_value;
  wire mac_fsm_inst_n_100;
  wire mac_fsm_inst_n_101;
  wire mac_fsm_inst_n_15;
  wire mac_fsm_inst_n_16;
  wire mac_fsm_inst_n_17;
  wire mac_fsm_inst_n_18;
  wire mac_fsm_inst_n_19;
  wire mac_fsm_inst_n_21;
  wire mac_fsm_inst_n_22;
  wire mac_fsm_inst_n_23;
  wire mac_fsm_inst_n_24;
  wire mac_fsm_inst_n_25;
  wire mac_fsm_inst_n_26;
  wire mac_fsm_inst_n_30;
  wire mac_fsm_inst_n_31;
  wire mac_fsm_inst_n_32;
  wire mac_fsm_inst_n_34;
  wire mac_fsm_inst_n_35;
  wire mac_fsm_inst_n_4;
  wire mac_fsm_inst_n_42;
  wire mac_fsm_inst_n_43;
  wire mac_fsm_inst_n_44;
  wire mac_fsm_inst_n_45;
  wire mac_fsm_inst_n_46;
  wire mac_fsm_inst_n_48;
  wire mac_fsm_inst_n_49;
  wire mac_fsm_inst_n_5;
  wire mac_fsm_inst_n_50;
  wire mac_fsm_inst_n_51;
  wire mac_fsm_inst_n_52;
  wire mac_fsm_inst_n_53;
  wire mac_fsm_inst_n_57;
  wire mac_fsm_inst_n_58;
  wire mac_fsm_inst_n_59;
  wire mac_fsm_inst_n_6;
  wire mac_fsm_inst_n_61;
  wire mac_fsm_inst_n_62;
  wire mac_fsm_inst_n_69;
  wire mac_fsm_inst_n_7;
  wire mac_fsm_inst_n_70;
  wire mac_fsm_inst_n_71;
  wire mac_fsm_inst_n_72;
  wire mac_fsm_inst_n_73;
  wire mac_fsm_inst_n_75;
  wire mac_fsm_inst_n_76;
  wire mac_fsm_inst_n_77;
  wire mac_fsm_inst_n_78;
  wire mac_fsm_inst_n_79;
  wire mac_fsm_inst_n_8;
  wire mac_fsm_inst_n_80;
  wire mac_fsm_inst_n_84;
  wire mac_fsm_inst_n_85;
  wire mac_fsm_inst_n_86;
  wire mac_fsm_inst_n_88;
  wire mac_fsm_inst_n_89;
  wire mac_fsm_inst_n_9;
  wire mac_fsm_inst_n_93;
  wire mac_fsm_inst_n_94;
  wire mac_fsm_inst_n_95;
  wire mac_fsm_inst_n_96;
  wire mac_fsm_inst_n_97;
  wire mac_fsm_inst_n_98;
  wire mac_fsm_inst_n_99;
  wire [2:0]nst__0;
  wire [2:0]pst;
  wire \red_reg[2] ;
  wire \red_reg[3] ;
  wire \red_reg[4] ;
  wire \red_reg[4]_0 ;
  wire [4:2]red_value;
  wire rst_n;
  wire rst_n_IBUF;
  wire rx_inst_n_11;
  wire rx_inst_n_12;
  wire rx_inst_n_13;
  wire rx_inst_n_14;
  wire rx_inst_n_15;
  wire rx_inst_n_16;
  wire rx_inst_n_17;
  wire rx_inst_n_18;
  wire rx_inst_n_19;
  wire rx_inst_n_2;
  wire rx_inst_n_3;
  wire rx_inst_n_4;
  wire rx_inst_n_5;
  wire rx_inst_n_6;
  wire rx_inst_n_7;
  wire rx_inst_n_8;
  wire rx_inst_n_9;
  wire [0:0]stabled_out;
  wire \stabled_out_reg[0] ;
  wire [2:0]\stabled_out_reg[0]_0 ;
  wire \stabled_out_reg[0]_1 ;
  wire [2:0]\stabled_out_reg[0]_2 ;
  wire \stabled_out_reg[0]_3 ;
  wire str_frame;
  wire [2:2]temp_blue_d;
  wire [0:0]temp_blue_h;
  wire [4:0]temp_blue_o;
  wire [2:2]temp_green_d;
  wire [0:0]temp_green_h;
  wire [4:0]temp_green_o;
  wire [2:2]temp_red_d;
  wire [0:0]temp_red_h;
  wire [4:0]temp_red_o;

  frame_parser frame_parser_inst
       (.DI({temp_red_d,temp_red_o[2:1]}),
        .O({frame_parser_inst_n_0,frame_parser_inst_n_1,\frame_data_reg[104] [0]}),
        .S({mac_fsm_inst_n_30,mac_fsm_inst_n_31,mac_fsm_inst_n_32,temp_red_o[0]}),
        .\blue_reg[0] ({temp_blue_d,temp_blue_o[2:1]}),
        .\blue_reg[0]_0 ({mac_fsm_inst_n_84,mac_fsm_inst_n_85,mac_fsm_inst_n_86,temp_blue_o[0]}),
        .\blue_reg[4] ({mac_fsm_inst_n_72,mac_fsm_inst_n_73,temp_blue_h}),
        .\blue_reg[4]_0 ({mac_fsm_inst_n_99,mac_fsm_inst_n_100,mac_fsm_inst_n_101}),
        .\blue_reg[7] ({mac_fsm_inst_n_75,mac_fsm_inst_n_76}),
        .\blue_reg[7]_0 ({mac_fsm_inst_n_69,mac_fsm_inst_n_70,mac_fsm_inst_n_71}),
        .blue_value__25_carry__0_i_2({mac_fsm_inst_n_88,mac_fsm_inst_n_89,temp_blue_o[4]}),
        .blue_value__25_carry__0_i_2_0({mac_fsm_inst_n_77,mac_fsm_inst_n_78,mac_fsm_inst_n_79,mac_fsm_inst_n_80}),
        .\frame_data_reg[104] (\frame_data_reg[104] [4:2]),
        .\frame_data_reg[105] ({frame_parser_inst_n_3,frame_parser_inst_n_4,frame_parser_inst_n_5,frame_parser_inst_n_6}),
        .\frame_data_reg[17] ({blue_value,\frame_data_reg[24] [1]}),
        .\frame_data_reg[18] ({frame_parser_inst_n_28,frame_parser_inst_n_29,\frame_data_reg[24] [0]}),
        .\frame_data_reg[24] (\frame_data_reg[24] [4:2]),
        .\frame_data_reg[25] ({frame_parser_inst_n_31,frame_parser_inst_n_32,frame_parser_inst_n_33,frame_parser_inst_n_34}),
        .\frame_data_reg[57] ({green_value,\frame_data_reg[64] [1]}),
        .\frame_data_reg[58] ({frame_parser_inst_n_14,frame_parser_inst_n_15,\frame_data_reg[64] [0]}),
        .\frame_data_reg[64] (\frame_data_reg[64] [4:2]),
        .\frame_data_reg[65] ({frame_parser_inst_n_17,frame_parser_inst_n_18,frame_parser_inst_n_19,frame_parser_inst_n_20}),
        .\frame_data_reg[97] ({red_value,\frame_data_reg[104] [1]}),
        .\green_reg[0] ({temp_green_d,temp_green_o[2:1]}),
        .\green_reg[0]_0 ({mac_fsm_inst_n_57,mac_fsm_inst_n_58,mac_fsm_inst_n_59,temp_green_o[0]}),
        .\green_reg[4] ({mac_fsm_inst_n_45,mac_fsm_inst_n_46,temp_green_h}),
        .\green_reg[4]_0 ({mac_fsm_inst_n_96,mac_fsm_inst_n_97,mac_fsm_inst_n_98}),
        .\green_reg[7] ({mac_fsm_inst_n_48,mac_fsm_inst_n_49}),
        .\green_reg[7]_0 ({mac_fsm_inst_n_42,mac_fsm_inst_n_43,mac_fsm_inst_n_44}),
        .green_value__25_carry__0_i_2({mac_fsm_inst_n_61,mac_fsm_inst_n_62,temp_green_o[4]}),
        .green_value__25_carry__0_i_2_0({mac_fsm_inst_n_50,mac_fsm_inst_n_51,mac_fsm_inst_n_52,mac_fsm_inst_n_53}),
        .\red_reg[4] ({mac_fsm_inst_n_18,mac_fsm_inst_n_19,temp_red_h}),
        .\red_reg[4]_0 ({mac_fsm_inst_n_93,mac_fsm_inst_n_94,mac_fsm_inst_n_95}),
        .\red_reg[7] ({mac_fsm_inst_n_21,mac_fsm_inst_n_22}),
        .\red_reg[7]_0 ({mac_fsm_inst_n_15,mac_fsm_inst_n_16,mac_fsm_inst_n_17}),
        .red_value__25_carry__0_i_2({mac_fsm_inst_n_34,mac_fsm_inst_n_35,temp_red_o[4]}),
        .red_value__25_carry__0_i_2_0({mac_fsm_inst_n_23,mac_fsm_inst_n_24,mac_fsm_inst_n_25,mac_fsm_inst_n_26}));
  mac_fsm mac_fsm_inst
       (.D(D),
        .DI({temp_red_d,temp_red_o[2:1]}),
        .E(rx_inst_n_12),
        .\FSM_sequential_pst_reg[0]_0 (mac_fsm_inst_n_7),
        .\FSM_sequential_pst_reg[0]_1 (mac_fsm_inst_n_8),
        .\FSM_sequential_pst_reg[0]_2 (nst__0[0]),
        .\FSM_sequential_pst_reg[0]_3 (rx_inst_n_16),
        .\FSM_sequential_pst_reg[1]_0 (mac_fsm_inst_n_5),
        .\FSM_sequential_pst_reg[1]_1 (mac_fsm_inst_n_6),
        .\FSM_sequential_pst_reg[1]_2 (rx_inst_n_17),
        .\FSM_sequential_pst_reg[1]_3 (rx_inst_n_14),
        .\FSM_sequential_pst_reg[2]_0 (rx_inst_n_18),
        .LED16_B_OBUF(LED16_B_OBUF),
        .LED16_G_OBUF(LED16_G_OBUF),
        .LED16_R_OBUF(LED16_R_OBUF),
        .LED17_B_OBUF(LED17_B_OBUF),
        .LED17_G_OBUF(LED17_G_OBUF),
        .LED17_R_OBUF(LED17_R_OBUF),
        .O({frame_parser_inst_n_0,frame_parser_inst_n_1}),
        .Q(pst),
        .\RGB[0] (\RGB[0] ),
        .\RGB[1] (\RGB[1] ),
        .\RGB[2] (\RGB[2] ),
        .S({mac_fsm_inst_n_30,mac_fsm_inst_n_31,mac_fsm_inst_n_32,temp_red_o[0]}),
        .\blue_reg[2] (\blue_reg[2] ),
        .\blue_reg[3] (\blue_reg[3] ),
        .\blue_reg[4] (blue_value),
        .\blue_reg[4]_0 (\blue_reg[4] ),
        .\blue_reg[4]_1 (\blue_reg[4]_0 ),
        .blue_value__25_carry({frame_parser_inst_n_28,frame_parser_inst_n_29}),
        .blue_value__25_carry__0_i_3_0({frame_parser_inst_n_31,frame_parser_inst_n_32,frame_parser_inst_n_33,frame_parser_inst_n_34}),
        .\byte_data_count_reg[0]_0 (nst__0[2]),
        .\byte_data_count_reg[0]_1 (mac_fsm_inst_n_9),
        .\byte_data_count_reg[1]_0 (mac_fsm_inst_n_4),
        .\byte_data_count_reg[1]_1 (rx_inst_n_15),
        .byte_done(byte_done),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\frame_data_reg[100]_0 ({mac_fsm_inst_n_23,mac_fsm_inst_n_24,mac_fsm_inst_n_25,mac_fsm_inst_n_26}),
        .\frame_data_reg[104]_0 ({mac_fsm_inst_n_21,mac_fsm_inst_n_22}),
        .\frame_data_reg[105]_0 ({mac_fsm_inst_n_34,mac_fsm_inst_n_35,temp_red_o[4]}),
        .\frame_data_reg[106]_0 ({mac_fsm_inst_n_93,mac_fsm_inst_n_94,mac_fsm_inst_n_95}),
        .\frame_data_reg[113]_0 (\frame_data_reg[113] ),
        .\frame_data_reg[11]_0 ({mac_fsm_inst_n_84,mac_fsm_inst_n_85,mac_fsm_inst_n_86,temp_blue_o[0]}),
        .\frame_data_reg[11]_1 (\frame_data_reg[11] ),
        .\frame_data_reg[17]_0 ({mac_fsm_inst_n_72,mac_fsm_inst_n_73,temp_blue_h}),
        .\frame_data_reg[18]_0 ({temp_blue_d,temp_blue_o[2:1]}),
        .\frame_data_reg[19]_0 ({mac_fsm_inst_n_69,mac_fsm_inst_n_70,mac_fsm_inst_n_71}),
        .\frame_data_reg[24]_0 ({mac_fsm_inst_n_75,mac_fsm_inst_n_76}),
        .\frame_data_reg[25]_0 ({mac_fsm_inst_n_77,mac_fsm_inst_n_78,mac_fsm_inst_n_79,mac_fsm_inst_n_80}),
        .\frame_data_reg[25]_1 ({mac_fsm_inst_n_88,mac_fsm_inst_n_89,temp_blue_o[4]}),
        .\frame_data_reg[26]_0 ({mac_fsm_inst_n_99,mac_fsm_inst_n_100,mac_fsm_inst_n_101}),
        .\frame_data_reg[35]_0 (\frame_data_reg[35] ),
        .\frame_data_reg[51]_0 ({mac_fsm_inst_n_57,mac_fsm_inst_n_58,mac_fsm_inst_n_59,temp_green_o[0]}),
        .\frame_data_reg[57]_0 ({mac_fsm_inst_n_45,mac_fsm_inst_n_46,temp_green_h}),
        .\frame_data_reg[58]_0 ({temp_green_d,temp_green_o[2:1]}),
        .\frame_data_reg[59]_0 ({mac_fsm_inst_n_42,mac_fsm_inst_n_43,mac_fsm_inst_n_44}),
        .\frame_data_reg[60]_0 ({mac_fsm_inst_n_50,mac_fsm_inst_n_51,mac_fsm_inst_n_52,mac_fsm_inst_n_53}),
        .\frame_data_reg[64]_0 ({mac_fsm_inst_n_48,mac_fsm_inst_n_49}),
        .\frame_data_reg[65]_0 ({mac_fsm_inst_n_61,mac_fsm_inst_n_62,temp_green_o[4]}),
        .\frame_data_reg[66]_0 ({mac_fsm_inst_n_96,mac_fsm_inst_n_97,mac_fsm_inst_n_98}),
        .\frame_data_reg[72]_0 (\frame_data_reg[72] ),
        .\frame_data_reg[8]_0 (rx_inst_n_13),
        .\frame_data_reg[97]_0 ({mac_fsm_inst_n_18,mac_fsm_inst_n_19,temp_red_h}),
        .\frame_data_reg[99]_0 ({mac_fsm_inst_n_15,mac_fsm_inst_n_16,mac_fsm_inst_n_17}),
        .\green_reg[2] (\green_reg[2] ),
        .\green_reg[3] (\green_reg[3] ),
        .\green_reg[4] (green_value),
        .\green_reg[4]_0 (\green_reg[4] ),
        .\green_reg[4]_1 (\green_reg[4]_0 ),
        .green_value__25_carry({frame_parser_inst_n_14,frame_parser_inst_n_15}),
        .green_value__25_carry__0_i_3_0({frame_parser_inst_n_17,frame_parser_inst_n_18,frame_parser_inst_n_19,frame_parser_inst_n_20}),
        .\red_reg[2] (\red_reg[2] ),
        .\red_reg[3] (\red_reg[3] ),
        .\red_reg[4] (red_value),
        .\red_reg[4]_0 (\red_reg[4] ),
        .\red_reg[4]_1 (\red_reg[4]_0 ),
        .red_value__25_carry__0_i_3_0({frame_parser_inst_n_3,frame_parser_inst_n_4,frame_parser_inst_n_5,frame_parser_inst_n_6}),
        .rst_n(rst_n),
        .rst_n_IBUF(rst_n_IBUF),
        .stabled_out(stabled_out),
        .\stabled_out_reg[0] (\stabled_out_reg[0] ),
        .\stabled_out_reg[0]_0 (\stabled_out_reg[0]_0 ),
        .\stabled_out_reg[0]_1 (\stabled_out_reg[0]_1 ),
        .\stabled_out_reg[0]_2 (\stabled_out_reg[0]_2 ),
        .\stabled_out_reg[0]_3 (\stabled_out_reg[0]_3 ),
        .str_frame(str_frame),
        .\temp_frame_reg_reg[7]_0 ({rx_inst_n_2,rx_inst_n_3,rx_inst_n_4,rx_inst_n_5,rx_inst_n_6,rx_inst_n_7,rx_inst_n_8,rx_inst_n_9}),
        .\temp_frame_reg_reg[8]_0 (rx_inst_n_11),
        .\temp_frame_reg_reg[8]_1 (rx_inst_n_19));
  Rx rx_inst
       (.E(rx_inst_n_12),
        .\FSM_sequential_pst[0]_i_3_0 (mac_fsm_inst_n_7),
        .\FSM_sequential_pst_reg[0] (rx_inst_n_11),
        .\FSM_sequential_pst_reg[0]_0 (mac_fsm_inst_n_5),
        .\FSM_sequential_pst_reg[0]_1 (mac_fsm_inst_n_8),
        .\FSM_sequential_pst_reg[0]_2 (mac_fsm_inst_n_6),
        .\FSM_sequential_pst_reg[0]_3 (mac_fsm_inst_n_9),
        .\FSM_sequential_pst_reg[2] (nst__0[0]),
        .\FSM_sequential_pst_reg[2]_0 (rx_inst_n_13),
        .Q(pst),
        .RX_LINE_IBUF(RX_LINE_IBUF),
        .\br16_pulse_cnt_reg[3]_0 (rst_n),
        .byte_done(byte_done),
        .byte_done_reg_0(rx_inst_n_15),
        .byte_done_reg_1(rx_inst_n_18),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_vec_reg[2]_0 (rx_inst_n_16),
        .\rx_vec_reg[2]_1 (rx_inst_n_19),
        .\rx_vec_reg[4]_0 (rx_inst_n_14),
        .\rx_vec_reg[5]_0 (rx_inst_n_17),
        .\rx_vec_reg[7]_0 ({rx_inst_n_2,rx_inst_n_3,rx_inst_n_4,rx_inst_n_5,rx_inst_n_6,rx_inst_n_7,rx_inst_n_8,rx_inst_n_9}),
        .str_frame(str_frame),
        .\temp_frame_reg_reg[0] (nst__0[2]),
        .\temp_frame_reg_reg[0]_0 (mac_fsm_inst_n_4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
