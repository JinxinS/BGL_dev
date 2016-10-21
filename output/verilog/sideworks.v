//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : sideworks.v
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
module sideworks ( 
  input                 sideworks_clk, 
  input                 sideworks_reset, 
  input         [13:0]  sideworks_debug_addr, 
  input         [3:0]   sideworks_debug_mem_sel, 
  input                 sideworks_debug_takeover, 
  input         [31:0]  sideworks_debug_write_data, 
  output reg    [31:0]  sideworks_debug_read_data, 
  input                 sideworks_debug_wr_req, 
  input                 sideworks_ctr_avl_ready, 
  output wire           sideworks_ctr_avl_burstbegin, 
  output wire   [27:0]  sideworks_ctr_avl_addr, 
  input                 sideworks_ctr_avl_rdata_valid, 
  input         [31:0]  sideworks_ctr_avl_rdata, 
  output wire   [3:0]   sideworks_ctr_avl_be, 
  output wire   [7:0]   sideworks_ctr_avl_size, 
  output wire           sideworks_ctr_avl_read_req, 
  output wire   [31:0]  sideworks_ctr_avl_wdata, 
  output wire           sideworks_ctr_avl_write_req, 
  input                 sideworks_ctr_shared_mem_fwd_done, 
  output wire           sideworks_ctr_shared_mem_fwd_available, 
  input         [9:0]   sideworks_ctr_shared_mem0_fwd_addr_a, 
  output wire   [31:0]  sideworks_ctr_shared_mem0_fwd_data_out_a, 
  input         [9:0]   sideworks_ctr_shared_mem0_fwd_addr_b, 
  output wire   [31:0]  sideworks_ctr_shared_mem0_fwd_data_out_b, 
  output wire           sideworks_ctr_shared_mem_bwd_done, 
  input                 sideworks_ctr_shared_mem_bwd_available, 
  output wire   [9:0]   sideworks_ctr_shared_mem0_bwd_addr_a, 
  input         [31:0]  sideworks_ctr_shared_mem0_bwd_data_out_a, 
  output wire   [9:0]   sideworks_ctr_shared_mem0_bwd_addr_b, 
  input         [31:0]  sideworks_ctr_shared_mem0_bwd_data_out_b, 
  input                 sideworks_mem_sel, 
  input         [31:0]  sideworks_conf_data_in, 
  input                 sideworks_conf_req_in, 
  input                 sideworks_ctr_req_in, 
  input         [6:0]   sideworks_ctr_addr, 
  input                 sideworks_ctr_wr, 
  input         [31:0]  sideworks_ctr_data_in, 
  output wire   [31:0]  sideworks_ctr_data_out);


  wire   [15:0]  transfer_MB_done_num;
  wire           done;
  wire           reset_i;
  wire   [60:0]  read_xbar_conf;
  wire   [145:0] func_units_conf;
  wire           init_siw;
  wire           all_disable;
  wire           write_en_ram0_a;
  wire   [9:0]   mem_0_addr_a;
  wire   [13:0]  extend_mem_0_addr_a;
  wire   [31:0]  data_to_ram0_a;
  wire   [1:0]   mem_0_conf_a;
  wire           write_en_ram0_b;
  wire   [9:0]   mem_0_addr_b;
  wire   [13:0]  extend_mem_0_addr_b;
  wire   [31:0]  data_to_ram0_b;
  wire   [1:0]   mem_0_conf_b;
  wire           write_en_ram1_a;
  wire   [9:0]   mem_1_addr_a;
  wire   [13:0]  extend_mem_1_addr_a;
  wire   [31:0]  data_to_ram1_a;
  wire   [1:0]   mem_1_conf_a;
  wire           write_en_ram1_b;
  wire   [9:0]   mem_1_addr_b;
  wire   [13:0]  extend_mem_1_addr_b;
  wire   [31:0]  data_to_ram1_b;
  wire   [1:0]   mem_1_conf_b;
  wire           write_en_ram2_a;
  wire   [9:0]   mem_2_addr_a;
  wire   [13:0]  extend_mem_2_addr_a;
  wire   [31:0]  data_to_ram2_a;
  wire   [1:0]   mem_2_conf_a;
  wire           write_en_ram2_b;
  wire   [9:0]   mem_2_addr_b;
  wire   [13:0]  extend_mem_2_addr_b;
  wire   [31:0]  data_to_ram2_b;
  wire   [1:0]   mem_2_conf_b;
  wire           write_en_ram3_a;
  wire   [9:0]   mem_3_addr_a;
  wire   [13:0]  extend_mem_3_addr_a;
  wire   [31:0]  data_to_ram3_a;
  wire   [1:0]   mem_3_conf_a;
  wire           write_en_ram3_b;
  wire   [9:0]   mem_3_addr_b;
  wire   [13:0]  extend_mem_3_addr_b;
  wire   [31:0]  data_to_ram3_b;
  wire   [1:0]   mem_3_conf_b;
  wire           write_en_ram4_a;
  wire   [9:0]   mem_4_addr_a;
  wire   [13:0]  extend_mem_4_addr_a;
  wire   [31:0]  data_to_ram4_a;
  wire   [1:0]   mem_4_conf_a;
  wire           write_en_ram4_b;
  wire   [9:0]   mem_4_addr_b;
  wire   [13:0]  extend_mem_4_addr_b;
  wire   [31:0]  data_to_ram4_b;
  wire   [1:0]   mem_4_conf_b;
  wire           write_en_ram5_a;
  wire   [9:0]   mem_5_addr_a;
  wire   [13:0]  extend_mem_5_addr_a;
  wire   [31:0]  data_to_ram5_a;
  wire   [1:0]   mem_5_conf_a;
  wire           write_en_ram5_b;
  wire   [9:0]   mem_5_addr_b;
  wire   [13:0]  extend_mem_5_addr_b;
  wire   [31:0]  data_to_ram5_b;
  wire   [1:0]   mem_5_conf_b;
  wire           write_en_ram6_a;
  wire   [13:0]  mem_6_addr_a;
  wire   [13:0]  extend_mem_6_addr_a;
  wire   [31:0]  data_to_ram6_a;
  wire   [1:0]   mem_6_conf_a;
  wire           write_en_ram6_b;
  wire   [13:0]  mem_6_addr_b;
  wire   [13:0]  extend_mem_6_addr_b;
  wire   [31:0]  data_to_ram6_b;
  wire   [1:0]   mem_6_conf_b;
  wire           write_en_ram7_a;
  wire   [9:0]   mem_7_addr_a;
  wire   [13:0]  extend_mem_7_addr_a;
  wire   [31:0]  data_to_ram7_a;
  wire   [1:0]   mem_7_conf_a;
  wire           write_en_ram7_b;
  wire   [9:0]   mem_7_addr_b;
  wire   [13:0]  extend_mem_7_addr_b;
  wire   [31:0]  data_to_ram7_b;
  wire   [1:0]   mem_7_conf_b;
  wire           write_en_ram8_a;
  wire   [9:0]   mem_8_addr_a;
  wire   [13:0]  extend_mem_8_addr_a;
  wire   [31:0]  data_to_ram8_a;
  wire   [1:0]   mem_8_conf_a;
  wire           write_en_ram8_b;
  wire   [9:0]   mem_8_addr_b;
  wire   [13:0]  extend_mem_8_addr_b;
  wire   [31:0]  data_to_ram8_b;
  wire   [1:0]   mem_8_conf_b;
  wire   [31:0]  data_from_ram0_a;
  wire   [31:0]  data_from_ram0_b;
  wire   [31:0]  data_from_ram1_a;
  wire   [31:0]  data_from_ram1_b;
  wire   [31:0]  data_from_ram2_a;
  wire   [31:0]  data_from_ram2_b;
  wire   [31:0]  data_from_ram3_a;
  wire   [31:0]  data_from_ram3_b;
  wire   [31:0]  data_from_ram4_a;
  wire   [31:0]  data_from_ram4_b;
  wire   [31:0]  data_from_ram5_a;
  wire   [31:0]  data_from_ram5_b;
  wire   [31:0]  data_from_ram6_a;
  wire   [31:0]  data_from_ram6_b;
  wire   [31:0]  data_from_ram7_a;
  wire   [31:0]  data_from_ram7_b;
  wire   [31:0]  data_from_ram8_a;
  wire   [31:0]  data_from_ram8_b;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A0;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A1;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A2;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A3;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B0;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B1;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B2;
  wire   [31:0]  data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B3;
  wire           data_from_SIW_CTRL_SIW_CTRL_auto_0_en;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out0;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out1;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out2;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out3;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out0;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out1;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out2;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out3;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out0;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out1;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out2;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out3;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out4;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out5;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out6;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out7;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out8;
  wire   [7:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_out9;
  wire   [1:0]   data_from_SIW_CTRL_SIW_CTRL_auto_0_pl;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_0_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_1_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_2_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_3_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_4_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_5_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_6_out;
  wire   [31:0]  data_from_BADD3_32_BADD3_32_g0_auto_7_out;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_0_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_0_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_1_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_1_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_10_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_10_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_2_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_2_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_3_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_3_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_4_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_4_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_5_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_5_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_6_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_6_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_7_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_7_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_8_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_8_sub;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_9_add;
  wire   [31:0]  data_from_BADD_32_BADD_32_g0_auto_9_sub;
  wire           data_from_BAU_12_BAU_12_g0_auto_0_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_0_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_0_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_0_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_0_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_0_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_0_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_1_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_1_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_1_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_1_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_1_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_1_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_1_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_10_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_10_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_10_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_10_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_10_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_10_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_10_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_11_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_11_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_11_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_11_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_11_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_11_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_11_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_12_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_12_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_12_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_12_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_12_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_12_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_12_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_13_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_13_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_13_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_13_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_13_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_13_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_13_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_2_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_2_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_2_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_2_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_2_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_2_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_2_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_3_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_3_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_3_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_3_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_3_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_3_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_3_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_4_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_4_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_4_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_4_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_4_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_4_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_4_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_5_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_5_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_5_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_5_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_5_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_5_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_5_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_6_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_6_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_6_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_6_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_6_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_6_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_6_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_7_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_7_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_7_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_7_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_7_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_7_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_7_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_8_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_8_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_8_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_8_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_8_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_8_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_8_out_revert;
  wire           data_from_BAU_12_BAU_12_g0_auto_9_eq;
  wire           data_from_BAU_12_BAU_12_g0_auto_9_gt;
  wire           data_from_BAU_12_BAU_12_g0_auto_9_lt;
  wire           data_from_BAU_12_BAU_12_g0_auto_9_ne;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_9_out;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_9_out_inc;
  wire   [11:0]  data_from_BAU_12_BAU_12_g0_auto_9_out_revert;
  wire           data_from_BAU_14_BAU_14_g0_auto_0_eq;
  wire           data_from_BAU_14_BAU_14_g0_auto_0_gt;
  wire           data_from_BAU_14_BAU_14_g0_auto_0_lt;
  wire           data_from_BAU_14_BAU_14_g0_auto_0_ne;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_0_out;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_0_out_revert;
  wire           data_from_BAU_14_BAU_14_g0_auto_1_eq;
  wire           data_from_BAU_14_BAU_14_g0_auto_1_gt;
  wire           data_from_BAU_14_BAU_14_g0_auto_1_lt;
  wire           data_from_BAU_14_BAU_14_g0_auto_1_ne;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_1_out;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_1_out_revert;
  wire           data_from_BAU_14_BAU_14_g0_auto_2_eq;
  wire           data_from_BAU_14_BAU_14_g0_auto_2_gt;
  wire           data_from_BAU_14_BAU_14_g0_auto_2_lt;
  wire           data_from_BAU_14_BAU_14_g0_auto_2_ne;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_2_out;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_2_out_revert;
  wire           data_from_BAU_14_BAU_14_g0_auto_3_eq;
  wire           data_from_BAU_14_BAU_14_g0_auto_3_gt;
  wire           data_from_BAU_14_BAU_14_g0_auto_3_lt;
  wire           data_from_BAU_14_BAU_14_g0_auto_3_ne;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_3_out;
  wire   [13:0]  data_from_BAU_14_BAU_14_g0_auto_3_out_revert;
  wire   [7:0]   data_from_BD_BD_g0_auto_0_out0;
  wire   [7:0]   data_from_BD_BD_g0_auto_0_out1;
  wire   [7:0]   data_from_BD_BD_g0_auto_0_out2;
  wire   [7:0]   data_from_BD_BD_g0_auto_0_out3;
  wire   [7:0]   data_from_BD_BD_g0_auto_1_out0;
  wire   [7:0]   data_from_BD_BD_g0_auto_1_out1;
  wire   [7:0]   data_from_BD_BD_g0_auto_1_out2;
  wire   [7:0]   data_from_BD_BD_g0_auto_1_out3;
  wire           data_from_BLU_1_BLU_1_g0_auto_0_out;
  wire           data_from_BLU_1_BLU_1_g0_auto_1_out;
  wire   [31:0]  data_from_BM_BM_g0_auto_0_out;
  wire   [31:0]  data_from_BM_BM_g0_auto_1_out;
  wire   [31:0]  data_from_BM_BM_g0_auto_2_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_0_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_1_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_2_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_3_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_4_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_5_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_6_out;
  wire   [31:0]  data_from_CLIP_32_CLIP_32_g0_auto_7_out;
  wire   [31:0]  data_from_CONC_32_CONC_32_g0_auto_0_out;
  wire   [31:0]  data_from_CONC_32_CONC_32_g0_auto_1_out;
  wire           data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
  wire   [31:0]  data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out;
  wire   [31:0]  data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g00_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g01_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g02_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g03_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g04_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g05_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g06_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g07_out;
  wire   [31:0]  data_from_GENERIC_VALUE_g08_out;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out_64_lsh1;
  wire   [31:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out_64;
  wire   [63:0]  data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out_64_lsh1;
  wire   [31:0]  data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_4_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_5_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_6_out;
  wire   [31:0]  data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_7_out;
  wire           data_from_ND_ND_g0_auto_0_leA;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_leMO;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_leMO_;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_leN;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_leX;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_leY;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_num;
  wire           data_from_ND_ND_g0_auto_0_ulA;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_ulMO;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_ulMO_;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_ulN;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_ulX;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_ulY;
  wire           data_from_ND_ND_g0_auto_0_upA;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_upMO;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_upMO_;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_upN;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_upX;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_upY;
  wire           data_from_ND_ND_g0_auto_0_urA;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_urMO;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_urMO_;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_urN;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_urX;
  wire   [31:0]  data_from_ND_ND_g0_auto_0_urY;
  wire           data_from_ONE_g00_fixed_out_1;
  wire   [11:0]  data_from_ONE_g00_fixed_out_12;
  wire   [31:0]  data_from_ONE_g00_fixed_out_32;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b0;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b1;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b10;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b11;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b12;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b13;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b14;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b15;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b16;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b17;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b18;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b19;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b2;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b20;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b21;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b22;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b23;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b24;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b25;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b26;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b27;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b28;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b29;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b3;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b30;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b31;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b4;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b5;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b6;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b7;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b8;
  wire           data_from_SEP_32_SEP_32_g0_auto_0_b9;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b0;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b1;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b10;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b11;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b12;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b13;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b14;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b15;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b16;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b17;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b18;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b19;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b2;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b20;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b21;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b22;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b23;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b24;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b25;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b26;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b27;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b28;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b29;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b3;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b30;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b31;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b4;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b5;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b6;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b7;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b8;
  wire           data_from_SEP_32_SEP_32_g0_auto_1_b9;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_out;
  wire   [31:0]  data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_out;
  wire   [11:0]  data_from_SREG_12_SREG_12_g0_auto_0_out;
  wire   [11:0]  data_from_SREG_12_SREG_12_g0_auto_1_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_0_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_1_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_2_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_3_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_4_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_5_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_6_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_7_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_8_out;
  wire   [31:0]  data_from_SREG_32_SREG_32_g0_auto_9_out;
  wire   [11:0]  data_from_THREE_g00_fixed_out_12;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_H_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_H_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_I_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_J_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_K_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_H_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_H_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_H_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_I_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_J_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_K_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_H_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_;
  wire           data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_;
  wire   [11:0]  data_from_TWO_g00_fixed_out_12;
  wire           data_from_ZERO_g00_fixed_out_1;
  wire   [11:0]  data_from_ZERO_g00_fixed_out_12;
  wire   [13:0]  data_from_ZERO_g00_fixed_out_14;
  wire   [1:0]   data_from_ZERO_g00_fixed_out_2;
  wire   [31:0]  data_from_ZERO_g00_fixed_out_32;
  wire   [6:0]   data_from_ZERO_g00_fixed_out_7;
  wire   [7:0]   data_from_ZERO_g00_fixed_out_8;
  wire   [31:0]  data_from_mONE_g00_fixed_out_32;
  wire           data_to_SIW_CTRL_SIW_CTRL_auto_0_done;
  wire   [7:0]   data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_a;
  wire   [7:0]   data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_b;
  wire           data_to_SIW_CTRL_SIW_CTRL_auto_0_is_last;
  wire   [11:0]  data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_a;
  wire   [11:0]  data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_b;
  wire   [6:0]   data_to_SIW_CTRL_SIW_CTRL_auto_0_next;
  wire           data_to_SIW_CTRL_SIW_CTRL_auto_0_rd_next;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_0_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_0_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_0_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_1_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_1_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_1_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_2_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_2_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_2_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_3_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_3_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_3_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_4_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_4_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_4_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_5_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_5_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_5_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_6_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_6_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_6_i2;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_7_i0;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_7_i1;
  wire   [31:0]  data_to_BADD3_32_BADD3_32_g0_auto_7_i2;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_0_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_0_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_1_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_1_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_10_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_10_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_2_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_2_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_3_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_3_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_4_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_4_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_5_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_5_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_6_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_6_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_7_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_7_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_8_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_8_i1;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_9_i0;
  wire   [31:0]  data_to_BADD_32_BADD_32_g0_auto_9_i1;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_0_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_0_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_0_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_0_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_0_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_1_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_1_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_1_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_1_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_1_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_10_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_10_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_10_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_10_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_10_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_11_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_11_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_11_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_11_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_11_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_12_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_12_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_12_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_12_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_12_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_13_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_13_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_13_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_13_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_13_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_2_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_2_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_2_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_2_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_2_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_3_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_3_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_3_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_3_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_3_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_4_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_4_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_4_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_4_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_4_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_5_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_5_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_5_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_5_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_5_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_6_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_6_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_6_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_6_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_6_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_7_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_7_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_7_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_7_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_7_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_8_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_8_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_8_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_8_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_8_ld_val;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_9_cmp;
  wire           data_to_BAU_12_BAU_12_g0_auto_9_en;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_9_inc;
  wire           data_to_BAU_12_BAU_12_g0_auto_9_ld;
  wire   [11:0]  data_to_BAU_12_BAU_12_g0_auto_9_ld_val;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_0_cmp;
  wire           data_to_BAU_14_BAU_14_g0_auto_0_en;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_0_inc;
  wire           data_to_BAU_14_BAU_14_g0_auto_0_ld;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_0_ld_val;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_1_cmp;
  wire           data_to_BAU_14_BAU_14_g0_auto_1_en;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_1_inc;
  wire           data_to_BAU_14_BAU_14_g0_auto_1_ld;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_1_ld_val;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_2_cmp;
  wire           data_to_BAU_14_BAU_14_g0_auto_2_en;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_2_inc;
  wire           data_to_BAU_14_BAU_14_g0_auto_2_ld;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_2_ld_val;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_3_cmp;
  wire           data_to_BAU_14_BAU_14_g0_auto_3_en;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_3_inc;
  wire           data_to_BAU_14_BAU_14_g0_auto_3_ld;
  wire   [13:0]  data_to_BAU_14_BAU_14_g0_auto_3_ld_val;
  wire   [31:0]  data_to_BD_BD_g0_auto_0_in;
  wire   [31:0]  data_to_BD_BD_g0_auto_1_in;
  wire           data_to_BLU_1_BLU_1_g0_auto_0_en;
  wire           data_to_BLU_1_BLU_1_g0_auto_0_i0;
  wire           data_to_BLU_1_BLU_1_g0_auto_0_i1;
  wire           data_to_BLU_1_BLU_1_g0_auto_1_en;
  wire           data_to_BLU_1_BLU_1_g0_auto_1_i0;
  wire           data_to_BLU_1_BLU_1_g0_auto_1_i1;
  wire   [7:0]   data_to_BM_BM_g0_auto_0_i0;
  wire   [7:0]   data_to_BM_BM_g0_auto_0_i1;
  wire   [7:0]   data_to_BM_BM_g0_auto_0_i2;
  wire   [7:0]   data_to_BM_BM_g0_auto_0_i3;
  wire   [7:0]   data_to_BM_BM_g0_auto_1_i0;
  wire   [7:0]   data_to_BM_BM_g0_auto_1_i1;
  wire   [7:0]   data_to_BM_BM_g0_auto_1_i2;
  wire   [7:0]   data_to_BM_BM_g0_auto_1_i3;
  wire   [7:0]   data_to_BM_BM_g0_auto_2_i0;
  wire   [7:0]   data_to_BM_BM_g0_auto_2_i1;
  wire   [7:0]   data_to_BM_BM_g0_auto_2_i2;
  wire   [7:0]   data_to_BM_BM_g0_auto_2_i3;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_0_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_0_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_0_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_1_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_1_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_1_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_2_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_2_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_2_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_3_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_3_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_3_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_4_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_4_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_4_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_5_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_5_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_5_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_6_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_6_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_6_up;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_7_down;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_7_in;
  wire   [31:0]  data_to_CLIP_32_CLIP_32_g0_auto_7_up;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b0;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b1;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b10;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b11;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b12;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b13;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b14;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b15;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b16;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b17;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b18;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b19;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b2;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b20;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b21;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b22;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b23;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b24;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b25;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b26;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b27;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b28;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b29;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b3;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b30;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b31;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b4;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b5;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b6;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b7;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b8;
  wire           data_to_CONC_32_CONC_32_g0_auto_0_b9;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b0;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b1;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b10;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b11;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b12;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b13;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b14;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b15;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b16;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b17;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b18;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b19;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b2;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b20;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b21;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b22;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b23;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b24;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b25;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b26;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b27;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b28;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b29;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b3;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b30;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b31;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b4;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b5;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b6;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b7;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b8;
  wire           data_to_CONC_32_CONC_32_g0_auto_1_b9;
  wire           data_to_DLINE_1_16_DLINE_1_16_g0_auto_0_in;
  wire   [31:0]  data_to_DLINE_32_16_DLINE_32_16_g0_auto_0_in;
  wire   [31:0]  data_to_DLINE_32_16_DLINE_32_16_g0_auto_1_in;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_lohi;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i0;
  wire   [31:0]  data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i1;
  wire           data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_lohi;
  wire   [31:0]  data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i0;
  wire   [31:0]  data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i1;
  wire           data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_s0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i0;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i1;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i2;
  wire   [31:0]  data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i3;
  wire   [1:0]   data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_s0;
  wire   [31:0]  data_to_ND_ND_g0_auto_0_bSize;
  wire   [1:0]   data_to_ND_ND_g0_auto_0_chroma;
  wire           data_to_ND_ND_g0_auto_0_en;
  wire           data_to_ND_ND_g0_auto_0_mode;
  wire   [31:0]  data_to_ND_ND_g0_auto_0_posX;
  wire   [31:0]  data_to_ND_ND_g0_auto_0_posY;
  wire   [31:0]  data_to_SEP_32_SEP_32_g0_auto_0_in;
  wire   [31:0]  data_to_SEP_32_SEP_32_g0_auto_1_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_in;
  wire   [31:0]  data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_in;
  wire           data_to_SREG_12_SREG_12_g0_auto_0_en;
  wire   [11:0]  data_to_SREG_12_SREG_12_g0_auto_0_in;
  wire           data_to_SREG_12_SREG_12_g0_auto_1_en;
  wire   [11:0]  data_to_SREG_12_SREG_12_g0_auto_1_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_0_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_0_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_1_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_1_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_2_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_2_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_3_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_3_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_4_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_4_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_5_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_5_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_6_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_6_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_7_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_7_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_8_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_8_in;
  wire           data_to_SREG_32_SREG_32_g0_auto_9_en;
  wire   [31:0]  data_to_SREG_32_SREG_32_g0_auto_9_in;
  wire           data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_en;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_h;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k;
  wire           data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_en;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_h;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j;
  wire   [11:0]  data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k;
  wire   [5:0]   mux_select_a;
  wire   [5:0]   mux_select_b;
  wire   [11:0]  siw_regfile_OFFSET_loop;
  wire   [11:0]  siw_regfile_OFFSET_mult;
  wire   [11:0]  siw_regfile_OFFSET_add;
  wire           siw_regfile_ctr_kernel_stopped;
  wire           siw_regfile_ctr_kernel_run;
  wire           siw_regfile_ctr_run;
  wire           siw_ctr_kernel_run;
  wire   [7:0]   siw_regfile_ctr_kernel_load_dp_number;
  wire           siw_regfile_ctr_kernel_load_dp;
  wire           siw_regfile_ctr_kernel_dp_conf_ready;
  wire           siw_regfile_ctr_kernel_busy;
  wire           siw_regfile_ctr_kernel_done;
  wire   [7:0]   siw_ctr_wr_conf_mem;
  wire   [63:0]  siw_ctr_data_conf_mem;
  wire   [8:0]   siw_ctr_add_conf_mem;
  wire   [1:0]   fu_conf_0;
  wire           fu_conf_1;
  wire           fu_conf_2;
  wire           fu_conf_3;
  wire           fu_conf_4;
  wire           fu_conf_5;
  wire           fu_conf_6;
  wire           fu_conf_7;
  wire           fu_conf_8;
  wire   [2:0]   fu_conf_20;
  wire   [2:0]   fu_conf_21;
  wire   [2:0]   fu_conf_22;
  wire   [2:0]   fu_conf_23;
  wire   [2:0]   fu_conf_24;
  wire   [2:0]   fu_conf_25;
  wire   [2:0]   fu_conf_26;
  wire   [2:0]   fu_conf_27;
  wire   [2:0]   fu_conf_28;
  wire   [2:0]   fu_conf_29;
  wire   [2:0]   fu_conf_30;
  wire   [2:0]   fu_conf_31;
  wire   [2:0]   fu_conf_32;
  wire   [2:0]   fu_conf_33;
  wire   [2:0]   fu_conf_34;
  wire   [2:0]   fu_conf_35;
  wire   [2:0]   fu_conf_36;
  wire   [2:0]   fu_conf_37;
  wire   [2:0]   fu_conf_40;
  wire   [2:0]   fu_conf_41;
  wire   [3:0]   fu_conf_55;
  wire   [3:0]   fu_conf_56;
  wire   [3:0]   fu_conf_57;
  wire   [1:0]   fu_conf_67;
  wire   [1:0]   fu_conf_68;
  wire   [1:0]   fu_conf_69;
  wire   [1:0]   fu_conf_70;
  wire   [1:0]   fu_conf_71;
  wire   [1:0]   fu_conf_72;
  wire   [1:0]   fu_conf_73;
  wire   [1:0]   fu_conf_74;
  wire   [5:0]   fu_conf_109;
  wire   [5:0]   fu_conf_110;
  wire   [31:0]  siw_ctr_mem_data_in;
  wire   [9:0]   siw_ctr_mem_addr;
  wire           siw_ctr_req_ppb;
  wire   [31:0]  sideworks_ctr_data_out_mem_kernel;
  wire   [31:0]  sideworks_ctr_data_out_regfile;
  wire           siw_mem_kernel_run;
  wire           siw_mem_kernel_stop;
  wire           siw_mem_kernel_done;
  wire           siw_mem_kernel_free_dp;
  wire           siw_mem_kernel_ready;
  wire   [7:0]   sideworks_ctr_constant_0;
  wire   [7:0]   sideworks_ctr_constant_1;
  wire   [7:0]   sideworks_ctr_constant_2;
  wire   [7:0]   sideworks_ctr_constant_3;
  wire   [7:0]   sideworks_ctr_constant_4;
  wire   [7:0]   sideworks_ctr_constant_5;
  wire   [7:0]   sideworks_ctr_constant_6;
  wire   [7:0]   sideworks_ctr_constant_7;
  wire   [7:0]   sideworks_ctr_constant_8;
  wire   [7:0]   sideworks_ctr_constant_9;
  wire           siw_ctr_out_mem_en;
  wire   [9:0]   siw_ctr_out_mem0_addr_a;
  wire           siw_ctr_out_mem0_wr_en_a;
  wire   [31:0]  siw_ctr_out_mem0_data_in_a;
  wire   [9:0]   siw_ctr_out_mem0_addr_b;
  wire           siw_ctr_out_mem0_wr_en_b;
  wire   [31:0]  siw_ctr_out_mem0_data_in_b;
  wire           siw_nd_restart;
  wire           siw_nd_inc;
  wire   [31:0]  siw_deblock_in_MB_num;
  wire   [5:0]   siw_deblock_in_alpha_offset;
  wire   [5:0]   siw_deblock_in_beta_offset;
  wire   [31:0]  siw_deblock_shared_fifo_data;
  wire           siw_deblock_shared_fifo_empty;
  wire   [31:0]  siw_deblock_out_mb_store_data_a;
  wire   [31:0]  siw_deblock_out_mb_store_data_b;
  wire           siw_deblock_shared_fifo_read;
  wire           siw_deblock_out_mb_store_takeover;
  wire   [12:0]  siw_deblock_out_mb_store_addr_a;
  wire   [12:0]  siw_deblock_out_mb_store_addr_b;
  wire           siw_transfer_req;
  wire   [27:0]  siw_transfer_offset;
  wire   [31:0]  siw_transfer_data;
  wire   [7:0]   siw_transfer_size;
  wire           siw_transfer_rdy;
  wire           siw_transfer_MB_done;
  wire   [9:0]   siw_ctr_in_shared_mem_addr_a;
  wire   [31:0]  siw_ctr_in_shared_mem_data_out_a;
  wire   [9:0]   siw_ctr_in_shared_mem_addr_b;
  wire   [31:0]  siw_ctr_in_shared_mem_data_out_b;
  wire   [12:0]  SIW_CTRL_PicSizeInMbs;
  wire   [6:0]   SIW_CTRL_PicHeighthInMbs;
  wire   [7:0]   SIW_CTRL_PicWidthInMbs;
  wire   [10:0]  SIW_CTRL_PicLineSizeInPix;
  reg    [31:0]  data_to_ram0_a_mux;
  reg    [31:0]  data_to_ram1_a_mux;
  reg    [31:0]  data_to_ram2_a_mux;
  reg    [31:0]  data_to_ram3_a_mux;
  reg    [31:0]  data_to_ram4_a_mux;
  reg    [31:0]  data_to_ram5_a_mux;
  reg    [31:0]  data_to_ram6_a_mux;
  reg    [31:0]  data_to_ram7_a_mux;
  reg    [31:0]  data_to_ram8_a_mux;
  reg    [11:0]  mem_0_addr_a_mux_out;
  reg    [11:0]  mem_1_addr_a_mux_out;
  reg    [11:0]  mem_2_addr_a_mux_out;
  reg    [11:0]  mem_3_addr_a_mux_out;
  reg    [11:0]  mem_4_addr_a_mux_out;
  reg    [11:0]  mem_5_addr_a_mux_out;
  reg    [11:0]  mem_6_addr_a_mux_out;
  reg    [13:0]  mem_7_addr_a_mux_out;
  reg    [13:0]  mem_7_addr_b_mux_out;
  reg    [11:0]  mem_8_addr_a_mux_out;
  reg            write_en_ram0_a_mux;
  reg            write_en_ram1_a_mux;
  reg            write_en_ram2_a_mux;
  reg            write_en_ram3_a_mux;
  reg            write_en_ram4_a_mux;
  reg            write_en_ram5_a_mux;
  reg            write_en_ram6_a_mux;
  reg            write_en_ram7_a_mux;
  reg            write_en_ram8_a_mux;
  reg    [1:0]   mem_0_conf_a_mux;
  reg    [1:0]   mem_1_conf_a_mux;
  reg    [1:0]   mem_2_conf_a_mux;
  reg    [1:0]   mem_3_conf_a_mux;
  reg    [1:0]   mem_4_conf_a_mux;
  reg    [1:0]   mem_5_conf_a_mux;
  reg    [1:0]   mem_6_conf_a_mux;
  reg    [1:0]   mem_7_conf_a_mux;
  reg    [1:0]   mem_8_conf_a_mux;


//--------------
// Assign Part -
//--------------
  assign data_from_GENERIC_VALUE_g00_out = 32'h20;
  assign data_from_GENERIC_VALUE_g01_out = 32'h40;
  assign data_from_GENERIC_VALUE_g02_out = 32'hb;
  assign data_from_GENERIC_VALUE_g03_out = 32'hc;
  assign data_from_GENERIC_VALUE_g04_out = 32'h10;
  assign data_from_GENERIC_VALUE_g05_out = 32'hff;
  assign data_from_GENERIC_VALUE_g06_out = 32'h4;
  assign data_from_GENERIC_VALUE_g07_out = 32'h8;
  assign data_from_GENERIC_VALUE_g08_out = 32'hfffffffd;
  assign all_disable = 1'b0;
  assign reset_i = sideworks_reset | init_siw;
  assign mem_0_conf_a = func_units_conf[1:0];
  assign mem_0_conf_b = func_units_conf[3:2];
  assign mem_1_conf_a = func_units_conf[5:4];
  assign mem_1_conf_b = func_units_conf[7:6];
  assign mem_2_conf_a = func_units_conf[9:8];
  assign mem_2_conf_b = func_units_conf[11:10];
  assign mem_3_conf_a = func_units_conf[13:12];
  assign mem_3_conf_b = func_units_conf[15:14];
  assign mem_4_conf_a = func_units_conf[17:16];
  assign mem_4_conf_b = func_units_conf[19:18];
  assign mem_5_conf_a = func_units_conf[21:20];
  assign mem_5_conf_b = func_units_conf[23:22];
  assign mem_6_conf_a = func_units_conf[25:24];
  assign mem_6_conf_b = func_units_conf[27:26];
  assign mem_7_conf_a = func_units_conf[29:28];
  assign mem_7_conf_b = func_units_conf[31:30];
  assign mem_8_conf_a = func_units_conf[33:32];
  assign mem_8_conf_b = func_units_conf[35:34];
  assign fu_conf_0 = func_units_conf[37:36];
  assign fu_conf_1 = func_units_conf[38];
  assign fu_conf_2 = func_units_conf[39];
  assign fu_conf_3 = func_units_conf[40];
  assign fu_conf_4 = func_units_conf[41];
  assign fu_conf_5 = func_units_conf[42];
  assign fu_conf_6 = func_units_conf[43];
  assign fu_conf_7 = func_units_conf[44];
  assign fu_conf_8 = func_units_conf[45];
  assign fu_conf_20 = func_units_conf[48:46];
  assign fu_conf_21 = func_units_conf[51:49];
  assign fu_conf_22 = func_units_conf[54:52];
  assign fu_conf_23 = func_units_conf[57:55];
  assign fu_conf_24 = func_units_conf[60:58];
  assign fu_conf_25 = func_units_conf[63:61];
  assign fu_conf_26 = func_units_conf[66:64];
  assign fu_conf_27 = func_units_conf[69:67];
  assign fu_conf_28 = func_units_conf[72:70];
  assign fu_conf_29 = func_units_conf[75:73];
  assign fu_conf_30 = func_units_conf[78:76];
  assign fu_conf_31 = func_units_conf[81:79];
  assign fu_conf_32 = func_units_conf[84:82];
  assign fu_conf_33 = func_units_conf[87:85];
  assign fu_conf_34 = func_units_conf[90:88];
  assign fu_conf_35 = func_units_conf[93:91];
  assign fu_conf_36 = func_units_conf[96:94];
  assign fu_conf_37 = func_units_conf[99:97];
  assign fu_conf_40 = func_units_conf[102:100];
  assign fu_conf_41 = func_units_conf[105:103];
  assign fu_conf_55 = func_units_conf[109:106];
  assign fu_conf_56 = func_units_conf[113:110];
  assign fu_conf_57 = func_units_conf[117:114];
  assign fu_conf_67 = func_units_conf[119:118];
  assign fu_conf_68 = func_units_conf[121:120];
  assign fu_conf_69 = func_units_conf[123:122];
  assign fu_conf_70 = func_units_conf[125:124];
  assign fu_conf_71 = func_units_conf[127:126];
  assign fu_conf_72 = func_units_conf[129:128];
  assign fu_conf_73 = func_units_conf[131:130];
  assign fu_conf_74 = func_units_conf[133:132];
  assign fu_conf_109 = func_units_conf[139:134];
  assign fu_conf_110 = func_units_conf[145:140];
  assign mem_0_addr_a = extend_mem_0_addr_a[9:0];
  assign mem_0_addr_b = extend_mem_0_addr_b[9:0];
  assign mem_1_addr_a = extend_mem_1_addr_a[9:0];
  assign mem_1_addr_b = extend_mem_1_addr_b[9:0];
  assign mem_2_addr_a = extend_mem_2_addr_a[9:0];
  assign mem_2_addr_b = extend_mem_2_addr_b[9:0];
  assign mem_3_addr_a = extend_mem_3_addr_a[9:0];
  assign mem_3_addr_b = extend_mem_3_addr_b[9:0];
  assign mem_4_addr_a = extend_mem_4_addr_a[9:0];
  assign mem_4_addr_b = extend_mem_4_addr_b[9:0];
  assign mem_5_addr_a = extend_mem_5_addr_a[9:0];
  assign mem_5_addr_b = extend_mem_5_addr_b[9:0];
  assign mem_6_addr_a = extend_mem_6_addr_a[13:0];
  assign mem_6_addr_b = extend_mem_6_addr_b[13:0];
  assign mem_7_addr_a = extend_mem_7_addr_a[9:0];
  assign mem_7_addr_b = extend_mem_7_addr_b[9:0];
  assign mem_8_addr_a = extend_mem_8_addr_a[9:0];
  assign mem_8_addr_b = extend_mem_8_addr_b[9:0];
  assign sideworks_ctr_data_out = (sideworks_ctr_req_ppb == 1'b1) ? sideworks_ctr_data_out_mem_kernel : sideworks_ctr_data_out_regfile;

//------------------
// Instantion Part -
//------------------
  siw_regfile regfile (
      .siw_regfile_clk(sideworks_clk),
      .siw_regfile_reset(sideworks_reset),
      .siw_regfile_conf_data_in(sideworks_conf_data_in),
      .siw_regfile_conf_req_in(sideworks_conf_req_in),
      .siw_regfile_ctr_req_in(sideworks_ctr_req_in),
      .siw_regfile_ctr_addr(sideworks_ctr_addr),
      .siw_regfile_ctr_wr(sideworks_ctr_wr),
      .siw_regfile_ctr_data_in(sideworks_ctr_data_in),
      .siw_regfile_ctr_data_out(sideworks_ctr_data_out_regfile),
      .siw_regfile_done(done),
      .siw_regfile_enable(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_regfile_init_siw(init_siw),
      .siw_regfile_OFFSET_loop(siw_regfile_OFFSET_loop),
      .siw_regfile_OFFSET_mult(siw_regfile_OFFSET_mult),
      .siw_regfile_OFFSET_add(siw_regfile_OFFSET_add),
      .siw_regfile_ctr_kernel_run(siw_regfile_ctr_kernel_run),
      .siw_regfile_ctr_kernel_load_dp_number(siw_regfile_ctr_kernel_load_dp_number),
      .siw_regfile_ctr_kernel_load_dp(siw_regfile_ctr_kernel_load_dp),
      .siw_regfile_ctr_kernel_dp_conf_ready(siw_regfile_ctr_kernel_dp_conf_ready),
      .siw_regfile_ctr_kernel_done(siw_regfile_ctr_kernel_done),
      .siw_regfile_ctr_kernel_stopped(siw_regfile_ctr_kernel_stopped),
      .siw_regfile_ctr_kernel_busy(siw_regfile_ctr_kernel_busy),
      .siw_regfile_ctr_wr_conf_mem(siw_ctr_wr_conf_mem),
      .siw_regfile_ctr_data_conf_mem(siw_ctr_data_conf_mem),
      .siw_regfile_ctr_add_conf_mem(siw_ctr_add_conf_mem),
      .siw_regfile_read_xbar_conf(read_xbar_conf),
      .siw_regfile_func_units_conf(func_units_conf));

  siw_memory_bram_0 memory_bank_0 (
      .siw_memory_bram_0_reset(sideworks_reset),
      .siw_memory_bram_0_init(init_siw),
      .siw_memory_bram_0_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_0_clk_a(sideworks_clk),
      .siw_memory_bram_0_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_0_write_en_a(write_en_ram0_a_mux),
      .siw_memory_bram_0_address_a(mem_0_addr_a_mux_out),
      .siw_memory_bram_0_input_data_a(data_to_ram0_a_mux),
      .siw_memory_bram_0_mem_conf_a(mem_0_conf_a_mux),
      .siw_memory_bram_0_output_data_a(data_from_ram0_a),
      .siw_memory_bram_0_clk_b(sideworks_clk),
      .siw_memory_bram_0_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_0_write_en_b(write_en_ram0_b),
      .siw_memory_bram_0_address_b(mem_0_addr_b),
      .siw_memory_bram_0_input_data_b(data_to_ram0_b),
      .siw_memory_bram_0_mem_conf_b(mem_0_conf_b),
      .siw_memory_bram_0_output_data_b(data_from_ram0_b));

  siw_memory_bram_1 memory_bank_1 (
      .siw_memory_bram_1_reset(sideworks_reset),
      .siw_memory_bram_1_init(init_siw),
      .siw_memory_bram_1_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_1_clk_a(sideworks_clk),
      .siw_memory_bram_1_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_1_write_en_a(write_en_ram1_a_mux),
      .siw_memory_bram_1_address_a(mem_1_addr_a_mux_out),
      .siw_memory_bram_1_input_data_a(data_to_ram1_a_mux),
      .siw_memory_bram_1_mem_conf_a(mem_1_conf_a_mux),
      .siw_memory_bram_1_output_data_a(data_from_ram1_a),
      .siw_memory_bram_1_clk_b(sideworks_clk),
      .siw_memory_bram_1_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_1_write_en_b(write_en_ram1_b),
      .siw_memory_bram_1_address_b(mem_1_addr_b),
      .siw_memory_bram_1_input_data_b(data_to_ram1_b),
      .siw_memory_bram_1_mem_conf_b(mem_1_conf_b),
      .siw_memory_bram_1_output_data_b(data_from_ram1_b));

  siw_memory_bram_2 memory_bank_2 (
      .siw_memory_bram_2_reset(sideworks_reset),
      .siw_memory_bram_2_init(init_siw),
      .siw_memory_bram_2_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_2_clk_a(sideworks_clk),
      .siw_memory_bram_2_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_2_write_en_a(write_en_ram2_a_mux),
      .siw_memory_bram_2_address_a(mem_2_addr_a_mux_out),
      .siw_memory_bram_2_input_data_a(data_to_ram2_a_mux),
      .siw_memory_bram_2_mem_conf_a(mem_2_conf_a_mux),
      .siw_memory_bram_2_output_data_a(data_from_ram2_a),
      .siw_memory_bram_2_clk_b(sideworks_clk),
      .siw_memory_bram_2_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_2_write_en_b(write_en_ram2_b),
      .siw_memory_bram_2_address_b(mem_2_addr_b),
      .siw_memory_bram_2_input_data_b(data_to_ram2_b),
      .siw_memory_bram_2_mem_conf_b(mem_2_conf_b),
      .siw_memory_bram_2_output_data_b(data_from_ram2_b));

  siw_memory_bram_3 memory_bank_3 (
      .siw_memory_bram_3_reset(sideworks_reset),
      .siw_memory_bram_3_init(init_siw),
      .siw_memory_bram_3_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_3_clk_a(sideworks_clk),
      .siw_memory_bram_3_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_3_write_en_a(write_en_ram3_a_mux),
      .siw_memory_bram_3_address_a(mem_3_addr_a_mux_out),
      .siw_memory_bram_3_input_data_a(data_to_ram3_a_mux),
      .siw_memory_bram_3_mem_conf_a(mem_3_conf_a_mux),
      .siw_memory_bram_3_output_data_a(data_from_ram3_a),
      .siw_memory_bram_3_clk_b(sideworks_clk),
      .siw_memory_bram_3_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_3_write_en_b(write_en_ram3_b),
      .siw_memory_bram_3_address_b(mem_3_addr_b),
      .siw_memory_bram_3_input_data_b(data_to_ram3_b),
      .siw_memory_bram_3_mem_conf_b(mem_3_conf_b),
      .siw_memory_bram_3_output_data_b(data_from_ram3_b));

  siw_memory_bram_4 memory_bank_4 (
      .siw_memory_bram_4_reset(sideworks_reset),
      .siw_memory_bram_4_init(init_siw),
      .siw_memory_bram_4_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_4_clk_a(sideworks_clk),
      .siw_memory_bram_4_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_4_write_en_a(write_en_ram4_a_mux),
      .siw_memory_bram_4_address_a(mem_4_addr_a_mux_out),
      .siw_memory_bram_4_input_data_a(data_to_ram4_a_mux),
      .siw_memory_bram_4_mem_conf_a(mem_4_conf_a_mux),
      .siw_memory_bram_4_output_data_a(data_from_ram4_a),
      .siw_memory_bram_4_clk_b(sideworks_clk),
      .siw_memory_bram_4_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_4_write_en_b(write_en_ram4_b),
      .siw_memory_bram_4_address_b(mem_4_addr_b),
      .siw_memory_bram_4_input_data_b(data_to_ram4_b),
      .siw_memory_bram_4_mem_conf_b(mem_4_conf_b),
      .siw_memory_bram_4_output_data_b(data_from_ram4_b));

  siw_memory_bram_5 memory_bank_5 (
      .siw_memory_bram_5_reset(sideworks_reset),
      .siw_memory_bram_5_init(init_siw),
      .siw_memory_bram_5_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_5_clk_a(sideworks_clk),
      .siw_memory_bram_5_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_5_write_en_a(write_en_ram5_a_mux),
      .siw_memory_bram_5_address_a(mem_5_addr_a_mux_out),
      .siw_memory_bram_5_input_data_a(data_to_ram5_a_mux),
      .siw_memory_bram_5_mem_conf_a(mem_5_conf_a_mux),
      .siw_memory_bram_5_output_data_a(data_from_ram5_a),
      .siw_memory_bram_5_clk_b(sideworks_clk),
      .siw_memory_bram_5_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_5_write_en_b(write_en_ram5_b),
      .siw_memory_bram_5_address_b(mem_5_addr_b),
      .siw_memory_bram_5_input_data_b(data_to_ram5_b),
      .siw_memory_bram_5_mem_conf_b(mem_5_conf_b),
      .siw_memory_bram_5_output_data_b(data_from_ram5_b));

  siw_memory_bram_6 memory_bank_6 (
      .siw_memory_bram_6_reset(sideworks_reset),
      .siw_memory_bram_6_init(init_siw),
      .siw_memory_bram_6_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_6_clk_a(sideworks_clk),
      .siw_memory_bram_6_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_6_write_en_a(write_en_ram6_a_mux),
      .siw_memory_bram_6_address_a(mem_6_addr_a_mux_out),
      .siw_memory_bram_6_input_data_a(data_to_ram6_a_mux),
      .siw_memory_bram_6_mem_conf_a(mem_6_conf_a_mux),
      .siw_memory_bram_6_output_data_a(data_from_ram6_a),
      .siw_memory_bram_6_clk_b(sideworks_clk),
      .siw_memory_bram_6_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_6_write_en_b(write_en_ram6_b),
      .siw_memory_bram_6_address_b(mem_6_addr_b),
      .siw_memory_bram_6_input_data_b(data_to_ram6_b),
      .siw_memory_bram_6_mem_conf_b(mem_6_conf_b),
      .siw_memory_bram_6_output_data_b(data_from_ram6_b));

  siw_memory_bram_7 memory_bank_7 (
      .siw_memory_bram_7_reset(sideworks_reset),
      .siw_memory_bram_7_init(init_siw),
      .siw_memory_bram_7_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_7_clk_a(sideworks_clk),
      .siw_memory_bram_7_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_7_write_en_a(write_en_ram7_a_mux),
      .siw_memory_bram_7_address_a(mem_7_addr_a_mux_out),
      .siw_memory_bram_7_input_data_a(data_to_ram7_a_mux),
      .siw_memory_bram_7_mem_conf_a(mem_7_conf_a_mux),
      .siw_memory_bram_7_output_data_a(data_from_ram7_a),
      .siw_memory_bram_7_clk_b(sideworks_clk),
      .siw_memory_bram_7_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_7_write_en_b(write_en_ram7_b),
      .siw_memory_bram_7_address_b(mem_7_addr_b_mux_out),
      .siw_memory_bram_7_input_data_b(data_to_ram7_b),
      .siw_memory_bram_7_mem_conf_b(mem_7_conf_b),
      .siw_memory_bram_7_output_data_b(data_from_ram7_b));

  siw_memory_bram_8 memory_bank_8 (
      .siw_memory_bram_8_reset(sideworks_reset),
      .siw_memory_bram_8_init(init_siw),
      .siw_memory_bram_8_mem_sel(sideworks_debug_takeover),
      .siw_memory_bram_8_clk_a(sideworks_clk),
      .siw_memory_bram_8_enable_a(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_8_write_en_a(write_en_ram8_a_mux),
      .siw_memory_bram_8_address_a(mem_8_addr_a_mux_out),
      .siw_memory_bram_8_input_data_a(data_to_ram8_a_mux),
      .siw_memory_bram_8_mem_conf_a(mem_8_conf_a_mux),
      .siw_memory_bram_8_output_data_a(data_from_ram8_a),
      .siw_memory_bram_8_clk_b(sideworks_clk),
      .siw_memory_bram_8_enable_b(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_memory_bram_8_write_en_b(write_en_ram8_b),
      .siw_memory_bram_8_address_b(mem_8_addr_b),
      .siw_memory_bram_8_input_data_b(data_to_ram8_b),
      .siw_memory_bram_8_mem_conf_b(mem_8_conf_b),
      .siw_memory_bram_8_output_data_b(data_from_ram8_b));

  siw_read_xbar read_xbar (
      .siw_read_xbar_data_from_mem0_a(data_from_ram0_a),
      .siw_read_xbar_data_from_mem0_b(data_from_ram0_b),
      .siw_read_xbar_data_from_mem1_a(data_from_ram1_a),
      .siw_read_xbar_data_from_mem1_b(data_from_ram1_b),
      .siw_read_xbar_data_from_mem5_a(data_from_ram5_a),
      .siw_read_xbar_data_from_mem5_b(data_from_ram5_b),
      .siw_read_xbar_data_from_mem7_a(data_from_ram7_a),
      .siw_read_xbar_data_from_mem7_b(data_from_ram7_b),
      .siw_read_xbar_data_from_mem8_a(data_from_ram8_a),
      .siw_read_xbar_data_from_mem8_b(data_from_ram8_b),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_en(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out0(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out0),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out1(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out1),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out2(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out2),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out3(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out3),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out0(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out0),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out1(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out1),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out2(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out2),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out3(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out3),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0(data_from_SIW_CTRL_SIW_CTRL_auto_0_out0),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1(data_from_SIW_CTRL_SIW_CTRL_auto_0_out1),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2(data_from_SIW_CTRL_SIW_CTRL_auto_0_out2),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out3(data_from_SIW_CTRL_SIW_CTRL_auto_0_out3),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out4(data_from_SIW_CTRL_SIW_CTRL_auto_0_out4),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out5(data_from_SIW_CTRL_SIW_CTRL_auto_0_out5),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out6(data_from_SIW_CTRL_SIW_CTRL_auto_0_out6),
      .siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out7(data_from_SIW_CTRL_SIW_CTRL_auto_0_out7),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_0_out(data_from_BADD3_32_BADD3_32_g0_auto_0_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_1_out(data_from_BADD3_32_BADD3_32_g0_auto_1_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_2_out(data_from_BADD3_32_BADD3_32_g0_auto_2_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_3_out(data_from_BADD3_32_BADD3_32_g0_auto_3_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_4_out(data_from_BADD3_32_BADD3_32_g0_auto_4_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_5_out(data_from_BADD3_32_BADD3_32_g0_auto_5_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_6_out(data_from_BADD3_32_BADD3_32_g0_auto_6_out),
      .siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_7_out(data_from_BADD3_32_BADD3_32_g0_auto_7_out),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_0_add(data_from_BADD_32_BADD_32_g0_auto_0_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_1_add(data_from_BADD_32_BADD_32_g0_auto_1_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_10_add(data_from_BADD_32_BADD_32_g0_auto_10_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_2_add(data_from_BADD_32_BADD_32_g0_auto_2_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_3_add(data_from_BADD_32_BADD_32_g0_auto_3_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_4_add(data_from_BADD_32_BADD_32_g0_auto_4_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_5_add(data_from_BADD_32_BADD_32_g0_auto_5_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_6_add(data_from_BADD_32_BADD_32_g0_auto_6_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_7_add(data_from_BADD_32_BADD_32_g0_auto_7_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_8_add(data_from_BADD_32_BADD_32_g0_auto_8_add),
      .siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_9_add(data_from_BADD_32_BADD_32_g0_auto_9_add),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_0_out(data_from_BAU_12_BAU_12_g0_auto_0_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_1_out(data_from_BAU_12_BAU_12_g0_auto_1_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_10_out(data_from_BAU_12_BAU_12_g0_auto_10_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_11_out(data_from_BAU_12_BAU_12_g0_auto_11_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out(data_from_BAU_12_BAU_12_g0_auto_12_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_13_out(data_from_BAU_12_BAU_12_g0_auto_13_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_eq(data_from_BAU_12_BAU_12_g0_auto_2_eq),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_lt(data_from_BAU_12_BAU_12_g0_auto_2_lt),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_out(data_from_BAU_12_BAU_12_g0_auto_2_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_3_out(data_from_BAU_12_BAU_12_g0_auto_3_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_gt(data_from_BAU_12_BAU_12_g0_auto_4_gt),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_out(data_from_BAU_12_BAU_12_g0_auto_4_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_5_out(data_from_BAU_12_BAU_12_g0_auto_5_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_6_out(data_from_BAU_12_BAU_12_g0_auto_6_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_7_out(data_from_BAU_12_BAU_12_g0_auto_7_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_8_out(data_from_BAU_12_BAU_12_g0_auto_8_out),
      .siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_9_out(data_from_BAU_12_BAU_12_g0_auto_9_out),
      .siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_0_out(data_from_BAU_14_BAU_14_g0_auto_0_out),
      .siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_1_out(data_from_BAU_14_BAU_14_g0_auto_1_out),
      .siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_2_out(data_from_BAU_14_BAU_14_g0_auto_2_out),
      .siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_3_out(data_from_BAU_14_BAU_14_g0_auto_3_out),
      .siw_read_xbar_data_from_BD_BD_g0_auto_0_out0(data_from_BD_BD_g0_auto_0_out0),
      .siw_read_xbar_data_from_BD_BD_g0_auto_0_out1(data_from_BD_BD_g0_auto_0_out1),
      .siw_read_xbar_data_from_BD_BD_g0_auto_0_out2(data_from_BD_BD_g0_auto_0_out2),
      .siw_read_xbar_data_from_BD_BD_g0_auto_0_out3(data_from_BD_BD_g0_auto_0_out3),
      .siw_read_xbar_data_from_BD_BD_g0_auto_1_out0(data_from_BD_BD_g0_auto_1_out0),
      .siw_read_xbar_data_from_BD_BD_g0_auto_1_out1(data_from_BD_BD_g0_auto_1_out1),
      .siw_read_xbar_data_from_BD_BD_g0_auto_1_out2(data_from_BD_BD_g0_auto_1_out2),
      .siw_read_xbar_data_from_BD_BD_g0_auto_1_out3(data_from_BD_BD_g0_auto_1_out3),
      .siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_0_out(data_from_BLU_1_BLU_1_g0_auto_0_out),
      .siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_1_out(data_from_BLU_1_BLU_1_g0_auto_1_out),
      .siw_read_xbar_data_from_BM_BM_g0_auto_0_out(data_from_BM_BM_g0_auto_0_out),
      .siw_read_xbar_data_from_BM_BM_g0_auto_1_out(data_from_BM_BM_g0_auto_1_out),
      .siw_read_xbar_data_from_BM_BM_g0_auto_2_out(data_from_BM_BM_g0_auto_2_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_0_out(data_from_CLIP_32_CLIP_32_g0_auto_0_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_1_out(data_from_CLIP_32_CLIP_32_g0_auto_1_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_2_out(data_from_CLIP_32_CLIP_32_g0_auto_2_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_3_out(data_from_CLIP_32_CLIP_32_g0_auto_3_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_4_out(data_from_CLIP_32_CLIP_32_g0_auto_4_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_5_out(data_from_CLIP_32_CLIP_32_g0_auto_5_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_6_out(data_from_CLIP_32_CLIP_32_g0_auto_6_out),
      .siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_7_out(data_from_CLIP_32_CLIP_32_g0_auto_7_out),
      .siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_0_out(data_from_CONC_32_CONC_32_g0_auto_0_out),
      .siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_1_out(data_from_CONC_32_CONC_32_g0_auto_1_out),
      .siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out(data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out),
      .siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out(data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out),
      .siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out(data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g00_out(data_from_GENERIC_VALUE_g00_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g01_out(data_from_GENERIC_VALUE_g01_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g03_out(data_from_GENERIC_VALUE_g03_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g04_out(data_from_GENERIC_VALUE_g04_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g05_out(data_from_GENERIC_VALUE_g05_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g06_out(data_from_GENERIC_VALUE_g06_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g07_out(data_from_GENERIC_VALUE_g07_out),
      .siw_read_xbar_data_from_GENERIC_VALUE_g08_out(data_from_GENERIC_VALUE_g08_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out),
      .siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out),
      .siw_read_xbar_data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out(data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_4_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_4_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_5_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_5_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_6_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_6_out),
      .siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_7_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_7_out),
      .siw_read_xbar_data_from_ND_ND_g0_auto_0_leMO_(data_from_ND_ND_g0_auto_0_leMO_),
      .siw_read_xbar_data_from_ND_ND_g0_auto_0_ulMO_(data_from_ND_ND_g0_auto_0_ulMO_),
      .siw_read_xbar_data_from_ND_ND_g0_auto_0_upMO_(data_from_ND_ND_g0_auto_0_upMO_),
      .siw_read_xbar_data_from_ND_ND_g0_auto_0_urMO_(data_from_ND_ND_g0_auto_0_urMO_),
      .siw_read_xbar_data_from_ONE_g00_fixed_out_1(data_from_ONE_g00_fixed_out_1),
      .siw_read_xbar_data_from_ONE_g00_fixed_out_12(data_from_ONE_g00_fixed_out_12),
      .siw_read_xbar_data_from_ONE_g00_fixed_out_32(data_from_ONE_g00_fixed_out_32),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b0(data_from_SEP_32_SEP_32_g0_auto_0_b0),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b1(data_from_SEP_32_SEP_32_g0_auto_0_b1),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b2(data_from_SEP_32_SEP_32_g0_auto_0_b2),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b3(data_from_SEP_32_SEP_32_g0_auto_0_b3),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b4(data_from_SEP_32_SEP_32_g0_auto_0_b4),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b5(data_from_SEP_32_SEP_32_g0_auto_0_b5),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b6(data_from_SEP_32_SEP_32_g0_auto_0_b6),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b7(data_from_SEP_32_SEP_32_g0_auto_0_b7),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b0(data_from_SEP_32_SEP_32_g0_auto_1_b0),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b1(data_from_SEP_32_SEP_32_g0_auto_1_b1),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b2(data_from_SEP_32_SEP_32_g0_auto_1_b2),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b3(data_from_SEP_32_SEP_32_g0_auto_1_b3),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b4(data_from_SEP_32_SEP_32_g0_auto_1_b4),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b5(data_from_SEP_32_SEP_32_g0_auto_1_b5),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b6(data_from_SEP_32_SEP_32_g0_auto_1_b6),
      .siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b7(data_from_SEP_32_SEP_32_g0_auto_1_b7),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_out),
      .siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_out),
      .siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_0_out(data_from_SREG_12_SREG_12_g0_auto_0_out),
      .siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_1_out(data_from_SREG_12_SREG_12_g0_auto_1_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_0_out(data_from_SREG_32_SREG_32_g0_auto_0_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_1_out(data_from_SREG_32_SREG_32_g0_auto_1_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_2_out(data_from_SREG_32_SREG_32_g0_auto_2_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_3_out(data_from_SREG_32_SREG_32_g0_auto_3_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_4_out(data_from_SREG_32_SREG_32_g0_auto_4_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_5_out(data_from_SREG_32_SREG_32_g0_auto_5_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_6_out(data_from_SREG_32_SREG_32_g0_auto_6_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_7_out(data_from_SREG_32_SREG_32_g0_auto_7_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_8_out(data_from_SREG_32_SREG_32_g0_auto_8_out),
      .siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_9_out(data_from_SREG_32_SREG_32_g0_auto_9_out),
      .siw_read_xbar_data_from_THREE_g00_fixed_out_12(data_from_THREE_g00_fixed_out_12),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_),
      .siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_),
      .siw_read_xbar_data_from_TWO_g00_fixed_out_12(data_from_TWO_g00_fixed_out_12),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_1(data_from_ZERO_g00_fixed_out_1),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_12(data_from_ZERO_g00_fixed_out_12),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_14(data_from_ZERO_g00_fixed_out_14),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_2(data_from_ZERO_g00_fixed_out_2),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_32(data_from_ZERO_g00_fixed_out_32),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_7(data_from_ZERO_g00_fixed_out_7),
      .siw_read_xbar_data_from_ZERO_g00_fixed_out_8(data_from_ZERO_g00_fixed_out_8),
      .siw_read_xbar_data_from_mONE_g00_fixed_out_32(data_from_mONE_g00_fixed_out_32),
      .siw_read_xbar_read_xbar_conf(read_xbar_conf),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_done(data_to_SIW_CTRL_SIW_CTRL_auto_0_done),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_a(data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_a),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_b(data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_b),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_is_last(data_to_SIW_CTRL_SIW_CTRL_auto_0_is_last),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_a(data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_a),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_b(data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_b),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_next(data_to_SIW_CTRL_SIW_CTRL_auto_0_next),
      .siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_rd_next(data_to_SIW_CTRL_SIW_CTRL_auto_0_rd_next),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i0(data_to_BADD3_32_BADD3_32_g0_auto_0_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i1(data_to_BADD3_32_BADD3_32_g0_auto_0_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i2(data_to_BADD3_32_BADD3_32_g0_auto_0_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i0(data_to_BADD3_32_BADD3_32_g0_auto_1_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i1(data_to_BADD3_32_BADD3_32_g0_auto_1_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i2(data_to_BADD3_32_BADD3_32_g0_auto_1_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i0(data_to_BADD3_32_BADD3_32_g0_auto_2_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i1(data_to_BADD3_32_BADD3_32_g0_auto_2_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i2(data_to_BADD3_32_BADD3_32_g0_auto_2_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i0(data_to_BADD3_32_BADD3_32_g0_auto_3_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i1(data_to_BADD3_32_BADD3_32_g0_auto_3_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i2(data_to_BADD3_32_BADD3_32_g0_auto_3_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i0(data_to_BADD3_32_BADD3_32_g0_auto_4_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i1(data_to_BADD3_32_BADD3_32_g0_auto_4_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i2(data_to_BADD3_32_BADD3_32_g0_auto_4_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i0(data_to_BADD3_32_BADD3_32_g0_auto_5_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i1(data_to_BADD3_32_BADD3_32_g0_auto_5_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i2(data_to_BADD3_32_BADD3_32_g0_auto_5_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i0(data_to_BADD3_32_BADD3_32_g0_auto_6_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i1(data_to_BADD3_32_BADD3_32_g0_auto_6_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i2(data_to_BADD3_32_BADD3_32_g0_auto_6_i2),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i0(data_to_BADD3_32_BADD3_32_g0_auto_7_i0),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i1(data_to_BADD3_32_BADD3_32_g0_auto_7_i1),
      .siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i2(data_to_BADD3_32_BADD3_32_g0_auto_7_i2),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i0(data_to_BADD_32_BADD_32_g0_auto_0_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i1(data_to_BADD_32_BADD_32_g0_auto_0_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i0(data_to_BADD_32_BADD_32_g0_auto_1_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i1(data_to_BADD_32_BADD_32_g0_auto_1_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i0(data_to_BADD_32_BADD_32_g0_auto_10_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i1(data_to_BADD_32_BADD_32_g0_auto_10_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i0(data_to_BADD_32_BADD_32_g0_auto_2_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i1(data_to_BADD_32_BADD_32_g0_auto_2_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_3_i0(data_to_BADD_32_BADD_32_g0_auto_3_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_3_i1(data_to_BADD_32_BADD_32_g0_auto_3_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_4_i0(data_to_BADD_32_BADD_32_g0_auto_4_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_4_i1(data_to_BADD_32_BADD_32_g0_auto_4_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_5_i0(data_to_BADD_32_BADD_32_g0_auto_5_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_5_i1(data_to_BADD_32_BADD_32_g0_auto_5_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_6_i0(data_to_BADD_32_BADD_32_g0_auto_6_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_6_i1(data_to_BADD_32_BADD_32_g0_auto_6_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_7_i0(data_to_BADD_32_BADD_32_g0_auto_7_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_7_i1(data_to_BADD_32_BADD_32_g0_auto_7_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_8_i0(data_to_BADD_32_BADD_32_g0_auto_8_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_8_i1(data_to_BADD_32_BADD_32_g0_auto_8_i1),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_9_i0(data_to_BADD_32_BADD_32_g0_auto_9_i0),
      .siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_9_i1(data_to_BADD_32_BADD_32_g0_auto_9_i1),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_cmp(data_to_BAU_12_BAU_12_g0_auto_0_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_en(data_to_BAU_12_BAU_12_g0_auto_0_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_inc(data_to_BAU_12_BAU_12_g0_auto_0_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld(data_to_BAU_12_BAU_12_g0_auto_0_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld_val(data_to_BAU_12_BAU_12_g0_auto_0_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_cmp(data_to_BAU_12_BAU_12_g0_auto_1_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_en(data_to_BAU_12_BAU_12_g0_auto_1_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_inc(data_to_BAU_12_BAU_12_g0_auto_1_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld(data_to_BAU_12_BAU_12_g0_auto_1_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld_val(data_to_BAU_12_BAU_12_g0_auto_1_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_cmp(data_to_BAU_12_BAU_12_g0_auto_10_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_en(data_to_BAU_12_BAU_12_g0_auto_10_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_inc(data_to_BAU_12_BAU_12_g0_auto_10_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld(data_to_BAU_12_BAU_12_g0_auto_10_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld_val(data_to_BAU_12_BAU_12_g0_auto_10_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_cmp(data_to_BAU_12_BAU_12_g0_auto_11_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_en(data_to_BAU_12_BAU_12_g0_auto_11_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_inc(data_to_BAU_12_BAU_12_g0_auto_11_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld(data_to_BAU_12_BAU_12_g0_auto_11_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld_val(data_to_BAU_12_BAU_12_g0_auto_11_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_cmp(data_to_BAU_12_BAU_12_g0_auto_12_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_en(data_to_BAU_12_BAU_12_g0_auto_12_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_inc(data_to_BAU_12_BAU_12_g0_auto_12_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld(data_to_BAU_12_BAU_12_g0_auto_12_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld_val(data_to_BAU_12_BAU_12_g0_auto_12_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_cmp(data_to_BAU_12_BAU_12_g0_auto_13_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_en(data_to_BAU_12_BAU_12_g0_auto_13_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_inc(data_to_BAU_12_BAU_12_g0_auto_13_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld(data_to_BAU_12_BAU_12_g0_auto_13_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld_val(data_to_BAU_12_BAU_12_g0_auto_13_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_cmp(data_to_BAU_12_BAU_12_g0_auto_2_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_en(data_to_BAU_12_BAU_12_g0_auto_2_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_inc(data_to_BAU_12_BAU_12_g0_auto_2_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld(data_to_BAU_12_BAU_12_g0_auto_2_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld_val(data_to_BAU_12_BAU_12_g0_auto_2_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_cmp(data_to_BAU_12_BAU_12_g0_auto_3_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_en(data_to_BAU_12_BAU_12_g0_auto_3_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_inc(data_to_BAU_12_BAU_12_g0_auto_3_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld(data_to_BAU_12_BAU_12_g0_auto_3_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld_val(data_to_BAU_12_BAU_12_g0_auto_3_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_cmp(data_to_BAU_12_BAU_12_g0_auto_4_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_en(data_to_BAU_12_BAU_12_g0_auto_4_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_inc(data_to_BAU_12_BAU_12_g0_auto_4_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld(data_to_BAU_12_BAU_12_g0_auto_4_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld_val(data_to_BAU_12_BAU_12_g0_auto_4_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_cmp(data_to_BAU_12_BAU_12_g0_auto_5_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_en(data_to_BAU_12_BAU_12_g0_auto_5_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_inc(data_to_BAU_12_BAU_12_g0_auto_5_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_ld(data_to_BAU_12_BAU_12_g0_auto_5_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_ld_val(data_to_BAU_12_BAU_12_g0_auto_5_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_cmp(data_to_BAU_12_BAU_12_g0_auto_6_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_en(data_to_BAU_12_BAU_12_g0_auto_6_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_inc(data_to_BAU_12_BAU_12_g0_auto_6_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_ld(data_to_BAU_12_BAU_12_g0_auto_6_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_ld_val(data_to_BAU_12_BAU_12_g0_auto_6_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_cmp(data_to_BAU_12_BAU_12_g0_auto_7_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_en(data_to_BAU_12_BAU_12_g0_auto_7_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_inc(data_to_BAU_12_BAU_12_g0_auto_7_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_ld(data_to_BAU_12_BAU_12_g0_auto_7_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_ld_val(data_to_BAU_12_BAU_12_g0_auto_7_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_cmp(data_to_BAU_12_BAU_12_g0_auto_8_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_en(data_to_BAU_12_BAU_12_g0_auto_8_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_inc(data_to_BAU_12_BAU_12_g0_auto_8_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_ld(data_to_BAU_12_BAU_12_g0_auto_8_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_ld_val(data_to_BAU_12_BAU_12_g0_auto_8_ld_val),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_cmp(data_to_BAU_12_BAU_12_g0_auto_9_cmp),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_en(data_to_BAU_12_BAU_12_g0_auto_9_en),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_inc(data_to_BAU_12_BAU_12_g0_auto_9_inc),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_ld(data_to_BAU_12_BAU_12_g0_auto_9_ld),
      .siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_ld_val(data_to_BAU_12_BAU_12_g0_auto_9_ld_val),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_cmp(data_to_BAU_14_BAU_14_g0_auto_0_cmp),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_en(data_to_BAU_14_BAU_14_g0_auto_0_en),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_inc(data_to_BAU_14_BAU_14_g0_auto_0_inc),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_ld(data_to_BAU_14_BAU_14_g0_auto_0_ld),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_ld_val(data_to_BAU_14_BAU_14_g0_auto_0_ld_val),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_cmp(data_to_BAU_14_BAU_14_g0_auto_1_cmp),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_en(data_to_BAU_14_BAU_14_g0_auto_1_en),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_inc(data_to_BAU_14_BAU_14_g0_auto_1_inc),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_ld(data_to_BAU_14_BAU_14_g0_auto_1_ld),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_ld_val(data_to_BAU_14_BAU_14_g0_auto_1_ld_val),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_cmp(data_to_BAU_14_BAU_14_g0_auto_2_cmp),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_en(data_to_BAU_14_BAU_14_g0_auto_2_en),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_inc(data_to_BAU_14_BAU_14_g0_auto_2_inc),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_ld(data_to_BAU_14_BAU_14_g0_auto_2_ld),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_ld_val(data_to_BAU_14_BAU_14_g0_auto_2_ld_val),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_cmp(data_to_BAU_14_BAU_14_g0_auto_3_cmp),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_en(data_to_BAU_14_BAU_14_g0_auto_3_en),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_inc(data_to_BAU_14_BAU_14_g0_auto_3_inc),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_ld(data_to_BAU_14_BAU_14_g0_auto_3_ld),
      .siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_ld_val(data_to_BAU_14_BAU_14_g0_auto_3_ld_val),
      .siw_read_xbar_data_to_BD_BD_g0_auto_0_in(data_to_BD_BD_g0_auto_0_in),
      .siw_read_xbar_data_to_BD_BD_g0_auto_1_in(data_to_BD_BD_g0_auto_1_in),
      .siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_en(data_to_BLU_1_BLU_1_g0_auto_0_en),
      .siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_i0(data_to_BLU_1_BLU_1_g0_auto_0_i0),
      .siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_i1(data_to_BLU_1_BLU_1_g0_auto_0_i1),
      .siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_en(data_to_BLU_1_BLU_1_g0_auto_1_en),
      .siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_i0(data_to_BLU_1_BLU_1_g0_auto_1_i0),
      .siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_i1(data_to_BLU_1_BLU_1_g0_auto_1_i1),
      .siw_read_xbar_data_to_BM_BM_g0_auto_0_i0(data_to_BM_BM_g0_auto_0_i0),
      .siw_read_xbar_data_to_BM_BM_g0_auto_0_i1(data_to_BM_BM_g0_auto_0_i1),
      .siw_read_xbar_data_to_BM_BM_g0_auto_0_i2(data_to_BM_BM_g0_auto_0_i2),
      .siw_read_xbar_data_to_BM_BM_g0_auto_0_i3(data_to_BM_BM_g0_auto_0_i3),
      .siw_read_xbar_data_to_BM_BM_g0_auto_1_i0(data_to_BM_BM_g0_auto_1_i0),
      .siw_read_xbar_data_to_BM_BM_g0_auto_1_i1(data_to_BM_BM_g0_auto_1_i1),
      .siw_read_xbar_data_to_BM_BM_g0_auto_1_i2(data_to_BM_BM_g0_auto_1_i2),
      .siw_read_xbar_data_to_BM_BM_g0_auto_1_i3(data_to_BM_BM_g0_auto_1_i3),
      .siw_read_xbar_data_to_BM_BM_g0_auto_2_i0(data_to_BM_BM_g0_auto_2_i0),
      .siw_read_xbar_data_to_BM_BM_g0_auto_2_i1(data_to_BM_BM_g0_auto_2_i1),
      .siw_read_xbar_data_to_BM_BM_g0_auto_2_i2(data_to_BM_BM_g0_auto_2_i2),
      .siw_read_xbar_data_to_BM_BM_g0_auto_2_i3(data_to_BM_BM_g0_auto_2_i3),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_down(data_to_CLIP_32_CLIP_32_g0_auto_0_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_in(data_to_CLIP_32_CLIP_32_g0_auto_0_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_up(data_to_CLIP_32_CLIP_32_g0_auto_0_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_down(data_to_CLIP_32_CLIP_32_g0_auto_1_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_in(data_to_CLIP_32_CLIP_32_g0_auto_1_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_up(data_to_CLIP_32_CLIP_32_g0_auto_1_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_down(data_to_CLIP_32_CLIP_32_g0_auto_2_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_in(data_to_CLIP_32_CLIP_32_g0_auto_2_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_up(data_to_CLIP_32_CLIP_32_g0_auto_2_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_down(data_to_CLIP_32_CLIP_32_g0_auto_3_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_in(data_to_CLIP_32_CLIP_32_g0_auto_3_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_up(data_to_CLIP_32_CLIP_32_g0_auto_3_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_down(data_to_CLIP_32_CLIP_32_g0_auto_4_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_in(data_to_CLIP_32_CLIP_32_g0_auto_4_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_up(data_to_CLIP_32_CLIP_32_g0_auto_4_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_down(data_to_CLIP_32_CLIP_32_g0_auto_5_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_in(data_to_CLIP_32_CLIP_32_g0_auto_5_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_up(data_to_CLIP_32_CLIP_32_g0_auto_5_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_down(data_to_CLIP_32_CLIP_32_g0_auto_6_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_in(data_to_CLIP_32_CLIP_32_g0_auto_6_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_up(data_to_CLIP_32_CLIP_32_g0_auto_6_up),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_down(data_to_CLIP_32_CLIP_32_g0_auto_7_down),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_in(data_to_CLIP_32_CLIP_32_g0_auto_7_in),
      .siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_up(data_to_CLIP_32_CLIP_32_g0_auto_7_up),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b0(data_to_CONC_32_CONC_32_g0_auto_0_b0),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b1(data_to_CONC_32_CONC_32_g0_auto_0_b1),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b10(data_to_CONC_32_CONC_32_g0_auto_0_b10),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b11(data_to_CONC_32_CONC_32_g0_auto_0_b11),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b12(data_to_CONC_32_CONC_32_g0_auto_0_b12),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b13(data_to_CONC_32_CONC_32_g0_auto_0_b13),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b14(data_to_CONC_32_CONC_32_g0_auto_0_b14),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b15(data_to_CONC_32_CONC_32_g0_auto_0_b15),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b16(data_to_CONC_32_CONC_32_g0_auto_0_b16),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b17(data_to_CONC_32_CONC_32_g0_auto_0_b17),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b18(data_to_CONC_32_CONC_32_g0_auto_0_b18),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b19(data_to_CONC_32_CONC_32_g0_auto_0_b19),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b2(data_to_CONC_32_CONC_32_g0_auto_0_b2),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b20(data_to_CONC_32_CONC_32_g0_auto_0_b20),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b21(data_to_CONC_32_CONC_32_g0_auto_0_b21),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b22(data_to_CONC_32_CONC_32_g0_auto_0_b22),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b23(data_to_CONC_32_CONC_32_g0_auto_0_b23),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b24(data_to_CONC_32_CONC_32_g0_auto_0_b24),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b25(data_to_CONC_32_CONC_32_g0_auto_0_b25),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b26(data_to_CONC_32_CONC_32_g0_auto_0_b26),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b27(data_to_CONC_32_CONC_32_g0_auto_0_b27),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b28(data_to_CONC_32_CONC_32_g0_auto_0_b28),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b29(data_to_CONC_32_CONC_32_g0_auto_0_b29),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b3(data_to_CONC_32_CONC_32_g0_auto_0_b3),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b30(data_to_CONC_32_CONC_32_g0_auto_0_b30),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b31(data_to_CONC_32_CONC_32_g0_auto_0_b31),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b4(data_to_CONC_32_CONC_32_g0_auto_0_b4),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b5(data_to_CONC_32_CONC_32_g0_auto_0_b5),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b6(data_to_CONC_32_CONC_32_g0_auto_0_b6),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b7(data_to_CONC_32_CONC_32_g0_auto_0_b7),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b8(data_to_CONC_32_CONC_32_g0_auto_0_b8),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b9(data_to_CONC_32_CONC_32_g0_auto_0_b9),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b0(data_to_CONC_32_CONC_32_g0_auto_1_b0),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b1(data_to_CONC_32_CONC_32_g0_auto_1_b1),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b10(data_to_CONC_32_CONC_32_g0_auto_1_b10),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b11(data_to_CONC_32_CONC_32_g0_auto_1_b11),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b12(data_to_CONC_32_CONC_32_g0_auto_1_b12),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b13(data_to_CONC_32_CONC_32_g0_auto_1_b13),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b14(data_to_CONC_32_CONC_32_g0_auto_1_b14),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b15(data_to_CONC_32_CONC_32_g0_auto_1_b15),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b16(data_to_CONC_32_CONC_32_g0_auto_1_b16),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b17(data_to_CONC_32_CONC_32_g0_auto_1_b17),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b18(data_to_CONC_32_CONC_32_g0_auto_1_b18),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b19(data_to_CONC_32_CONC_32_g0_auto_1_b19),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b2(data_to_CONC_32_CONC_32_g0_auto_1_b2),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b20(data_to_CONC_32_CONC_32_g0_auto_1_b20),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b21(data_to_CONC_32_CONC_32_g0_auto_1_b21),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b22(data_to_CONC_32_CONC_32_g0_auto_1_b22),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b23(data_to_CONC_32_CONC_32_g0_auto_1_b23),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b24(data_to_CONC_32_CONC_32_g0_auto_1_b24),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b25(data_to_CONC_32_CONC_32_g0_auto_1_b25),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b26(data_to_CONC_32_CONC_32_g0_auto_1_b26),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b27(data_to_CONC_32_CONC_32_g0_auto_1_b27),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b28(data_to_CONC_32_CONC_32_g0_auto_1_b28),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b29(data_to_CONC_32_CONC_32_g0_auto_1_b29),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b3(data_to_CONC_32_CONC_32_g0_auto_1_b3),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b30(data_to_CONC_32_CONC_32_g0_auto_1_b30),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b31(data_to_CONC_32_CONC_32_g0_auto_1_b31),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b4(data_to_CONC_32_CONC_32_g0_auto_1_b4),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b5(data_to_CONC_32_CONC_32_g0_auto_1_b5),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b6(data_to_CONC_32_CONC_32_g0_auto_1_b6),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b7(data_to_CONC_32_CONC_32_g0_auto_1_b7),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b8(data_to_CONC_32_CONC_32_g0_auto_1_b8),
      .siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b9(data_to_CONC_32_CONC_32_g0_auto_1_b9),
      .siw_read_xbar_data_to_DLINE_1_16_DLINE_1_16_g0_auto_0_in(data_to_DLINE_1_16_DLINE_1_16_g0_auto_0_in),
      .siw_read_xbar_data_to_DLINE_32_16_DLINE_32_16_g0_auto_0_in(data_to_DLINE_32_16_DLINE_32_16_g0_auto_0_in),
      .siw_read_xbar_data_to_DLINE_32_16_DLINE_32_16_g0_auto_1_in(data_to_DLINE_32_16_DLINE_32_16_g0_auto_1_in),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_lohi),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i0),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i1),
      .siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_lohi),
      .siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i0(data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i0),
      .siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i1(data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i1),
      .siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_s0(data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_s0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i0),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i1),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i2),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i3),
      .siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_s0),
      .siw_read_xbar_data_to_ND_ND_g0_auto_0_bSize(data_to_ND_ND_g0_auto_0_bSize),
      .siw_read_xbar_data_to_ND_ND_g0_auto_0_chroma(data_to_ND_ND_g0_auto_0_chroma),
      .siw_read_xbar_data_to_ND_ND_g0_auto_0_en(data_to_ND_ND_g0_auto_0_en),
      .siw_read_xbar_data_to_ND_ND_g0_auto_0_mode(data_to_ND_ND_g0_auto_0_mode),
      .siw_read_xbar_data_to_ND_ND_g0_auto_0_posX(data_to_ND_ND_g0_auto_0_posX),
      .siw_read_xbar_data_to_ND_ND_g0_auto_0_posY(data_to_ND_ND_g0_auto_0_posY),
      .siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_0_in(data_to_SEP_32_SEP_32_g0_auto_0_in),
      .siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_1_in(data_to_SEP_32_SEP_32_g0_auto_1_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_in),
      .siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_in),
      .siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_0_en(data_to_SREG_12_SREG_12_g0_auto_0_en),
      .siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_0_in(data_to_SREG_12_SREG_12_g0_auto_0_in),
      .siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_1_en(data_to_SREG_12_SREG_12_g0_auto_1_en),
      .siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_1_in(data_to_SREG_12_SREG_12_g0_auto_1_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_0_en(data_to_SREG_32_SREG_32_g0_auto_0_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_0_in(data_to_SREG_32_SREG_32_g0_auto_0_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_1_en(data_to_SREG_32_SREG_32_g0_auto_1_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_1_in(data_to_SREG_32_SREG_32_g0_auto_1_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_2_en(data_to_SREG_32_SREG_32_g0_auto_2_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_2_in(data_to_SREG_32_SREG_32_g0_auto_2_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_3_en(data_to_SREG_32_SREG_32_g0_auto_3_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_3_in(data_to_SREG_32_SREG_32_g0_auto_3_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_4_en(data_to_SREG_32_SREG_32_g0_auto_4_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_4_in(data_to_SREG_32_SREG_32_g0_auto_4_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_5_en(data_to_SREG_32_SREG_32_g0_auto_5_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_5_in(data_to_SREG_32_SREG_32_g0_auto_5_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_6_en(data_to_SREG_32_SREG_32_g0_auto_6_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_6_in(data_to_SREG_32_SREG_32_g0_auto_6_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_7_en(data_to_SREG_32_SREG_32_g0_auto_7_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_7_in(data_to_SREG_32_SREG_32_g0_auto_7_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_8_en(data_to_SREG_32_SREG_32_g0_auto_8_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_8_in(data_to_SREG_32_SREG_32_g0_auto_8_in),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_9_en(data_to_SREG_32_SREG_32_g0_auto_9_en),
      .siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_9_in(data_to_SREG_32_SREG_32_g0_auto_9_in),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_en(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_en),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_h(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_h),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_en(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_en),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_h(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_h),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j),
      .siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k),
      .siw_read_xbar_data_to_MEM_g00_address_a(extend_mem_0_addr_a),
      .siw_read_xbar_data_to_MEM_g00_address_b(extend_mem_0_addr_b),
      .siw_read_xbar_data_to_MEM_g00_data_in_a(data_to_ram0_a),
      .siw_read_xbar_data_to_MEM_g00_data_in_b(data_to_ram0_b),
      .siw_read_xbar_data_to_MEM_g00_write_a(write_en_ram0_a),
      .siw_read_xbar_data_to_MEM_g00_write_b(write_en_ram0_b),
      .siw_read_xbar_data_to_MEM_g01_address_a(extend_mem_1_addr_a),
      .siw_read_xbar_data_to_MEM_g01_address_b(extend_mem_1_addr_b),
      .siw_read_xbar_data_to_MEM_g01_data_in_a(data_to_ram1_a),
      .siw_read_xbar_data_to_MEM_g01_data_in_b(data_to_ram1_b),
      .siw_read_xbar_data_to_MEM_g01_write_a(write_en_ram1_a),
      .siw_read_xbar_data_to_MEM_g01_write_b(write_en_ram1_b),
      .siw_read_xbar_data_to_MEM_g03_address_a(extend_mem_2_addr_a),
      .siw_read_xbar_data_to_MEM_g03_address_b(extend_mem_2_addr_b),
      .siw_read_xbar_data_to_MEM_g03_data_in_a(data_to_ram2_a),
      .siw_read_xbar_data_to_MEM_g03_data_in_b(data_to_ram2_b),
      .siw_read_xbar_data_to_MEM_g03_write_a(write_en_ram2_a),
      .siw_read_xbar_data_to_MEM_g03_write_b(write_en_ram2_b),
      .siw_read_xbar_data_to_MEM_g04_address_a(extend_mem_3_addr_a),
      .siw_read_xbar_data_to_MEM_g04_address_b(extend_mem_3_addr_b),
      .siw_read_xbar_data_to_MEM_g04_data_in_a(data_to_ram3_a),
      .siw_read_xbar_data_to_MEM_g04_data_in_b(data_to_ram3_b),
      .siw_read_xbar_data_to_MEM_g04_write_a(write_en_ram3_a),
      .siw_read_xbar_data_to_MEM_g04_write_b(write_en_ram3_b),
      .siw_read_xbar_data_to_MEM_g05_address_a(extend_mem_4_addr_a),
      .siw_read_xbar_data_to_MEM_g05_address_b(extend_mem_4_addr_b),
      .siw_read_xbar_data_to_MEM_g05_data_in_a(data_to_ram4_a),
      .siw_read_xbar_data_to_MEM_g05_data_in_b(data_to_ram4_b),
      .siw_read_xbar_data_to_MEM_g05_write_a(write_en_ram4_a),
      .siw_read_xbar_data_to_MEM_g05_write_b(write_en_ram4_b),
      .siw_read_xbar_data_to_MEM_g06_address_a(extend_mem_5_addr_a),
      .siw_read_xbar_data_to_MEM_g06_address_b(extend_mem_5_addr_b),
      .siw_read_xbar_data_to_MEM_g06_data_in_a(data_to_ram5_a),
      .siw_read_xbar_data_to_MEM_g06_data_in_b(data_to_ram5_b),
      .siw_read_xbar_data_to_MEM_g06_write_a(write_en_ram5_a),
      .siw_read_xbar_data_to_MEM_g06_write_b(write_en_ram5_b),
      .siw_read_xbar_data_to_MEM_g07_address_a(extend_mem_6_addr_a),
      .siw_read_xbar_data_to_MEM_g07_address_b(extend_mem_6_addr_b),
      .siw_read_xbar_data_to_MEM_g07_data_in_a(data_to_ram6_a),
      .siw_read_xbar_data_to_MEM_g07_data_in_b(data_to_ram6_b),
      .siw_read_xbar_data_to_MEM_g07_write_a(write_en_ram6_a),
      .siw_read_xbar_data_to_MEM_g07_write_b(write_en_ram6_b),
      .siw_read_xbar_data_to_MEM_g08_address_a(extend_mem_7_addr_a),
      .siw_read_xbar_data_to_MEM_g08_address_b(extend_mem_7_addr_b),
      .siw_read_xbar_data_to_MEM_g08_data_in_a(data_to_ram7_a),
      .siw_read_xbar_data_to_MEM_g08_data_in_b(data_to_ram7_b),
      .siw_read_xbar_data_to_MEM_g08_write_a(write_en_ram7_a),
      .siw_read_xbar_data_to_MEM_g08_write_b(write_en_ram7_b),
      .siw_read_xbar_data_to_MEM_g09_address_a(extend_mem_8_addr_a),
      .siw_read_xbar_data_to_MEM_g09_address_b(extend_mem_8_addr_b),
      .siw_read_xbar_data_to_MEM_g09_data_in_a(data_to_ram8_a),
      .siw_read_xbar_data_to_MEM_g09_data_in_b(data_to_ram8_b),
      .siw_read_xbar_data_to_MEM_g09_write_a(write_en_ram8_a),
      .siw_read_xbar_data_to_MEM_g09_write_b(write_en_ram8_b));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_0 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_0_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_0_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_0_i2),
      .BADD3_32_fu_conf(fu_conf_1),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_0_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_1 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_1_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_1_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_1_i2),
      .BADD3_32_fu_conf(fu_conf_2),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_1_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_2 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_2_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_2_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_2_i2),
      .BADD3_32_fu_conf(fu_conf_3),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_2_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_3 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_3_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_3_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_3_i2),
      .BADD3_32_fu_conf(fu_conf_4),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_3_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_4 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_4_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_4_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_4_i2),
      .BADD3_32_fu_conf(fu_conf_5),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_4_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_5 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_5_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_5_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_5_i2),
      .BADD3_32_fu_conf(fu_conf_6),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_5_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_6 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_6_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_6_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_6_i2),
      .BADD3_32_fu_conf(fu_conf_7),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_6_out));

  BADD3_32 BADD3_32_BADD3_32_g0_auto_7 (
      .BADD3_32_clk(sideworks_clk),
      .BADD3_32_reset(sideworks_reset),
      .BADD3_32_init(init_siw),
      .BADD3_32_in_disable(all_disable),
      .BADD3_32_in_i0(data_to_BADD3_32_BADD3_32_g0_auto_7_i0),
      .BADD3_32_in_i1(data_to_BADD3_32_BADD3_32_g0_auto_7_i1),
      .BADD3_32_in_i2(data_to_BADD3_32_BADD3_32_g0_auto_7_i2),
      .BADD3_32_fu_conf(fu_conf_8),
      .BADD3_32_out_out(data_from_BADD3_32_BADD3_32_g0_auto_7_out));

  BADD_32 BADD_32_BADD_32_g0_auto_0 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_0_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_0_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_0_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_0_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_1 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_1_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_1_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_1_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_1_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_10 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_10_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_10_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_10_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_10_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_2 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_2_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_2_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_2_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_2_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_3 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_3_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_3_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_3_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_3_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_4 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_4_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_4_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_4_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_4_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_5 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_5_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_5_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_5_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_5_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_6 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_6_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_6_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_6_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_6_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_7 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_7_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_7_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_7_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_7_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_8 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_8_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_8_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_8_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_8_sub));

  BADD_32 BADD_32_BADD_32_g0_auto_9 (
      .BADD_32_clk(sideworks_clk),
      .BADD_32_reset(sideworks_reset),
      .BADD_32_init(init_siw),
      .BADD_32_in_disable(all_disable),
      .BADD_32_in_i0(data_to_BADD_32_BADD_32_g0_auto_9_i0),
      .BADD_32_in_i1(data_to_BADD_32_BADD_32_g0_auto_9_i1),
      .BADD_32_out_add(data_from_BADD_32_BADD_32_g0_auto_9_add),
      .BADD_32_out_sub(data_from_BADD_32_BADD_32_g0_auto_9_sub));

  BAU_12 BAU_12_BAU_12_g0_auto_0 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_0_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_0_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_0_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_0_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_0_ld_val),
      .BAU_12_fu_conf(fu_conf_20),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_0_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_0_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_0_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_0_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_0_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_0_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_0_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_1 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_1_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_1_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_1_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_1_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_1_ld_val),
      .BAU_12_fu_conf(fu_conf_21),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_1_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_1_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_1_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_1_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_1_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_1_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_1_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_10 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_10_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_10_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_10_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_10_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_10_ld_val),
      .BAU_12_fu_conf(fu_conf_22),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_10_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_10_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_10_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_10_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_10_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_10_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_10_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_11 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_11_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_11_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_11_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_11_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_11_ld_val),
      .BAU_12_fu_conf(fu_conf_23),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_11_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_11_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_11_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_11_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_11_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_11_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_11_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_12 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_12_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_12_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_12_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_12_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_12_ld_val),
      .BAU_12_fu_conf(fu_conf_24),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_12_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_12_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_12_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_12_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_12_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_12_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_12_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_13 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_13_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_13_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_13_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_13_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_13_ld_val),
      .BAU_12_fu_conf(fu_conf_25),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_13_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_13_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_13_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_13_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_13_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_13_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_13_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_2 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_2_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_2_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_2_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_2_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_2_ld_val),
      .BAU_12_fu_conf(fu_conf_26),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_2_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_2_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_2_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_2_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_2_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_2_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_2_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_3 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_3_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_3_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_3_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_3_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_3_ld_val),
      .BAU_12_fu_conf(fu_conf_27),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_3_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_3_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_3_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_3_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_3_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_3_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_3_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_4 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_4_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_4_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_4_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_4_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_4_ld_val),
      .BAU_12_fu_conf(fu_conf_28),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_4_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_4_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_4_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_4_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_4_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_4_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_4_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_5 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_5_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_5_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_5_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_5_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_5_ld_val),
      .BAU_12_fu_conf(fu_conf_29),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_5_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_5_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_5_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_5_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_5_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_5_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_5_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_6 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_6_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_6_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_6_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_6_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_6_ld_val),
      .BAU_12_fu_conf(fu_conf_30),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_6_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_6_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_6_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_6_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_6_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_6_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_6_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_7 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_7_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_7_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_7_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_7_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_7_ld_val),
      .BAU_12_fu_conf(fu_conf_31),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_7_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_7_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_7_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_7_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_7_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_7_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_7_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_8 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_8_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_8_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_8_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_8_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_8_ld_val),
      .BAU_12_fu_conf(fu_conf_32),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_8_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_8_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_8_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_8_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_8_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_8_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_8_out_revert));

  BAU_12 BAU_12_BAU_12_g0_auto_9 (
      .BAU_12_clk(sideworks_clk),
      .BAU_12_reset(sideworks_reset),
      .BAU_12_init(init_siw),
      .BAU_12_in_disable(all_disable),
      .BAU_12_in_cmp(data_to_BAU_12_BAU_12_g0_auto_9_cmp),
      .BAU_12_in_en(data_to_BAU_12_BAU_12_g0_auto_9_en),
      .BAU_12_in_inc(data_to_BAU_12_BAU_12_g0_auto_9_inc),
      .BAU_12_in_ld(data_to_BAU_12_BAU_12_g0_auto_9_ld),
      .BAU_12_in_ld_val(data_to_BAU_12_BAU_12_g0_auto_9_ld_val),
      .BAU_12_fu_conf(fu_conf_33),
      .BAU_12_out_eq(data_from_BAU_12_BAU_12_g0_auto_9_eq),
      .BAU_12_out_gt(data_from_BAU_12_BAU_12_g0_auto_9_gt),
      .BAU_12_out_lt(data_from_BAU_12_BAU_12_g0_auto_9_lt),
      .BAU_12_out_ne(data_from_BAU_12_BAU_12_g0_auto_9_ne),
      .BAU_12_out_out(data_from_BAU_12_BAU_12_g0_auto_9_out),
      .BAU_12_out_out_inc(data_from_BAU_12_BAU_12_g0_auto_9_out_inc),
      .BAU_12_out_out_revert(data_from_BAU_12_BAU_12_g0_auto_9_out_revert));

  BAU_14 BAU_14_BAU_14_g0_auto_0 (
      .BAU_14_clk(sideworks_clk),
      .BAU_14_reset(sideworks_reset),
      .BAU_14_init(init_siw),
      .BAU_14_in_disable(all_disable),
      .BAU_14_in_cmp(data_to_BAU_14_BAU_14_g0_auto_0_cmp),
      .BAU_14_in_en(data_to_BAU_14_BAU_14_g0_auto_0_en),
      .BAU_14_in_inc(data_to_BAU_14_BAU_14_g0_auto_0_inc),
      .BAU_14_in_ld(data_to_BAU_14_BAU_14_g0_auto_0_ld),
      .BAU_14_in_ld_val(data_to_BAU_14_BAU_14_g0_auto_0_ld_val),
      .BAU_14_fu_conf(fu_conf_34),
      .BAU_14_out_eq(data_from_BAU_14_BAU_14_g0_auto_0_eq),
      .BAU_14_out_gt(data_from_BAU_14_BAU_14_g0_auto_0_gt),
      .BAU_14_out_lt(data_from_BAU_14_BAU_14_g0_auto_0_lt),
      .BAU_14_out_ne(data_from_BAU_14_BAU_14_g0_auto_0_ne),
      .BAU_14_out_out(data_from_BAU_14_BAU_14_g0_auto_0_out),
      .BAU_14_out_out_revert(data_from_BAU_14_BAU_14_g0_auto_0_out_revert));

  BAU_14 BAU_14_BAU_14_g0_auto_1 (
      .BAU_14_clk(sideworks_clk),
      .BAU_14_reset(sideworks_reset),
      .BAU_14_init(init_siw),
      .BAU_14_in_disable(all_disable),
      .BAU_14_in_cmp(data_to_BAU_14_BAU_14_g0_auto_1_cmp),
      .BAU_14_in_en(data_to_BAU_14_BAU_14_g0_auto_1_en),
      .BAU_14_in_inc(data_to_BAU_14_BAU_14_g0_auto_1_inc),
      .BAU_14_in_ld(data_to_BAU_14_BAU_14_g0_auto_1_ld),
      .BAU_14_in_ld_val(data_to_BAU_14_BAU_14_g0_auto_1_ld_val),
      .BAU_14_fu_conf(fu_conf_35),
      .BAU_14_out_eq(data_from_BAU_14_BAU_14_g0_auto_1_eq),
      .BAU_14_out_gt(data_from_BAU_14_BAU_14_g0_auto_1_gt),
      .BAU_14_out_lt(data_from_BAU_14_BAU_14_g0_auto_1_lt),
      .BAU_14_out_ne(data_from_BAU_14_BAU_14_g0_auto_1_ne),
      .BAU_14_out_out(data_from_BAU_14_BAU_14_g0_auto_1_out),
      .BAU_14_out_out_revert(data_from_BAU_14_BAU_14_g0_auto_1_out_revert));

  BAU_14 BAU_14_BAU_14_g0_auto_2 (
      .BAU_14_clk(sideworks_clk),
      .BAU_14_reset(sideworks_reset),
      .BAU_14_init(init_siw),
      .BAU_14_in_disable(all_disable),
      .BAU_14_in_cmp(data_to_BAU_14_BAU_14_g0_auto_2_cmp),
      .BAU_14_in_en(data_to_BAU_14_BAU_14_g0_auto_2_en),
      .BAU_14_in_inc(data_to_BAU_14_BAU_14_g0_auto_2_inc),
      .BAU_14_in_ld(data_to_BAU_14_BAU_14_g0_auto_2_ld),
      .BAU_14_in_ld_val(data_to_BAU_14_BAU_14_g0_auto_2_ld_val),
      .BAU_14_fu_conf(fu_conf_36),
      .BAU_14_out_eq(data_from_BAU_14_BAU_14_g0_auto_2_eq),
      .BAU_14_out_gt(data_from_BAU_14_BAU_14_g0_auto_2_gt),
      .BAU_14_out_lt(data_from_BAU_14_BAU_14_g0_auto_2_lt),
      .BAU_14_out_ne(data_from_BAU_14_BAU_14_g0_auto_2_ne),
      .BAU_14_out_out(data_from_BAU_14_BAU_14_g0_auto_2_out),
      .BAU_14_out_out_revert(data_from_BAU_14_BAU_14_g0_auto_2_out_revert));

  BAU_14 BAU_14_BAU_14_g0_auto_3 (
      .BAU_14_clk(sideworks_clk),
      .BAU_14_reset(sideworks_reset),
      .BAU_14_init(init_siw),
      .BAU_14_in_disable(all_disable),
      .BAU_14_in_cmp(data_to_BAU_14_BAU_14_g0_auto_3_cmp),
      .BAU_14_in_en(data_to_BAU_14_BAU_14_g0_auto_3_en),
      .BAU_14_in_inc(data_to_BAU_14_BAU_14_g0_auto_3_inc),
      .BAU_14_in_ld(data_to_BAU_14_BAU_14_g0_auto_3_ld),
      .BAU_14_in_ld_val(data_to_BAU_14_BAU_14_g0_auto_3_ld_val),
      .BAU_14_fu_conf(fu_conf_37),
      .BAU_14_out_eq(data_from_BAU_14_BAU_14_g0_auto_3_eq),
      .BAU_14_out_gt(data_from_BAU_14_BAU_14_g0_auto_3_gt),
      .BAU_14_out_lt(data_from_BAU_14_BAU_14_g0_auto_3_lt),
      .BAU_14_out_ne(data_from_BAU_14_BAU_14_g0_auto_3_ne),
      .BAU_14_out_out(data_from_BAU_14_BAU_14_g0_auto_3_out),
      .BAU_14_out_out_revert(data_from_BAU_14_BAU_14_g0_auto_3_out_revert));

  BD BD_BD_g0_auto_0 (
      .BD_clk(sideworks_clk),
      .BD_reset(sideworks_reset),
      .BD_init(init_siw),
      .BD_in_disable(all_disable),
      .BD_in_in(data_to_BD_BD_g0_auto_0_in),
      .BD_out_out0(data_from_BD_BD_g0_auto_0_out0),
      .BD_out_out1(data_from_BD_BD_g0_auto_0_out1),
      .BD_out_out2(data_from_BD_BD_g0_auto_0_out2),
      .BD_out_out3(data_from_BD_BD_g0_auto_0_out3));

  BD BD_BD_g0_auto_1 (
      .BD_clk(sideworks_clk),
      .BD_reset(sideworks_reset),
      .BD_init(init_siw),
      .BD_in_disable(all_disable),
      .BD_in_in(data_to_BD_BD_g0_auto_1_in),
      .BD_out_out0(data_from_BD_BD_g0_auto_1_out0),
      .BD_out_out1(data_from_BD_BD_g0_auto_1_out1),
      .BD_out_out2(data_from_BD_BD_g0_auto_1_out2),
      .BD_out_out3(data_from_BD_BD_g0_auto_1_out3));

  BLU_1 BLU_1_BLU_1_g0_auto_0 (
      .BLU_1_clk(sideworks_clk),
      .BLU_1_reset(sideworks_reset),
      .BLU_1_init(init_siw),
      .BLU_1_in_disable(all_disable),
      .BLU_1_in_en(data_to_BLU_1_BLU_1_g0_auto_0_en),
      .BLU_1_in_i0(data_to_BLU_1_BLU_1_g0_auto_0_i0),
      .BLU_1_in_i1(data_to_BLU_1_BLU_1_g0_auto_0_i1),
      .BLU_1_fu_conf(fu_conf_40),
      .BLU_1_out_out(data_from_BLU_1_BLU_1_g0_auto_0_out));

  BLU_1 BLU_1_BLU_1_g0_auto_1 (
      .BLU_1_clk(sideworks_clk),
      .BLU_1_reset(sideworks_reset),
      .BLU_1_init(init_siw),
      .BLU_1_in_disable(all_disable),
      .BLU_1_in_en(data_to_BLU_1_BLU_1_g0_auto_1_en),
      .BLU_1_in_i0(data_to_BLU_1_BLU_1_g0_auto_1_i0),
      .BLU_1_in_i1(data_to_BLU_1_BLU_1_g0_auto_1_i1),
      .BLU_1_fu_conf(fu_conf_41),
      .BLU_1_out_out(data_from_BLU_1_BLU_1_g0_auto_1_out));

  BM BM_BM_g0_auto_0 (
      .BM_clk(sideworks_clk),
      .BM_reset(sideworks_reset),
      .BM_init(init_siw),
      .BM_in_disable(all_disable),
      .BM_in_i0(data_to_BM_BM_g0_auto_0_i0),
      .BM_in_i1(data_to_BM_BM_g0_auto_0_i1),
      .BM_in_i2(data_to_BM_BM_g0_auto_0_i2),
      .BM_in_i3(data_to_BM_BM_g0_auto_0_i3),
      .BM_out_out(data_from_BM_BM_g0_auto_0_out));

  BM BM_BM_g0_auto_1 (
      .BM_clk(sideworks_clk),
      .BM_reset(sideworks_reset),
      .BM_init(init_siw),
      .BM_in_disable(all_disable),
      .BM_in_i0(data_to_BM_BM_g0_auto_1_i0),
      .BM_in_i1(data_to_BM_BM_g0_auto_1_i1),
      .BM_in_i2(data_to_BM_BM_g0_auto_1_i2),
      .BM_in_i3(data_to_BM_BM_g0_auto_1_i3),
      .BM_out_out(data_from_BM_BM_g0_auto_1_out));

  BM BM_BM_g0_auto_2 (
      .BM_clk(sideworks_clk),
      .BM_reset(sideworks_reset),
      .BM_init(init_siw),
      .BM_in_disable(all_disable),
      .BM_in_i0(data_to_BM_BM_g0_auto_2_i0),
      .BM_in_i1(data_to_BM_BM_g0_auto_2_i1),
      .BM_in_i2(data_to_BM_BM_g0_auto_2_i2),
      .BM_in_i3(data_to_BM_BM_g0_auto_2_i3),
      .BM_out_out(data_from_BM_BM_g0_auto_2_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_0 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_0_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_0_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_0_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_0_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_1 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_1_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_1_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_1_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_1_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_2 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_2_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_2_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_2_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_2_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_3 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_3_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_3_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_3_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_3_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_4 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_4_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_4_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_4_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_4_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_5 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_5_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_5_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_5_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_5_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_6 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_6_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_6_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_6_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_6_out));

  CLIP_32 CLIP_32_CLIP_32_g0_auto_7 (
      .CLIP_32_clk(sideworks_clk),
      .CLIP_32_reset(sideworks_reset),
      .CLIP_32_init(init_siw),
      .CLIP_32_in_disable(all_disable),
      .CLIP_32_in_down(data_to_CLIP_32_CLIP_32_g0_auto_7_down),
      .CLIP_32_in_in(data_to_CLIP_32_CLIP_32_g0_auto_7_in),
      .CLIP_32_in_up(data_to_CLIP_32_CLIP_32_g0_auto_7_up),
      .CLIP_32_out_out(data_from_CLIP_32_CLIP_32_g0_auto_7_out));

  CONC_32 CONC_32_CONC_32_g0_auto_0 (
      .CONC_32_clk(sideworks_clk),
      .CONC_32_reset(sideworks_reset),
      .CONC_32_init(init_siw),
      .CONC_32_in_disable(all_disable),
      .CONC_32_in_b0(data_to_CONC_32_CONC_32_g0_auto_0_b0),
      .CONC_32_in_b1(data_to_CONC_32_CONC_32_g0_auto_0_b1),
      .CONC_32_in_b10(data_to_CONC_32_CONC_32_g0_auto_0_b10),
      .CONC_32_in_b11(data_to_CONC_32_CONC_32_g0_auto_0_b11),
      .CONC_32_in_b12(data_to_CONC_32_CONC_32_g0_auto_0_b12),
      .CONC_32_in_b13(data_to_CONC_32_CONC_32_g0_auto_0_b13),
      .CONC_32_in_b14(data_to_CONC_32_CONC_32_g0_auto_0_b14),
      .CONC_32_in_b15(data_to_CONC_32_CONC_32_g0_auto_0_b15),
      .CONC_32_in_b16(data_to_CONC_32_CONC_32_g0_auto_0_b16),
      .CONC_32_in_b17(data_to_CONC_32_CONC_32_g0_auto_0_b17),
      .CONC_32_in_b18(data_to_CONC_32_CONC_32_g0_auto_0_b18),
      .CONC_32_in_b19(data_to_CONC_32_CONC_32_g0_auto_0_b19),
      .CONC_32_in_b2(data_to_CONC_32_CONC_32_g0_auto_0_b2),
      .CONC_32_in_b20(data_to_CONC_32_CONC_32_g0_auto_0_b20),
      .CONC_32_in_b21(data_to_CONC_32_CONC_32_g0_auto_0_b21),
      .CONC_32_in_b22(data_to_CONC_32_CONC_32_g0_auto_0_b22),
      .CONC_32_in_b23(data_to_CONC_32_CONC_32_g0_auto_0_b23),
      .CONC_32_in_b24(data_to_CONC_32_CONC_32_g0_auto_0_b24),
      .CONC_32_in_b25(data_to_CONC_32_CONC_32_g0_auto_0_b25),
      .CONC_32_in_b26(data_to_CONC_32_CONC_32_g0_auto_0_b26),
      .CONC_32_in_b27(data_to_CONC_32_CONC_32_g0_auto_0_b27),
      .CONC_32_in_b28(data_to_CONC_32_CONC_32_g0_auto_0_b28),
      .CONC_32_in_b29(data_to_CONC_32_CONC_32_g0_auto_0_b29),
      .CONC_32_in_b3(data_to_CONC_32_CONC_32_g0_auto_0_b3),
      .CONC_32_in_b30(data_to_CONC_32_CONC_32_g0_auto_0_b30),
      .CONC_32_in_b31(data_to_CONC_32_CONC_32_g0_auto_0_b31),
      .CONC_32_in_b4(data_to_CONC_32_CONC_32_g0_auto_0_b4),
      .CONC_32_in_b5(data_to_CONC_32_CONC_32_g0_auto_0_b5),
      .CONC_32_in_b6(data_to_CONC_32_CONC_32_g0_auto_0_b6),
      .CONC_32_in_b7(data_to_CONC_32_CONC_32_g0_auto_0_b7),
      .CONC_32_in_b8(data_to_CONC_32_CONC_32_g0_auto_0_b8),
      .CONC_32_in_b9(data_to_CONC_32_CONC_32_g0_auto_0_b9),
      .CONC_32_out_out(data_from_CONC_32_CONC_32_g0_auto_0_out));

  CONC_32 CONC_32_CONC_32_g0_auto_1 (
      .CONC_32_clk(sideworks_clk),
      .CONC_32_reset(sideworks_reset),
      .CONC_32_init(init_siw),
      .CONC_32_in_disable(all_disable),
      .CONC_32_in_b0(data_to_CONC_32_CONC_32_g0_auto_1_b0),
      .CONC_32_in_b1(data_to_CONC_32_CONC_32_g0_auto_1_b1),
      .CONC_32_in_b10(data_to_CONC_32_CONC_32_g0_auto_1_b10),
      .CONC_32_in_b11(data_to_CONC_32_CONC_32_g0_auto_1_b11),
      .CONC_32_in_b12(data_to_CONC_32_CONC_32_g0_auto_1_b12),
      .CONC_32_in_b13(data_to_CONC_32_CONC_32_g0_auto_1_b13),
      .CONC_32_in_b14(data_to_CONC_32_CONC_32_g0_auto_1_b14),
      .CONC_32_in_b15(data_to_CONC_32_CONC_32_g0_auto_1_b15),
      .CONC_32_in_b16(data_to_CONC_32_CONC_32_g0_auto_1_b16),
      .CONC_32_in_b17(data_to_CONC_32_CONC_32_g0_auto_1_b17),
      .CONC_32_in_b18(data_to_CONC_32_CONC_32_g0_auto_1_b18),
      .CONC_32_in_b19(data_to_CONC_32_CONC_32_g0_auto_1_b19),
      .CONC_32_in_b2(data_to_CONC_32_CONC_32_g0_auto_1_b2),
      .CONC_32_in_b20(data_to_CONC_32_CONC_32_g0_auto_1_b20),
      .CONC_32_in_b21(data_to_CONC_32_CONC_32_g0_auto_1_b21),
      .CONC_32_in_b22(data_to_CONC_32_CONC_32_g0_auto_1_b22),
      .CONC_32_in_b23(data_to_CONC_32_CONC_32_g0_auto_1_b23),
      .CONC_32_in_b24(data_to_CONC_32_CONC_32_g0_auto_1_b24),
      .CONC_32_in_b25(data_to_CONC_32_CONC_32_g0_auto_1_b25),
      .CONC_32_in_b26(data_to_CONC_32_CONC_32_g0_auto_1_b26),
      .CONC_32_in_b27(data_to_CONC_32_CONC_32_g0_auto_1_b27),
      .CONC_32_in_b28(data_to_CONC_32_CONC_32_g0_auto_1_b28),
      .CONC_32_in_b29(data_to_CONC_32_CONC_32_g0_auto_1_b29),
      .CONC_32_in_b3(data_to_CONC_32_CONC_32_g0_auto_1_b3),
      .CONC_32_in_b30(data_to_CONC_32_CONC_32_g0_auto_1_b30),
      .CONC_32_in_b31(data_to_CONC_32_CONC_32_g0_auto_1_b31),
      .CONC_32_in_b4(data_to_CONC_32_CONC_32_g0_auto_1_b4),
      .CONC_32_in_b5(data_to_CONC_32_CONC_32_g0_auto_1_b5),
      .CONC_32_in_b6(data_to_CONC_32_CONC_32_g0_auto_1_b6),
      .CONC_32_in_b7(data_to_CONC_32_CONC_32_g0_auto_1_b7),
      .CONC_32_in_b8(data_to_CONC_32_CONC_32_g0_auto_1_b8),
      .CONC_32_in_b9(data_to_CONC_32_CONC_32_g0_auto_1_b9),
      .CONC_32_out_out(data_from_CONC_32_CONC_32_g0_auto_1_out));

  DLINE_1_16 DLINE_1_16_DLINE_1_16_g0_auto_0 (
      .DLINE_1_16_clk(sideworks_clk),
      .DLINE_1_16_reset(sideworks_reset),
      .DLINE_1_16_init(init_siw),
      .DLINE_1_16_in_disable(all_disable),
      .DLINE_1_16_in_in(data_to_DLINE_1_16_DLINE_1_16_g0_auto_0_in),
      .DLINE_1_16_fu_conf(fu_conf_55),
      .DLINE_1_16_out_out(data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out));

  DLINE_32_16 DLINE_32_16_DLINE_32_16_g0_auto_0 (
      .DLINE_32_16_clk(sideworks_clk),
      .DLINE_32_16_reset(sideworks_reset),
      .DLINE_32_16_init(init_siw),
      .DLINE_32_16_in_disable(all_disable),
      .DLINE_32_16_in_in(data_to_DLINE_32_16_DLINE_32_16_g0_auto_0_in),
      .DLINE_32_16_fu_conf(fu_conf_56),
      .DLINE_32_16_out_out(data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out));

  DLINE_32_16 DLINE_32_16_DLINE_32_16_g0_auto_1 (
      .DLINE_32_16_clk(sideworks_clk),
      .DLINE_32_16_reset(sideworks_reset),
      .DLINE_32_16_init(init_siw),
      .DLINE_32_16_in_disable(all_disable),
      .DLINE_32_16_in_in(data_to_DLINE_32_16_DLINE_32_16_g0_auto_1_in),
      .DLINE_32_16_fu_conf(fu_conf_57),
      .DLINE_32_16_out_out(data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_0 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_67),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_1 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_68),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_2 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_69),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_3 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_70),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_4 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_71),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_5 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_72),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_6 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_73),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out_64_lsh1));

  MUL_D4_32_64 MUL_D4_32_64_MUL_D4_32_64_g0_auto_7 (
      .MUL_D4_32_64_clk(sideworks_clk),
      .MUL_D4_32_64_reset(sideworks_reset),
      .MUL_D4_32_64_init(init_siw),
      .MUL_D4_32_64_in_disable(all_disable),
      .MUL_D4_32_64_in_i0(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i0),
      .MUL_D4_32_64_in_i1(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i1),
      .MUL_D4_32_64_in_lohi(data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_lohi),
      .MUL_D4_32_64_fu_conf(fu_conf_74),
      .MUL_D4_32_64_out_out(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out),
      .MUL_D4_32_64_out_out_64(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out_64),
      .MUL_D4_32_64_out_out_64_lsh1(data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out_64_lsh1));

  MUX2TO1_32 MUX2TO1_32_MUX2TO1_32_g0_auto_0 (
      .MUX2TO1_32_clk(sideworks_clk),
      .MUX2TO1_32_reset(sideworks_reset),
      .MUX2TO1_32_init(init_siw),
      .MUX2TO1_32_in_disable(all_disable),
      .MUX2TO1_32_in_i0(data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i0),
      .MUX2TO1_32_in_i1(data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i1),
      .MUX2TO1_32_in_s0(data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_s0),
      .MUX2TO1_32_out_out(data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_0 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_1 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_2 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_3 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_4 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_4_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_5 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_5_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_6 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_6_out));

  MUX4TO1_32 MUX4TO1_32_MUX4TO1_32_g0_auto_7 (
      .MUX4TO1_32_clk(sideworks_clk),
      .MUX4TO1_32_reset(sideworks_reset),
      .MUX4TO1_32_init(init_siw),
      .MUX4TO1_32_in_disable(all_disable),
      .MUX4TO1_32_in_i0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i0),
      .MUX4TO1_32_in_i1(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i1),
      .MUX4TO1_32_in_i2(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i2),
      .MUX4TO1_32_in_i3(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i3),
      .MUX4TO1_32_in_s0(data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_s0),
      .MUX4TO1_32_out_out(data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_7_out));

  ND ND_ND_g0_auto_0 (
      .ND_clk(sideworks_clk),
      .ND_reset(sideworks_reset),
      .ND_init(init_siw),
      .ND_in_disable(all_disable),
      .ND_in_PicWidthInMbs(SIW_CTRL_PicWidthInMbs),
      .ND_in_PicSizeInMbs(SIW_CTRL_PicSizeInMbs),
      .ND_in_incr(siw_nd_inc),
      .ND_in_restart(siw_nd_restart),
      .ND_out_master_num(siw_deblock_in_MB_num),
      .ND_in_bSize(data_to_ND_ND_g0_auto_0_bSize),
      .ND_in_chroma(data_to_ND_ND_g0_auto_0_chroma),
      .ND_in_en(data_to_ND_ND_g0_auto_0_en),
      .ND_in_mode(data_to_ND_ND_g0_auto_0_mode),
      .ND_in_posX(data_to_ND_ND_g0_auto_0_posX),
      .ND_in_posY(data_to_ND_ND_g0_auto_0_posY),
      .ND_out_leA(data_from_ND_ND_g0_auto_0_leA),
      .ND_out_leMO(data_from_ND_ND_g0_auto_0_leMO),
      .ND_out_leMO_(data_from_ND_ND_g0_auto_0_leMO_),
      .ND_out_leN(data_from_ND_ND_g0_auto_0_leN),
      .ND_out_leX(data_from_ND_ND_g0_auto_0_leX),
      .ND_out_leY(data_from_ND_ND_g0_auto_0_leY),
      .ND_out_num(data_from_ND_ND_g0_auto_0_num),
      .ND_out_ulA(data_from_ND_ND_g0_auto_0_ulA),
      .ND_out_ulMO(data_from_ND_ND_g0_auto_0_ulMO),
      .ND_out_ulMO_(data_from_ND_ND_g0_auto_0_ulMO_),
      .ND_out_ulN(data_from_ND_ND_g0_auto_0_ulN),
      .ND_out_ulX(data_from_ND_ND_g0_auto_0_ulX),
      .ND_out_ulY(data_from_ND_ND_g0_auto_0_ulY),
      .ND_out_upA(data_from_ND_ND_g0_auto_0_upA),
      .ND_out_upMO(data_from_ND_ND_g0_auto_0_upMO),
      .ND_out_upMO_(data_from_ND_ND_g0_auto_0_upMO_),
      .ND_out_upN(data_from_ND_ND_g0_auto_0_upN),
      .ND_out_upX(data_from_ND_ND_g0_auto_0_upX),
      .ND_out_upY(data_from_ND_ND_g0_auto_0_upY),
      .ND_out_urA(data_from_ND_ND_g0_auto_0_urA),
      .ND_out_urMO(data_from_ND_ND_g0_auto_0_urMO),
      .ND_out_urMO_(data_from_ND_ND_g0_auto_0_urMO_),
      .ND_out_urN(data_from_ND_ND_g0_auto_0_urN),
      .ND_out_urX(data_from_ND_ND_g0_auto_0_urX),
      .ND_out_urY(data_from_ND_ND_g0_auto_0_urY));

  ONE ONE_g00 (
      .ONE_clk(sideworks_clk),
      .ONE_reset(sideworks_reset),
      .ONE_init(init_siw),
      .ONE_in_disable(all_disable),
      .ONE_out_fixed_out_1(data_from_ONE_g00_fixed_out_1),
      .ONE_out_fixed_out_12(data_from_ONE_g00_fixed_out_12),
      .ONE_out_fixed_out_32(data_from_ONE_g00_fixed_out_32));

  SEP_32 SEP_32_SEP_32_g0_auto_0 (
      .SEP_32_clk(sideworks_clk),
      .SEP_32_reset(sideworks_reset),
      .SEP_32_init(init_siw),
      .SEP_32_in_disable(all_disable),
      .SEP_32_in_in(data_to_SEP_32_SEP_32_g0_auto_0_in),
      .SEP_32_out_b0(data_from_SEP_32_SEP_32_g0_auto_0_b0),
      .SEP_32_out_b1(data_from_SEP_32_SEP_32_g0_auto_0_b1),
      .SEP_32_out_b10(data_from_SEP_32_SEP_32_g0_auto_0_b10),
      .SEP_32_out_b11(data_from_SEP_32_SEP_32_g0_auto_0_b11),
      .SEP_32_out_b12(data_from_SEP_32_SEP_32_g0_auto_0_b12),
      .SEP_32_out_b13(data_from_SEP_32_SEP_32_g0_auto_0_b13),
      .SEP_32_out_b14(data_from_SEP_32_SEP_32_g0_auto_0_b14),
      .SEP_32_out_b15(data_from_SEP_32_SEP_32_g0_auto_0_b15),
      .SEP_32_out_b16(data_from_SEP_32_SEP_32_g0_auto_0_b16),
      .SEP_32_out_b17(data_from_SEP_32_SEP_32_g0_auto_0_b17),
      .SEP_32_out_b18(data_from_SEP_32_SEP_32_g0_auto_0_b18),
      .SEP_32_out_b19(data_from_SEP_32_SEP_32_g0_auto_0_b19),
      .SEP_32_out_b2(data_from_SEP_32_SEP_32_g0_auto_0_b2),
      .SEP_32_out_b20(data_from_SEP_32_SEP_32_g0_auto_0_b20),
      .SEP_32_out_b21(data_from_SEP_32_SEP_32_g0_auto_0_b21),
      .SEP_32_out_b22(data_from_SEP_32_SEP_32_g0_auto_0_b22),
      .SEP_32_out_b23(data_from_SEP_32_SEP_32_g0_auto_0_b23),
      .SEP_32_out_b24(data_from_SEP_32_SEP_32_g0_auto_0_b24),
      .SEP_32_out_b25(data_from_SEP_32_SEP_32_g0_auto_0_b25),
      .SEP_32_out_b26(data_from_SEP_32_SEP_32_g0_auto_0_b26),
      .SEP_32_out_b27(data_from_SEP_32_SEP_32_g0_auto_0_b27),
      .SEP_32_out_b28(data_from_SEP_32_SEP_32_g0_auto_0_b28),
      .SEP_32_out_b29(data_from_SEP_32_SEP_32_g0_auto_0_b29),
      .SEP_32_out_b3(data_from_SEP_32_SEP_32_g0_auto_0_b3),
      .SEP_32_out_b30(data_from_SEP_32_SEP_32_g0_auto_0_b30),
      .SEP_32_out_b31(data_from_SEP_32_SEP_32_g0_auto_0_b31),
      .SEP_32_out_b4(data_from_SEP_32_SEP_32_g0_auto_0_b4),
      .SEP_32_out_b5(data_from_SEP_32_SEP_32_g0_auto_0_b5),
      .SEP_32_out_b6(data_from_SEP_32_SEP_32_g0_auto_0_b6),
      .SEP_32_out_b7(data_from_SEP_32_SEP_32_g0_auto_0_b7),
      .SEP_32_out_b8(data_from_SEP_32_SEP_32_g0_auto_0_b8),
      .SEP_32_out_b9(data_from_SEP_32_SEP_32_g0_auto_0_b9));

  SEP_32 SEP_32_SEP_32_g0_auto_1 (
      .SEP_32_clk(sideworks_clk),
      .SEP_32_reset(sideworks_reset),
      .SEP_32_init(init_siw),
      .SEP_32_in_disable(all_disable),
      .SEP_32_in_in(data_to_SEP_32_SEP_32_g0_auto_1_in),
      .SEP_32_out_b0(data_from_SEP_32_SEP_32_g0_auto_1_b0),
      .SEP_32_out_b1(data_from_SEP_32_SEP_32_g0_auto_1_b1),
      .SEP_32_out_b10(data_from_SEP_32_SEP_32_g0_auto_1_b10),
      .SEP_32_out_b11(data_from_SEP_32_SEP_32_g0_auto_1_b11),
      .SEP_32_out_b12(data_from_SEP_32_SEP_32_g0_auto_1_b12),
      .SEP_32_out_b13(data_from_SEP_32_SEP_32_g0_auto_1_b13),
      .SEP_32_out_b14(data_from_SEP_32_SEP_32_g0_auto_1_b14),
      .SEP_32_out_b15(data_from_SEP_32_SEP_32_g0_auto_1_b15),
      .SEP_32_out_b16(data_from_SEP_32_SEP_32_g0_auto_1_b16),
      .SEP_32_out_b17(data_from_SEP_32_SEP_32_g0_auto_1_b17),
      .SEP_32_out_b18(data_from_SEP_32_SEP_32_g0_auto_1_b18),
      .SEP_32_out_b19(data_from_SEP_32_SEP_32_g0_auto_1_b19),
      .SEP_32_out_b2(data_from_SEP_32_SEP_32_g0_auto_1_b2),
      .SEP_32_out_b20(data_from_SEP_32_SEP_32_g0_auto_1_b20),
      .SEP_32_out_b21(data_from_SEP_32_SEP_32_g0_auto_1_b21),
      .SEP_32_out_b22(data_from_SEP_32_SEP_32_g0_auto_1_b22),
      .SEP_32_out_b23(data_from_SEP_32_SEP_32_g0_auto_1_b23),
      .SEP_32_out_b24(data_from_SEP_32_SEP_32_g0_auto_1_b24),
      .SEP_32_out_b25(data_from_SEP_32_SEP_32_g0_auto_1_b25),
      .SEP_32_out_b26(data_from_SEP_32_SEP_32_g0_auto_1_b26),
      .SEP_32_out_b27(data_from_SEP_32_SEP_32_g0_auto_1_b27),
      .SEP_32_out_b28(data_from_SEP_32_SEP_32_g0_auto_1_b28),
      .SEP_32_out_b29(data_from_SEP_32_SEP_32_g0_auto_1_b29),
      .SEP_32_out_b3(data_from_SEP_32_SEP_32_g0_auto_1_b3),
      .SEP_32_out_b30(data_from_SEP_32_SEP_32_g0_auto_1_b30),
      .SEP_32_out_b31(data_from_SEP_32_SEP_32_g0_auto_1_b31),
      .SEP_32_out_b4(data_from_SEP_32_SEP_32_g0_auto_1_b4),
      .SEP_32_out_b5(data_from_SEP_32_SEP_32_g0_auto_1_b5),
      .SEP_32_out_b6(data_from_SEP_32_SEP_32_g0_auto_1_b6),
      .SEP_32_out_b7(data_from_SEP_32_SEP_32_g0_auto_1_b7),
      .SEP_32_out_b8(data_from_SEP_32_SEP_32_g0_auto_1_b8),
      .SEP_32_out_b9(data_from_SEP_32_SEP_32_g0_auto_1_b9));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_0 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_1 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_2 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_3 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_4 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_5 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_6 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_out));

  SHIFT_R5_32 SHIFT_R5_32_SHIFT_R5_32_g0_auto_7 (
      .SHIFT_R5_32_clk(sideworks_clk),
      .SHIFT_R5_32_reset(sideworks_reset),
      .SHIFT_R5_32_init(init_siw),
      .SHIFT_R5_32_in_disable(all_disable),
      .SHIFT_R5_32_in_in(data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_in),
      .SHIFT_R5_32_out_out(data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_out));

  SREG_12 SREG_12_SREG_12_g0_auto_0 (
      .SREG_12_clk(sideworks_clk),
      .SREG_12_reset(sideworks_reset),
      .SREG_12_init(init_siw),
      .SREG_12_in_disable(all_disable),
      .SREG_12_in_en(data_to_SREG_12_SREG_12_g0_auto_0_en),
      .SREG_12_in_in(data_to_SREG_12_SREG_12_g0_auto_0_in),
      .SREG_12_out_out(data_from_SREG_12_SREG_12_g0_auto_0_out));

  SREG_12 SREG_12_SREG_12_g0_auto_1 (
      .SREG_12_clk(sideworks_clk),
      .SREG_12_reset(sideworks_reset),
      .SREG_12_init(init_siw),
      .SREG_12_in_disable(all_disable),
      .SREG_12_in_en(data_to_SREG_12_SREG_12_g0_auto_1_en),
      .SREG_12_in_in(data_to_SREG_12_SREG_12_g0_auto_1_in),
      .SREG_12_out_out(data_from_SREG_12_SREG_12_g0_auto_1_out));

  SREG_32 SREG_32_SREG_32_g0_auto_0 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_0_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_0_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_0_out));

  SREG_32 SREG_32_SREG_32_g0_auto_1 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_1_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_1_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_1_out));

  SREG_32 SREG_32_SREG_32_g0_auto_2 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_2_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_2_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_2_out));

  SREG_32 SREG_32_SREG_32_g0_auto_3 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_3_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_3_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_3_out));

  SREG_32 SREG_32_SREG_32_g0_auto_4 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_4_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_4_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_4_out));

  SREG_32 SREG_32_SREG_32_g0_auto_5 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_5_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_5_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_5_out));

  SREG_32 SREG_32_SREG_32_g0_auto_6 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_6_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_6_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_6_out));

  SREG_32 SREG_32_SREG_32_g0_auto_7 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_7_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_7_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_7_out));

  SREG_32 SREG_32_SREG_32_g0_auto_8 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_8_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_8_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_8_out));

  SREG_32 SREG_32_SREG_32_g0_auto_9 (
      .SREG_32_clk(sideworks_clk),
      .SREG_32_reset(sideworks_reset),
      .SREG_32_init(init_siw),
      .SREG_32_in_disable(all_disable),
      .SREG_32_in_en(data_to_SREG_32_SREG_32_g0_auto_9_en),
      .SREG_32_in_in(data_to_SREG_32_SREG_32_g0_auto_9_in),
      .SREG_32_out_out(data_from_SREG_32_SREG_32_g0_auto_9_out));

  THREE THREE_g00 (
      .THREE_clk(sideworks_clk),
      .THREE_reset(sideworks_reset),
      .THREE_init(init_siw),
      .THREE_in_disable(all_disable),
      .THREE_out_fixed_out_12(data_from_THREE_g00_fixed_out_12));

  TU_4_4_12 TU_4_4_12_TU_4_4_12_g0_auto_0 (
      .TU_4_4_12_clk(sideworks_clk),
      .TU_4_4_12_reset(sideworks_reset),
      .TU_4_4_12_init(init_siw),
      .TU_4_4_12_in_disable(all_disable),
      .TU_4_4_12_in_en(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_en),
      .TU_4_4_12_in_limit_h(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_h),
      .TU_4_4_12_in_limit_i(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i),
      .TU_4_4_12_in_limit_j(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j),
      .TU_4_4_12_in_limit_k(data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k),
      .TU_4_4_12_fu_conf(fu_conf_109),
      .TU_4_4_12_out_done(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done),
      .TU_4_4_12_out_enable_H_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_H_),
      .TU_4_4_12_out_enable_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_),
      .TU_4_4_12_out_enable_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_),
      .TU_4_4_12_out_enable_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_),
      .TU_4_4_12_out_end_H_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_H_),
      .TU_4_4_12_out_end_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_I_),
      .TU_4_4_12_out_end_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_J_),
      .TU_4_4_12_out_end_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_end_K_),
      .TU_4_4_12_out_start_H_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_H_),
      .TU_4_4_12_out_start_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_),
      .TU_4_4_12_out_start_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_),
      .TU_4_4_12_out_start_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_));

  TU_4_4_12 TU_4_4_12_TU_4_4_12_g0_auto_1 (
      .TU_4_4_12_clk(sideworks_clk),
      .TU_4_4_12_reset(sideworks_reset),
      .TU_4_4_12_init(init_siw),
      .TU_4_4_12_in_disable(all_disable),
      .TU_4_4_12_in_en(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_en),
      .TU_4_4_12_in_limit_h(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_h),
      .TU_4_4_12_in_limit_i(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i),
      .TU_4_4_12_in_limit_j(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j),
      .TU_4_4_12_in_limit_k(data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k),
      .TU_4_4_12_fu_conf(fu_conf_110),
      .TU_4_4_12_out_done(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done),
      .TU_4_4_12_out_enable_H_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_H_),
      .TU_4_4_12_out_enable_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_),
      .TU_4_4_12_out_enable_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_),
      .TU_4_4_12_out_enable_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_),
      .TU_4_4_12_out_end_H_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_H_),
      .TU_4_4_12_out_end_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_I_),
      .TU_4_4_12_out_end_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_J_),
      .TU_4_4_12_out_end_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_end_K_),
      .TU_4_4_12_out_start_H_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_H_),
      .TU_4_4_12_out_start_I_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_),
      .TU_4_4_12_out_start_J_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_),
      .TU_4_4_12_out_start_K_(data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_));

  TWO TWO_g00 (
      .TWO_clk(sideworks_clk),
      .TWO_reset(sideworks_reset),
      .TWO_init(init_siw),
      .TWO_in_disable(all_disable),
      .TWO_out_fixed_out_12(data_from_TWO_g00_fixed_out_12));

  ZERO ZERO_g00 (
      .ZERO_clk(sideworks_clk),
      .ZERO_reset(sideworks_reset),
      .ZERO_init(init_siw),
      .ZERO_in_disable(all_disable),
      .ZERO_out_fixed_out_1(data_from_ZERO_g00_fixed_out_1),
      .ZERO_out_fixed_out_12(data_from_ZERO_g00_fixed_out_12),
      .ZERO_out_fixed_out_14(data_from_ZERO_g00_fixed_out_14),
      .ZERO_out_fixed_out_2(data_from_ZERO_g00_fixed_out_2),
      .ZERO_out_fixed_out_32(data_from_ZERO_g00_fixed_out_32),
      .ZERO_out_fixed_out_7(data_from_ZERO_g00_fixed_out_7),
      .ZERO_out_fixed_out_8(data_from_ZERO_g00_fixed_out_8));

  fIXED128 fIXED128_g00 (
      .fIXED128_clk(sideworks_clk),
      .fIXED128_reset(sideworks_reset),
      .fIXED128_init(init_siw),
      .fIXED128_in_disable(all_disable));

  fIXED31 fIXED31_g00 (
      .fIXED31_clk(sideworks_clk),
      .fIXED31_reset(sideworks_reset),
      .fIXED31_init(init_siw),
      .fIXED31_in_disable(all_disable));

  mONE mONE_g00 (
      .mONE_clk(sideworks_clk),
      .mONE_reset(sideworks_reset),
      .mONE_init(init_siw),
      .mONE_in_disable(all_disable),
      .mONE_out_fixed_out_32(data_from_mONE_g00_fixed_out_32));

  mTWO mTWO_g00 (
      .mTWO_clk(sideworks_clk),
      .mTWO_reset(sideworks_reset),
      .mTWO_init(init_siw),
      .mTWO_in_disable(all_disable));

//------------------
// Pure Verilog Part -
//------------------
SIW_CTRL #(
.MASTER_ONLY	(0),
.SLAVE_ONLY (1)
)
SIW_CTRL_module(
      .SIW_CTRL_clk						(sideworks_clk),
      .SIW_CTRL_reset						(sideworks_reset),
      .SIW_CTRL_init						(init_siw),
      .SIW_CTRL_req_in					(sideworks_ctr_req_in),
      .SIW_CTRL_addr						(sideworks_ctr_addr),
      .SIW_CTRL_wr						(sideworks_ctr_wr),
      .SIW_CTRL_data_in					(sideworks_ctr_data_in),
      .SIW_CTRL_data_out					(sideworks_ctr_data_out_mem_kernel),
      .SIW_CTRL_req_ppb					(sideworks_ctr_req_ppb),
      .SIW_CTRL_conf						(fu_conf_0),
      .SIW_CTRL_done						(data_to_SIW_CTRL_SIW_CTRL_auto_0_done),
      .SIW_CTRL_regfile_done				(done),
      .SIW_CTRL_regfile_kernel_stoped		(siw_regfile_ctr_kernel_stoped),
      .SIW_CTRL_regfile_kernel_run		(siw_regfile_ctr_kernel_run),
      .SIW_CTRL_regfile_load_dp_number	(siw_regfile_ctr_kernel_load_dp_number),
      .SIW_CTRL_regfile_load_dp			(siw_regfile_ctr_kernel_load_dp),
      .SIW_CTRL_regfile_run				(data_from_SIW_CTRL_SIW_CTRL_auto_0_en),
      .SIW_CTRL_regfile_dp_conf_ready		(siw_regfile_ctr_kernel_dp_conf_ready),
      .SIW_CTRL_regfile_busy				(siw_regfile_ctr_kernel_busy),
      .SIW_CTRL_regfile_kernel_done		(siw_regfile_ctr_kernel_done),
      .SIW_CTRL_in_next					(data_to_SIW_CTRL_SIW_CTRL_auto_0_next),
      .SIW_CTRL_in_rd_next				(data_to_SIW_CTRL_SIW_CTRL_auto_0_rd_next),
      .SIW_CTRL_busy_in					(1'b0),
      .SIW_CTRL_in_is_frame_last			(SIW_CTRL_in_is_frame_last),
      .SIW_CTRL_in_is_block_last			(1'b0),
      .SIW_CTRL_out_pl				    (data_from_SIW_CTRL_SIW_CTRL_auto_0_pl),
      .SIW_CTRL_datapath_in_0				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out0),
      .SIW_CTRL_datapath_in_1				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out1),
      .SIW_CTRL_datapath_in_2				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out2),
      .SIW_CTRL_datapath_in_3				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out3),
      .SIW_CTRL_datapath_in_4				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out4),
      .SIW_CTRL_datapath_in_5				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out5),
      .SIW_CTRL_datapath_in_6				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out6),
      .SIW_CTRL_datapath_in_7				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out7),
      .SIW_CTRL_datapath_in_8				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out8),
      .SIW_CTRL_datapath_in_9				(data_from_SIW_CTRL_SIW_CTRL_auto_0_out9),
      .SIW_CTRL_avl_ready					(sideworks_ctr_avl_ready),
      .SIW_CTRL_avl_burstbegin			(sideworks_ctr_avl_burstbegin),
      .SIW_CTRL_avl_addr					(sideworks_ctr_avl_addr),
      .SIW_CTRL_avl_rdata_valid			(sideworks_ctr_avl_rdata_valid),
      .SIW_CTRL_avl_rdata					(sideworks_ctr_avl_rdata),
      .SIW_CTRL_avl_be					(sideworks_ctr_avl_be),
      .SIW_CTRL_avl_size					(sideworks_ctr_avl_size),
      .SIW_CTRL_avl_read_req				(sideworks_ctr_avl_read_req),
      .SIW_CTRL_avl_wdata					(sideworks_ctr_avl_wdata),
      .SIW_CTRL_avl_write_req				(sideworks_ctr_avl_write_req),
      .SIW_CTRL_input_shared_mem_addr_a	(data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_a),
      .SIW_CTRL_input_shared_mem_data_out_a_0(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A0),
      .SIW_CTRL_input_shared_mem_data_out_a_1(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A1),
      .SIW_CTRL_input_shared_mem_data_out_a_2(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A2),
      .SIW_CTRL_input_shared_mem_data_out_a_3(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_A3),
      .SIW_CTRL_input_shared_mem_addr_b	(data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_b),
      .SIW_CTRL_input_shared_mem_data_out_b_0(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B0),
      .SIW_CTRL_input_shared_mem_data_out_b_1(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B1),
      .SIW_CTRL_input_shared_mem_data_out_b_2(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B2),
      .SIW_CTRL_input_shared_mem_data_out_b_3(data_from_SIW_CTRL_SIW_CTRL_auto_0_data_out_B3),
      .SIW_CTRL_wr_conf_mem				(siw_ctr_wr_conf_mem),
      .SIW_CTRL_data_conf_mem				(siw_ctr_data_conf_mem),
      .SIW_CTRL_add_conf_mem				(siw_ctr_add_conf_mem),
      .SIW_CTRL_ND_restart				(siw_nd_restart),
      .SIW_CTRL_ND_inc					(siw_nd_inc),
      .SIW_CTRL_PicSizeInMbs				(SIW_CTRL_PicSizeInMbs),
      .SIW_CTRL_PicHeighthInMbs			(SIW_CTRL_PicHeighthInMbs),
      .SIW_CTRL_PicWidthInMbs				(SIW_CTRL_PicWidthInMbs),
      .SIW_CTRL_PicLineSizeInPix			(SIW_CTRL_PicLineSizeInPix),
      .SIW_CTRL_shared_fifo_data_out		(siw_deblock_shared_fifo_data),
      .SIW_CTRL_shared_fifo_read_en		(siw_deblock_shared_fifo_read),
      .SIW_CTRL_shared_fifo_empty			(siw_deblock_shared_fifo_empty),
      .SIW_CTRL_shared_mem_fwd_done		(sideworks_ctr_shared_mem_fwd_done),
      .SIW_CTRL_shared_mem_fwd_available	(sideworks_ctr_shared_mem_fwd_available),
      .SIW_CTRL_shared_mem0_fwd_addr_a	(sideworks_ctr_shared_mem0_fwd_addr_a),
      .SIW_CTRL_shared_mem0_fwd_data_out_a(sideworks_ctr_shared_mem0_fwd_data_out_a),
      .SIW_CTRL_shared_mem0_fwd_addr_b	(sideworks_ctr_shared_mem0_fwd_addr_b),
      .SIW_CTRL_shared_mem0_fwd_data_out_b(sideworks_ctr_shared_mem0_fwd_data_out_b),
      .SIW_CTRL_shared_mem_bwd_done		(sideworks_ctr_shared_mem_bwd_done),
      .SIW_CTRL_shared_mem_bwd_available	(sideworks_ctr_shared_mem_bwd_available),
      .SIW_CTRL_shared_mem0_bwd_addr_a	(sideworks_ctr_shared_mem0_bwd_addr_a),
      .SIW_CTRL_shared_mem0_bwd_data_out_a(sideworks_ctr_shared_mem0_bwd_data_out_a),
      .SIW_CTRL_shared_mem0_bwd_addr_b	(sideworks_ctr_shared_mem0_bwd_addr_b),
      .SIW_CTRL_shared_mem0_bwd_data_out_b(sideworks_ctr_shared_mem0_bwd_data_out_b),
      .transfer_MB_done					(siw_transfer_MB_done),
      .transfer_MB_done_num				(transfer_MB_done_num),
      .transfer_0_req						(siw_transfer_req),
      .transfer_0_size					(siw_transfer_size),
      .transfer_0_offset					(siw_transfer_offset),
      .transfer_0_rdy						(siw_transfer_rdy),
      .transfer_0_data					(siw_transfer_data),
      .transfer_1_req						(1'b0),
      .SIW_CTRL_input_mem_data_out_a_0	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out3),
      .SIW_CTRL_input_mem_data_out_a_1	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out2),
      .SIW_CTRL_input_mem_data_out_a_2	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out1),
      .SIW_CTRL_input_mem_data_out_a_3	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out0),
      .SIW_CTRL_input_mem_addr_a			(data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_a),
      .SIW_CTRL_input_mem_data_out_b_0	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out3),
      .SIW_CTRL_input_mem_data_out_b_1	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out2),
      .SIW_CTRL_input_mem_data_out_b_2	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out1),
      .SIW_CTRL_input_mem_data_out_b_3	(data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out0),
      .SIW_CTRL_input_mem_addr_b			(data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_b),
      .SIW_CTRL_out_mem_en				(siw_ctr_out_mem_en),
      .SIW_CTRL_output_mem0_addr_a		(siw_ctr_out_mem0_addr_a),
      .SIW_CTRL_output_mem0_wr_en_a		(siw_ctr_out_mem0_wr_en_a),
      .SIW_CTRL_output_mem0_data_in_a		(siw_ctr_out_mem0_data_in_a),
      .SIW_CTRL_output_mem0_addr_b		(siw_ctr_out_mem0_addr_b),
      .SIW_CTRL_output_mem0_wr_en_b		(siw_ctr_out_mem0_wr_en_b),
      .SIW_CTRL_output_mem0_data_in_b		(siw_ctr_out_mem0_data_in_b)
);
DEBLOCK deblock_filter(
      .DEBLOCK_clk						(sideworks_clk),
      .DEBLOCK_reset						(sideworks_reset),
      .DEBLOCK_enable						(1'b1),
      .DEBLOCK_in_MB_number						(siw_deblock_in_MB_num[15:0]),
      .DEBLOCK_in_PicHeighthInMbs					(SIW_CTRL_PicHeighthInMbs),
      .DEBLOCK_in_PicWidthInMbs					(SIW_CTRL_PicWidthInMbs),
      .DEBLOCK_in_PicLineSizeInPix				(SIW_CTRL_PicLineSizeInPix),
      .DEBLOCK_in_alpha_offset					(siw_deblock_in_alpha_offset),
      .DEBLOCK_in_beta_offset						(siw_deblock_in_beta_offset),
      .DEBLOCK_shared_fifo_read					(siw_deblock_shared_fifo_read),
      .DEBLOCK_shared_fifo_data					(siw_deblock_shared_fifo_data),
      .DEBLOCK_shared_fifo_empty					(siw_deblock_shared_fifo_empty),
      .DEBLOCK_out_mb_store_takeover				(siw_deblock_out_mb_store_takeover),
      .DEBLOCK_out_mb_store_addr_a				(siw_deblock_out_mb_store_addr_a),
      .DEBLOCK_out_mb_store_addr_b				(siw_deblock_out_mb_store_addr_b),
      .DEBLOCK_out_mb_store_data_a				(siw_deblock_out_mb_store_data_a),
      .DEBLOCK_out_mb_store_data_b				(siw_deblock_out_mb_store_data_b),
      .transfer_MB_done							(siw_transfer_MB_done),
      .transfer_MB_done_num						(transfer_MB_done_num),
      .transfer_req								(siw_transfer_req),
      .transfer_size								(siw_transfer_size),
      .transfer_offset							(siw_transfer_offset),
      .transfer_rdy								(siw_transfer_rdy),
      .transfer_data								(siw_transfer_data)
);
assign siw_deblock_out_mb_store_data_a = {data_from_ram7_a[7:0],data_from_ram7_a[15:8],data_from_ram7_a[23:16],data_from_ram7_a[31:24]};
assign siw_deblock_out_mb_store_data_b = {data_from_ram7_b[7:0],data_from_ram7_b[15:8],data_from_ram7_b[23:16],data_from_ram7_b[31:24]};
always @(*) begin //mb_store deblocking mux and debuging mux
sideworks_debug_read_data = data_from_ram7_a;
  mem_7_addr_a_mux_out = mem_7_addr_a;


  mem_7_addr_b_mux_out = mem_7_addr_b;
  mem_0_addr_a_mux_out = mem_0_addr_a;
  mem_1_addr_a_mux_out = mem_1_addr_a;
  mem_2_addr_a_mux_out = mem_2_addr_a;
  mem_3_addr_a_mux_out = mem_3_addr_a;
  mem_4_addr_a_mux_out = mem_4_addr_a;
  mem_5_addr_a_mux_out = mem_5_addr_a;
  mem_6_addr_a_mux_out = mem_6_addr_a;
  mem_8_addr_a_mux_out = mem_8_addr_a;
  mem_9_addr_a_mux_out = mem_9_addr_a;
  mem_0_conf_a_mux    = mem_0_conf_a;
  mem_1_conf_a_mux    = mem_1_conf_a;
  mem_2_conf_a_mux    = mem_2_conf_a;
  mem_3_conf_a_mux    = mem_3_conf_a;
  mem_4_conf_a_mux    = mem_4_conf_a;
  mem_5_conf_a_mux    = mem_5_conf_a;
  mem_6_conf_a_mux    = mem_6_conf_a;
  mem_7_conf_a_mux    = mem_7_conf_a;
  mem_8_conf_a_mux    = mem_8_conf_a;
  mem_9_conf_a_mux    = mem_9_conf_a;
  write_en_ram0_a_mux = write_en_ram0_a;
  write_en_ram1_a_mux = write_en_ram1_a;
  write_en_ram2_a_mux = write_en_ram2_a;
  write_en_ram3_a_mux = write_en_ram3_a;
  write_en_ram4_a_mux = write_en_ram4_a;
  write_en_ram5_a_mux = write_en_ram5_a;
  write_en_ram6_a_mux = write_en_ram6_a;
  write_en_ram7_a_mux = write_en_ram7_a;
  write_en_ram8_a_mux = write_en_ram8_a;
  write_en_ram9_a_mux = write_en_ram9_a;
  data_to_ram0_a_mux    = data_to_ram0_a;
  data_to_ram1_a_mux    = data_to_ram1_a;
  data_to_ram2_a_mux    = data_to_ram2_a;
  data_to_ram3_a_mux    = data_to_ram3_a;
  data_to_ram4_a_mux    = data_to_ram4_a;
  data_to_ram5_a_mux    = data_to_ram5_a;
  data_to_ram6_a_mux    = data_to_ram6_a;
  data_to_ram7_a_mux    = data_to_ram7_a;
  data_to_ram8_a_mux    = data_to_ram8_a;
  data_to_ram9_a_mux    = data_to_ram9_a;
  if (sideworks_debug_takeover) begin
    mem_0_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_1_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_2_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_3_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_4_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_5_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_6_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_7_addr_a_mux_out = sideworks_debug_addr[13:0];
    mem_8_addr_a_mux_out = sideworks_debug_addr[9:0];
    mem_9_addr_a_mux_out = sideworks_debug_addr[9:0];
    data_to_ram0_a_mux    = sideworks_debug_write_data;
    data_to_ram1_a_mux    = sideworks_debug_write_data;
    data_to_ram2_a_mux    = sideworks_debug_write_data;
    data_to_ram3_a_mux    = sideworks_debug_write_data;
    data_to_ram4_a_mux    = sideworks_debug_write_data;
    data_to_ram5_a_mux    = sideworks_debug_write_data;
    data_to_ram6_a_mux    = sideworks_debug_write_data;
    data_to_ram7_a_mux    = sideworks_debug_write_data;
    data_to_ram8_a_mux    = sideworks_debug_write_data;
    data_to_ram9_a_mux    = sideworks_debug_write_data;
    write_en_ram0_a_mux = 1'b0;
    write_en_ram1_a_mux = 1'b0;
    write_en_ram2_a_mux = 1'b0;
    write_en_ram3_a_mux = 1'b0;
    write_en_ram4_a_mux = 1'b0;
    write_en_ram5_a_mux = 1'b0;
    write_en_ram6_a_mux = 1'b0;
    write_en_ram7_a_mux = 1'b0;
    write_en_ram8_a_mux = 1'b0;
    write_en_ram9_a_mux = 1'b0;
    mem_0_conf_a_mux    = 2'd0;
    mem_1_conf_a_mux    = 2'd0;
    mem_2_conf_a_mux    = 2'd0;
    mem_3_conf_a_mux    = 2'd0;
    mem_4_conf_a_mux    = 2'd0;
    mem_5_conf_a_mux    = 2'd0;
    mem_6_conf_a_mux    = 2'd0;
    mem_7_conf_a_mux    = 2'd0;
    mem_8_conf_a_mux    = 2'd0;
    mem_9_conf_a_mux    = 2'd0;
    case (sideworks_debug_mem_sel)
      4'd0 : begin
        sideworks_debug_read_data <= data_from_ram0_a;
        write_en_ram0_a_mux     <= sideworks_debug_wr_req;
      end
      4'd1 : begin
        sideworks_debug_read_data <= data_from_ram1_a;
        write_en_ram1_a_mux     <= sideworks_debug_wr_req;
      end
      4'd2 : begin
        sideworks_debug_read_data <= data_from_ram2_a;
        write_en_ram2_a_mux     <= sideworks_debug_wr_req;
      end
      4'd3 : begin
        sideworks_debug_read_data <= data_from_ram3_a;
        write_en_ram3_a_mux     <= sideworks_debug_wr_req;
      end
      4'd4 : begin
        sideworks_debug_read_data <= data_from_ram4_a;
        write_en_ram4_a_mux     <= sideworks_debug_wr_req;
      end
      4'd5 : begin
        sideworks_debug_read_data <= data_from_ram5_a;
        write_en_ram5_a_mux     <= sideworks_debug_wr_req;
      end
      4'd6 : begin
        sideworks_debug_read_data <= data_from_ram6_a;
        write_en_ram6_a_mux     <= sideworks_debug_wr_req;
      end
      4'd7 : begin
        sideworks_debug_read_data <= data_from_ram7_a;
        write_en_ram7_a_mux     <= sideworks_debug_wr_req;
      end
      4'd8 : begin
        sideworks_debug_read_data <= data_from_ram8_a;
        write_en_ram8_a_mux     <= sideworks_debug_wr_req;
      end
      4'd9 : begin
        sideworks_debug_read_data <= data_from_ram9_a;
        write_en_ram9_a_mux     <= sideworks_debug_wr_req;
      end
      default : begin end
    endcase
  end else if (siw_deblock_out_mb_store_takeover) begin 
    mem_7_addr_a_mux_out = {1'b0,siw_deblock_out_mb_store_addr_a};
    mem_7_addr_b_mux_out = {1'b0,siw_deblock_out_mb_store_addr_b};
  end
end
endmodule
