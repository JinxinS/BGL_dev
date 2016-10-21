//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : siw_memory_bram_6.v
// AUTHOR         : SideGen V1.4
//----------------------------------------------------------------------
// RELEASE HISTORY
// VERSION DATE         AUTHOR
// 1.0     Sep  9 2016  SideGen V1.4
//----------------------------------------------------------------------
// PURPOSE  : 
//----------------------------------------------------------------------
// PARAMETERS 
// PARAM NAME     RANGE    : DESCRIPTION       : DEFAULT : UNITS
// Generated code has NO parameters 
//----------------------------------------------------------------------
// REUSE ISSUES 
// Reset Strategy      : N/A
// Clock Domains       : 1
// Critical Timing     : N/A
// Test Features       : N/A
// Asynchronous I/F    : N/A
// Scan Methodology    : N/A
// Instantiations      : N/A 
// Synthesizable (y/n) : Yes
// Other               : Automatic generated code.
//
`timescale 1ps / 1ps
module siw_memory_bram_6 ( 
  input                 siw_memory_bram_6_reset, 
  input                 siw_memory_bram_6_init, 
  input                 siw_memory_bram_6_mem_sel, 
  input                 siw_memory_bram_6_clk_a, 
  input                 siw_memory_bram_6_enable_a, 
  input                 siw_memory_bram_6_write_en_a, 
  input         [13:0]  siw_memory_bram_6_address_a, 
  input         [31:0]  siw_memory_bram_6_input_data_a, 
  input         [1:0]   siw_memory_bram_6_mem_conf_a, 
  output wire   [31:0]  siw_memory_bram_6_output_data_a, 
  input                 siw_memory_bram_6_clk_b, 
  input                 siw_memory_bram_6_enable_b, 
  input                 siw_memory_bram_6_write_en_b, 
  input         [13:0]  siw_memory_bram_6_address_b, 
  input         [31:0]  siw_memory_bram_6_input_data_b, 
  input         [1:0]   siw_memory_bram_6_mem_conf_b, 
  output wire   [31:0]  siw_memory_bram_6_output_data_b);


  wire   [31:0]  data_a_reg0;
  reg    [31:0]  data_a_reg1;
  wire   [31:0]  data_b_reg0;
  reg    [31:0]  data_b_reg1;
  wire   [31:0]  data_a;
  wire   [31:0]  data_b;
  wire   [13:0]  addr_a;
  wire   [13:0]  addr_b;
  wire           wr_en_a;
  wire           wr_en_b;
  reg            wr_a;
  reg            wr_a_1;
  reg            wr_a_2;
  reg            wr_a_3;
  reg            wr_b;
  reg            wr_b_1;
  reg            wr_b_2;
  reg            wr_b_3;
  wire           wr_a_1_nxt;
  wire           wr_a_2_nxt;
  wire           wr_a_3_nxt;
  wire           wr_b_1_nxt;
  wire           wr_b_2_nxt;
  wire           wr_b_3_nxt;


//--------------
// Assign Part -
//--------------
  assign siw_memory_bram_6_output_data_a = data_a_reg1;
  assign siw_memory_bram_6_output_data_b = data_b_reg1;
  assign data_a = siw_memory_bram_6_input_data_a;
  assign data_b = siw_memory_bram_6_input_data_b;
  assign addr_a = siw_memory_bram_6_address_a;
  assign addr_b = siw_memory_bram_6_address_b;
  assign wr_en_a = wr_a & (siw_memory_bram_6_enable_a | siw_memory_bram_6_mem_sel);
  assign wr_en_b = wr_b & siw_memory_bram_6_enable_b;
  assign wr_a_1_nxt = (siw_memory_bram_6_init == 1'd1) ? 1'd0 : siw_memory_bram_6_write_en_a;
  assign wr_a_2_nxt = (siw_memory_bram_6_init == 1'd1) ? 1'd0 : wr_a_1;
  assign wr_a_3_nxt = (siw_memory_bram_6_init == 1'd1) ? 1'd0 : wr_a_2;
  assign wr_b_1_nxt = (siw_memory_bram_6_init == 1'd1) ? 1'd0 : siw_memory_bram_6_write_en_b;
  assign wr_b_2_nxt = (siw_memory_bram_6_init == 1'd1) ? 1'd0 : wr_b_1;
  assign wr_b_3_nxt = (siw_memory_bram_6_init == 1'd1) ? 1'd0 : wr_b_2;

//------------------
// Instantion Part -
//------------------
  tp_mem_2r2w_16384_32 siw_memory_6 (
      .clk_a(siw_memory_bram_6_clk_a),
      .wen_a(wr_en_a),
      .addr_a(addr_a),
      .data_in_a(data_a),
      .data_out_a(data_a_reg0),
      .clk_b(siw_memory_bram_6_clk_b),
      .wen_b(wr_en_b),
      .addr_b(addr_b),
      .data_in_b(data_b),
      .data_out_b(data_b_reg0));


//-------------------
// Combinatory Part -
//-------------------
  always @(siw_memory_bram_6_mem_conf_a or siw_memory_bram_6_write_en_a or wr_a_1 or wr_a_2 or wr_a_3)
  begin
    case (siw_memory_bram_6_mem_conf_a)
      2'd0 : wr_a = siw_memory_bram_6_write_en_a;
      2'd1 : wr_a = wr_a_1;
      2'd2 : wr_a = wr_a_2;
      default : wr_a = wr_a_3;
    endcase
  end

  always @(siw_memory_bram_6_mem_conf_b or siw_memory_bram_6_write_en_b or wr_b_1 or wr_b_2 or wr_b_3)
  begin
    case (siw_memory_bram_6_mem_conf_b)
      2'd0 : wr_b = siw_memory_bram_6_write_en_b;
      2'd1 : wr_b = wr_b_1;
      2'd2 : wr_b = wr_b_2;
      default : wr_b = wr_b_3;
    endcase
  end

//------------------
// Sequencial Part -
//------------------
  always @(posedge siw_memory_bram_6_clk_a or posedge siw_memory_bram_6_reset)
  begin
    if (siw_memory_bram_6_reset == 1'b1)
      begin
        wr_a_1 <= 1'd0;
        wr_a_2 <= 1'd0;
        wr_a_3 <= 1'd0;
      end
    else
      begin
        wr_a_1 <= wr_a_1_nxt;
        wr_a_2 <= wr_a_2_nxt;
        wr_a_3 <= wr_a_3_nxt;
      end
  end

  always @(posedge siw_memory_bram_6_clk_b or posedge siw_memory_bram_6_reset)
  begin
    if (siw_memory_bram_6_reset == 1'b1)
      begin
        wr_b_1 <= 1'd0;
        wr_b_2 <= 1'd0;
        wr_b_3 <= 1'd0;
      end
    else
      begin
        wr_b_1 <= wr_b_1_nxt;
        wr_b_2 <= wr_b_2_nxt;
        wr_b_3 <= wr_b_3_nxt;
      end
  end

  always @(posedge siw_memory_bram_6_clk_a)
  begin
        data_a_reg1 <= data_a_reg0;
  end

  always @(posedge siw_memory_bram_6_clk_b)
  begin
        data_b_reg1 <= data_b_reg0;
  end

endmodule
