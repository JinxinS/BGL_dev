//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : siw_read_xbar.v
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
module siw_read_xbar ( 
  input         [31:0]  siw_read_xbar_data_from_mem0_a, 
  input         [31:0]  siw_read_xbar_data_from_mem0_b, 
  input         [31:0]  siw_read_xbar_data_from_mem1_a, 
  input         [31:0]  siw_read_xbar_data_from_mem1_b, 
  input         [31:0]  siw_read_xbar_data_from_mem5_a, 
  input         [31:0]  siw_read_xbar_data_from_mem5_b, 
  input         [31:0]  siw_read_xbar_data_from_mem7_a, 
  input         [31:0]  siw_read_xbar_data_from_mem7_b, 
  input         [31:0]  siw_read_xbar_data_from_mem8_a, 
  input         [31:0]  siw_read_xbar_data_from_mem8_b, 
  input                 siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_en, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out0, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out1, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out2, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out3, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out0, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out1, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out2, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out3, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out3, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out4, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out5, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out6, 
  input         [7:0]   siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out7, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_3_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_4_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_5_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_6_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_7_out, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_0_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_1_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_10_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_2_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_3_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_4_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_5_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_6_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_7_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_8_add, 
  input         [31:0]  siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_9_add, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_0_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_1_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_10_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_11_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_13_out, 
  input                 siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_eq, 
  input                 siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_lt, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_3_out, 
  input                 siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_gt, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_5_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_6_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_7_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_8_out, 
  input         [11:0]  siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_9_out, 
  input         [13:0]  siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_0_out, 
  input         [13:0]  siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_1_out, 
  input         [13:0]  siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_2_out, 
  input         [13:0]  siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_3_out, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_0_out0, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_0_out1, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_0_out2, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_0_out3, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_1_out0, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_1_out1, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_1_out2, 
  input         [7:0]   siw_read_xbar_data_from_BD_BD_g0_auto_1_out3, 
  input                 siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_0_out, 
  input                 siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_BM_BM_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_BM_BM_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_BM_BM_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_3_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_4_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_5_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_6_out, 
  input         [31:0]  siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_7_out, 
  input         [31:0]  siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_1_out, 
  input                 siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g00_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g01_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g03_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g04_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g05_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g06_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g07_out, 
  input         [31:0]  siw_read_xbar_data_from_GENERIC_VALUE_g08_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out, 
  input         [31:0]  siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_4_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_5_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_6_out, 
  input         [31:0]  siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_7_out, 
  input         [31:0]  siw_read_xbar_data_from_ND_ND_g0_auto_0_leMO_, 
  input         [31:0]  siw_read_xbar_data_from_ND_ND_g0_auto_0_ulMO_, 
  input         [31:0]  siw_read_xbar_data_from_ND_ND_g0_auto_0_upMO_, 
  input         [31:0]  siw_read_xbar_data_from_ND_ND_g0_auto_0_urMO_, 
  input                 siw_read_xbar_data_from_ONE_g00_fixed_out_1, 
  input         [11:0]  siw_read_xbar_data_from_ONE_g00_fixed_out_12, 
  input         [31:0]  siw_read_xbar_data_from_ONE_g00_fixed_out_32, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b0, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b1, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b2, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b3, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b4, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b5, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b6, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b7, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b0, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b1, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b2, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b3, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b4, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b5, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b6, 
  input                 siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b7, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_out, 
  input         [31:0]  siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_out, 
  input         [11:0]  siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_0_out, 
  input         [11:0]  siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_0_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_1_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_2_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_3_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_4_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_5_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_6_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_7_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_8_out, 
  input         [31:0]  siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_9_out, 
  input         [11:0]  siw_read_xbar_data_from_THREE_g00_fixed_out_12, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_, 
  input                 siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_, 
  input         [11:0]  siw_read_xbar_data_from_TWO_g00_fixed_out_12, 
  input                 siw_read_xbar_data_from_ZERO_g00_fixed_out_1, 
  input         [11:0]  siw_read_xbar_data_from_ZERO_g00_fixed_out_12, 
  input         [13:0]  siw_read_xbar_data_from_ZERO_g00_fixed_out_14, 
  input         [1:0]   siw_read_xbar_data_from_ZERO_g00_fixed_out_2, 
  input         [31:0]  siw_read_xbar_data_from_ZERO_g00_fixed_out_32, 
  input         [6:0]   siw_read_xbar_data_from_ZERO_g00_fixed_out_7, 
  input         [7:0]   siw_read_xbar_data_from_ZERO_g00_fixed_out_8, 
  input         [31:0]  siw_read_xbar_data_from_mONE_g00_fixed_out_32, 
  input         [60:0]  siw_read_xbar_read_xbar_conf, 
  output reg            siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_done, 
  output wire   [7:0]   siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_a, 
  output wire   [7:0]   siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_b, 
  output wire           siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_is_last, 
  output wire   [11:0]  siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_a, 
  output wire   [11:0]  siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_b, 
  output wire   [6:0]   siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_next, 
  output wire           siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_rd_next, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i2, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i0, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i1, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i0, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i1, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i0, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i1, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i0, 
  output reg    [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_3_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_3_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_4_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_4_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_5_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_5_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_6_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_6_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_7_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_7_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_8_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_8_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_9_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_9_i1, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_cmp, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_inc, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_cmp, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_inc, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_cmp, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_inc, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_cmp, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_inc, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld_val, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_cmp, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_en, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_inc, 
  output reg            siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld, 
  output reg    [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_ld, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_ld, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_ld, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_ld, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_ld_val, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_cmp, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_en, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_inc, 
  output wire           siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_ld, 
  output wire   [11:0]  siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_ld_val, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_cmp, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_en, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_inc, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_ld, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_ld_val, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_cmp, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_en, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_inc, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_ld, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_ld_val, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_cmp, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_en, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_inc, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_ld, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_ld_val, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_cmp, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_en, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_inc, 
  output wire           siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_ld, 
  output wire   [13:0]  siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_ld_val, 
  output wire   [31:0]  siw_read_xbar_data_to_BD_BD_g0_auto_0_in, 
  output wire   [31:0]  siw_read_xbar_data_to_BD_BD_g0_auto_1_in, 
  output wire           siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_en, 
  output wire           siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_i0, 
  output wire           siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_i1, 
  output wire           siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_en, 
  output wire           siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_i0, 
  output wire           siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_i1, 
  output reg    [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_0_i0, 
  output reg    [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_0_i1, 
  output reg    [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_0_i2, 
  output reg    [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_0_i3, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_1_i0, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_1_i1, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_1_i2, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_1_i3, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_2_i0, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_2_i1, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_2_i2, 
  output wire   [7:0]   siw_read_xbar_data_to_BM_BM_g0_auto_2_i3, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_up, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_down, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_in, 
  output wire   [31:0]  siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_up, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b0, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b1, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b10, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b11, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b12, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b13, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b14, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b15, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b16, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b17, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b18, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b19, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b2, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b20, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b21, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b22, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b23, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b24, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b25, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b26, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b27, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b28, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b29, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b3, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b30, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b31, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b4, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b5, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b6, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b7, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b8, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b9, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b0, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b1, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b10, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b11, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b12, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b13, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b14, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b15, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b16, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b17, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b18, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b19, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b2, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b20, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b21, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b22, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b23, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b24, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b25, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b26, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b27, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b28, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b29, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b3, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b30, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b31, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b4, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b5, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b6, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b7, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b8, 
  output wire           siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b9, 
  output wire           siw_read_xbar_data_to_DLINE_1_16_DLINE_1_16_g0_auto_0_in, 
  output wire   [31:0]  siw_read_xbar_data_to_DLINE_32_16_DLINE_32_16_g0_auto_0_in, 
  output wire   [31:0]  siw_read_xbar_data_to_DLINE_32_16_DLINE_32_16_g0_auto_1_in, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i1, 
  output wire           siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_lohi, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i1, 
  output wire           siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i0, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i1, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i2, 
  output wire   [31:0]  siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i3, 
  output wire   [1:0]   siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_s0, 
  output wire   [31:0]  siw_read_xbar_data_to_ND_ND_g0_auto_0_bSize, 
  output wire   [1:0]   siw_read_xbar_data_to_ND_ND_g0_auto_0_chroma, 
  output wire           siw_read_xbar_data_to_ND_ND_g0_auto_0_en, 
  output wire           siw_read_xbar_data_to_ND_ND_g0_auto_0_mode, 
  output wire   [31:0]  siw_read_xbar_data_to_ND_ND_g0_auto_0_posX, 
  output wire   [31:0]  siw_read_xbar_data_to_ND_ND_g0_auto_0_posY, 
  output reg    [31:0]  siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_0_in, 
  output reg    [31:0]  siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_1_in, 
  output reg    [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in, 
  output reg    [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in, 
  output reg    [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in, 
  output reg    [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in, 
  output wire   [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_in, 
  output wire   [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_in, 
  output wire   [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_in, 
  output wire   [31:0]  siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_in, 
  output wire           siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_0_en, 
  output wire   [11:0]  siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_0_in, 
  output wire           siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_1_en, 
  output wire   [11:0]  siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_1_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_0_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_0_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_1_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_1_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_2_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_2_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_3_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_3_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_4_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_4_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_5_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_5_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_6_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_6_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_7_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_7_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_8_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_8_in, 
  output wire           siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_9_en, 
  output wire   [31:0]  siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_9_in, 
  output wire           siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_en, 
  output wire   [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_h, 
  output reg    [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i, 
  output reg    [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j, 
  output reg    [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k, 
  output wire           siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_en, 
  output wire   [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_h, 
  output reg    [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i, 
  output reg    [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j, 
  output reg    [11:0]  siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g00_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g00_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g00_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g00_data_in_b, 
  output wire           siw_read_xbar_data_to_MEM_g00_write_a, 
  output wire           siw_read_xbar_data_to_MEM_g00_write_b, 
  output reg    [9:0]   siw_read_xbar_data_to_MEM_g01_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g01_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g01_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g01_data_in_b, 
  output reg            siw_read_xbar_data_to_MEM_g01_write_a, 
  output wire           siw_read_xbar_data_to_MEM_g01_write_b, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g03_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g03_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g03_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g03_data_in_b, 
  output reg            siw_read_xbar_data_to_MEM_g03_write_a, 
  output reg            siw_read_xbar_data_to_MEM_g03_write_b, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g04_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g04_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g04_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g04_data_in_b, 
  output reg            siw_read_xbar_data_to_MEM_g04_write_a, 
  output reg            siw_read_xbar_data_to_MEM_g04_write_b, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g05_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g05_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g05_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g05_data_in_b, 
  output reg            siw_read_xbar_data_to_MEM_g05_write_a, 
  output reg            siw_read_xbar_data_to_MEM_g05_write_b, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g06_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g06_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g06_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g06_data_in_b, 
  output wire           siw_read_xbar_data_to_MEM_g06_write_a, 
  output wire           siw_read_xbar_data_to_MEM_g06_write_b, 
  output wire   [13:0]  siw_read_xbar_data_to_MEM_g07_address_a, 
  output wire   [13:0]  siw_read_xbar_data_to_MEM_g07_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g07_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g07_data_in_b, 
  output reg            siw_read_xbar_data_to_MEM_g07_write_a, 
  output reg            siw_read_xbar_data_to_MEM_g07_write_b, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g08_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g08_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g08_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g08_data_in_b, 
  output wire           siw_read_xbar_data_to_MEM_g08_write_a, 
  output wire           siw_read_xbar_data_to_MEM_g08_write_b, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g09_address_a, 
  output wire   [9:0]   siw_read_xbar_data_to_MEM_g09_address_b, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g09_data_in_a, 
  output wire   [31:0]  siw_read_xbar_data_to_MEM_g09_data_in_b, 
  output wire           siw_read_xbar_data_to_MEM_g09_write_a, 
  output wire           siw_read_xbar_data_to_MEM_g09_write_b);


  wire           output_sel_0;
  wire           output_sel_32;
  wire           output_sel_33;
  wire           output_sel_34;
  wire           output_sel_35;
  wire           output_sel_36;
  wire           output_sel_37;
  wire           output_sel_38;
  wire           output_sel_39;
  wire           output_sel_55;
  wire           output_sel_56;
  wire           output_sel_57;
  wire           output_sel_58;
  wire           output_sel_60;
  wire           output_sel_61;
  wire           output_sel_62;
  wire           output_sel_63;
  wire           output_sel_65;
  wire           output_sel_66;
  wire           output_sel_67;
  wire           output_sel_71;
  wire           output_sel_73;
  wire           output_sel_75;
  wire           output_sel_76;
  wire           output_sel_77;
  wire           output_sel_78;
  wire           output_sel_81;
  wire           output_sel_83;
  wire           output_sel_84;
  wire           output_sel_88;
  wire           output_sel_90;
  wire           output_sel_91;
  wire           output_sel_92;
  wire           output_sel_93;
  wire           output_sel_98;
  wire           output_sel_152;
  wire           output_sel_153;
  wire           output_sel_154;
  wire           output_sel_155;
  wire           output_sel_328;
  wire           output_sel_329;
  wire           output_sel_330;
  wire           output_sel_331;
  wire           output_sel_332;
  wire           output_sel_333;
  wire           output_sel_364;
  wire           output_sel_365;
  wire           output_sel_366;
  wire           output_sel_369;
  wire           output_sel_370;
  wire           output_sel_371;
  wire           output_sel_378;
  wire           output_sel_382;
  wire           output_sel_388;
  wire           output_sel_389;
  wire           output_sel_394;
  wire           output_sel_395;
  wire           output_sel_400;
  wire           output_sel_401;
  wire           output_sel_412;
  wire           output_sel_413;


//--------------
// Assign Part -
//--------------
  assign output_sel_0 = siw_read_xbar_read_xbar_conf[0];
  assign output_sel_32 = siw_read_xbar_read_xbar_conf[1];
  assign output_sel_33 = siw_read_xbar_read_xbar_conf[2];
  assign output_sel_34 = siw_read_xbar_read_xbar_conf[3];
  assign output_sel_35 = siw_read_xbar_read_xbar_conf[4];
  assign output_sel_36 = siw_read_xbar_read_xbar_conf[5];
  assign output_sel_37 = siw_read_xbar_read_xbar_conf[6];
  assign output_sel_38 = siw_read_xbar_read_xbar_conf[7];
  assign output_sel_39 = siw_read_xbar_read_xbar_conf[8];
  assign output_sel_55 = siw_read_xbar_read_xbar_conf[9];
  assign output_sel_56 = siw_read_xbar_read_xbar_conf[10];
  assign output_sel_57 = siw_read_xbar_read_xbar_conf[11];
  assign output_sel_58 = siw_read_xbar_read_xbar_conf[12];
  assign output_sel_60 = siw_read_xbar_read_xbar_conf[13];
  assign output_sel_61 = siw_read_xbar_read_xbar_conf[14];
  assign output_sel_62 = siw_read_xbar_read_xbar_conf[15];
  assign output_sel_63 = siw_read_xbar_read_xbar_conf[16];
  assign output_sel_65 = siw_read_xbar_read_xbar_conf[17];
  assign output_sel_66 = siw_read_xbar_read_xbar_conf[18];
  assign output_sel_67 = siw_read_xbar_read_xbar_conf[19];
  assign output_sel_71 = siw_read_xbar_read_xbar_conf[20];
  assign output_sel_73 = siw_read_xbar_read_xbar_conf[21];
  assign output_sel_75 = siw_read_xbar_read_xbar_conf[22];
  assign output_sel_76 = siw_read_xbar_read_xbar_conf[23];
  assign output_sel_77 = siw_read_xbar_read_xbar_conf[24];
  assign output_sel_78 = siw_read_xbar_read_xbar_conf[25];
  assign output_sel_81 = siw_read_xbar_read_xbar_conf[26];
  assign output_sel_83 = siw_read_xbar_read_xbar_conf[27];
  assign output_sel_84 = siw_read_xbar_read_xbar_conf[28];
  assign output_sel_88 = siw_read_xbar_read_xbar_conf[29];
  assign output_sel_90 = siw_read_xbar_read_xbar_conf[30];
  assign output_sel_91 = siw_read_xbar_read_xbar_conf[31];
  assign output_sel_92 = siw_read_xbar_read_xbar_conf[32];
  assign output_sel_93 = siw_read_xbar_read_xbar_conf[33];
  assign output_sel_98 = siw_read_xbar_read_xbar_conf[34];
  assign output_sel_152 = siw_read_xbar_read_xbar_conf[35];
  assign output_sel_153 = siw_read_xbar_read_xbar_conf[36];
  assign output_sel_154 = siw_read_xbar_read_xbar_conf[37];
  assign output_sel_155 = siw_read_xbar_read_xbar_conf[38];
  assign output_sel_328 = siw_read_xbar_read_xbar_conf[39];
  assign output_sel_329 = siw_read_xbar_read_xbar_conf[40];
  assign output_sel_330 = siw_read_xbar_read_xbar_conf[41];
  assign output_sel_331 = siw_read_xbar_read_xbar_conf[42];
  assign output_sel_332 = siw_read_xbar_read_xbar_conf[43];
  assign output_sel_333 = siw_read_xbar_read_xbar_conf[44];
  assign output_sel_364 = siw_read_xbar_read_xbar_conf[45];
  assign output_sel_365 = siw_read_xbar_read_xbar_conf[46];
  assign output_sel_366 = siw_read_xbar_read_xbar_conf[47];
  assign output_sel_369 = siw_read_xbar_read_xbar_conf[48];
  assign output_sel_370 = siw_read_xbar_read_xbar_conf[49];
  assign output_sel_371 = siw_read_xbar_read_xbar_conf[50];
  assign output_sel_378 = siw_read_xbar_read_xbar_conf[51];
  assign output_sel_382 = siw_read_xbar_read_xbar_conf[52];
  assign output_sel_388 = siw_read_xbar_read_xbar_conf[53];
  assign output_sel_389 = siw_read_xbar_read_xbar_conf[54];
  assign output_sel_394 = siw_read_xbar_read_xbar_conf[55];
  assign output_sel_395 = siw_read_xbar_read_xbar_conf[56];
  assign output_sel_400 = siw_read_xbar_read_xbar_conf[57];
  assign output_sel_401 = siw_read_xbar_read_xbar_conf[58];
  assign output_sel_412 = siw_read_xbar_read_xbar_conf[59];
  assign output_sel_413 = siw_read_xbar_read_xbar_conf[60];
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_8;
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_in_addr_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_8;
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_is_last = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_out;
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_m0_addr_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_3_out;
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_next = siw_read_xbar_data_from_ZERO_g00_fixed_out_7;
  assign siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_rd_next = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_0_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_1_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_2_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_3_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_4_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_5_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_6_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i0 = siw_read_xbar_data_from_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_out;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i1 = siw_read_xbar_data_from_ONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD3_32_BADD3_32_g0_auto_7_i2 = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_3_i0 = siw_read_xbar_data_from_ND_ND_g0_auto_0_urMO_;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_3_i1 = siw_read_xbar_data_from_mONE_g00_fixed_out_32;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_4_i0 = siw_read_xbar_data_from_ND_ND_g0_auto_0_leMO_;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_4_i1 = siw_read_xbar_data_from_GENERIC_VALUE_g03_out;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_5_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_5_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_0_out0;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_6_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_1_out;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_6_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_0_out1;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_7_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_2_out;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_7_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_0_out2;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_8_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_3_out;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_8_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_0_out3;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_9_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_4_out;
  assign siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_9_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_1_out0;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld_val = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out3;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_inc = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_inc = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_inc = siw_read_xbar_data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_5_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_1_out;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_inc = siw_read_xbar_data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_6_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_10_out;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_7_ld_val = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_4_add;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_en = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_eq;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_inc = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_ld = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_2_lt;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_8_ld_val = siw_read_xbar_data_from_ND_ND_g0_auto_0_upMO_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_inc = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_;
  assign siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_9_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_11_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_14;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_0_ld_val = siw_read_xbar_data_from_ND_ND_g0_auto_0_ulMO_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_14;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_1_ld_val = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_2_add;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_14;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_en = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_inc = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_2_ld_val = siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_14;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_en = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_inc = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_;
  assign siw_read_xbar_data_to_BAU_14_BAU_14_g0_auto_3_ld_val = siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_1_out;
  assign siw_read_xbar_data_to_BD_BD_g0_auto_0_in = siw_read_xbar_data_from_mem5_a;
  assign siw_read_xbar_data_to_BD_BD_g0_auto_1_in = siw_read_xbar_data_from_mem5_b;
  assign siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_en = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_i0 = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_0_i1 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b1;
  assign siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_en = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_i0 = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
  assign siw_read_xbar_data_to_BLU_1_BLU_1_g0_auto_1_i1 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b1;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_1_i0 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_1_i1 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_1_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_1_i2 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_2_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_1_i3 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_3_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_2_i0 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_4_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_2_i1 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_5_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_2_i2 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_6_out;
  assign siw_read_xbar_data_to_BM_BM_g0_auto_2_i3 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_7_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_5_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_0_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_6_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_1_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_7_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_2_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_8_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_3_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_9_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_4_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_0_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_5_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_1_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_6_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_down = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_10_add;
  assign siw_read_xbar_data_to_CLIP_32_CLIP_32_g0_auto_7_up = siw_read_xbar_data_from_GENERIC_VALUE_g05_out;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b0 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b0;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b1 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b10 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b11 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b12 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b13 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b14 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b15 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b16 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b17 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b18 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b19 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b2 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b2;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b20 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b21 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b22 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b23 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b24 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b25 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b26 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b27 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b28 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b29 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b3 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b3;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b30 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b31 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b4 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b4;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b5 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b5;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b6 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b6;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b7 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_0_b7;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b8 = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_0_b9 = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b0 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b0;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b1 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b10 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b11 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b12 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b13 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b14 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b15 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b16 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b17 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b18 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b19 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b2 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b2;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b20 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b21 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b22 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b23 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b24 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b25 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b26 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b27 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b28 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b29 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b3 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b3;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b30 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b31 = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b4 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b4;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b5 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b5;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b6 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b6;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b7 = siw_read_xbar_data_from_SEP_32_SEP_32_g0_auto_1_b7;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b8 = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_CONC_32_CONC_32_g0_auto_1_b9 = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_DLINE_1_16_DLINE_1_16_g0_auto_0_in = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_gt;
  assign siw_read_xbar_data_to_DLINE_32_16_DLINE_32_16_g0_auto_0_in = siw_read_xbar_data_from_MUX2TO1_32_MUX2TO1_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_DLINE_32_16_DLINE_32_16_g0_auto_1_in = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_out;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out0;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out6;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out0;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out7;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out6;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out7;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out2;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out6;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out2;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out7;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0A_out3;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out6;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i0 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_m0B_out3;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_i1 = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out7;
  assign siw_read_xbar_data_to_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_lohi = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i0 = siw_read_xbar_data_from_GENERIC_VALUE_g08_out;
  assign siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_i1 = siw_read_xbar_data_from_GENERIC_VALUE_g06_out;
  assign siw_read_xbar_data_to_MUX2TO1_32_MUX2TO1_32_g0_auto_0_s0 = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i0 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_2_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i1 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i2 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_2_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_i3 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_0_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_0_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i0 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_3_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i1 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i2 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_3_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_i3 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_1_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i0 = siw_read_xbar_data_from_mem1_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i1 = siw_read_xbar_data_from_mem0_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i2 = siw_read_xbar_data_from_mem1_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_i3 = siw_read_xbar_data_from_mem0_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_2_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i0 = siw_read_xbar_data_from_mem1_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i1 = siw_read_xbar_data_from_mem0_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i2 = siw_read_xbar_data_from_mem1_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_i3 = siw_read_xbar_data_from_mem0_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_3_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i0 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_6_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i1 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_4_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i2 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_6_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_i3 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_4_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_4_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i0 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_7_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i1 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_5_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i2 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_7_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_i3 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_5_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_5_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i0 = siw_read_xbar_data_from_mem8_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i1 = siw_read_xbar_data_from_mem7_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i2 = siw_read_xbar_data_from_mem8_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_i3 = siw_read_xbar_data_from_mem7_a;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_6_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i0 = siw_read_xbar_data_from_mem8_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i1 = siw_read_xbar_data_from_mem7_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i2 = siw_read_xbar_data_from_mem8_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_i3 = siw_read_xbar_data_from_mem7_b;
  assign siw_read_xbar_data_to_MUX4TO1_32_MUX4TO1_32_g0_auto_7_s0 = siw_read_xbar_data_from_DLINE_32_16_DLINE_32_16_g0_auto_1_out;
  assign siw_read_xbar_data_to_ND_ND_g0_auto_0_bSize = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_ND_ND_g0_auto_0_chroma = siw_read_xbar_data_from_ZERO_g00_fixed_out_2;
  assign siw_read_xbar_data_to_ND_ND_g0_auto_0_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_ND_ND_g0_auto_0_mode = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_ND_ND_g0_auto_0_posX = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0;
  assign siw_read_xbar_data_to_ND_ND_g0_auto_0_posY = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1;
  assign siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_4_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_4_out;
  assign siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_5_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_5_out;
  assign siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_6_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_6_out;
  assign siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_7_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_7_out;
  assign siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_0_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_0_in = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out;
  assign siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_1_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_12_SREG_12_g0_auto_1_in = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_3_out;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_0_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_0_in = siw_read_xbar_data_from_mem0_a;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_1_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_1_in = siw_read_xbar_data_from_mem0_b;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_2_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_2_in = siw_read_xbar_data_from_mem1_a;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_3_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_3_in = siw_read_xbar_data_from_mem1_b;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_4_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_4_in = siw_read_xbar_data_from_mem7_a;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_5_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_5_in = siw_read_xbar_data_from_mem7_b;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_6_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_6_in = siw_read_xbar_data_from_mem8_a;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_7_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_7_in = siw_read_xbar_data_from_mem8_b;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_8_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_8_in = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_3_out;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_9_en = siw_read_xbar_data_from_ONE_g00_fixed_out_1;
  assign siw_read_xbar_data_to_SREG_32_SREG_32_g0_auto_9_in = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_7_out;
  assign siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_en = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_en;
  assign siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_h = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_en = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_en;
  assign siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_h = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
  assign siw_read_xbar_data_to_MEM_g00_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out;
  assign siw_read_xbar_data_to_MEM_g00_address_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_3_out;
  assign siw_read_xbar_data_to_MEM_g00_data_in_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g00_data_in_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g00_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g00_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g01_address_b = siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_1_out;
  assign siw_read_xbar_data_to_MEM_g01_data_in_a = siw_read_xbar_data_from_BM_BM_g0_auto_0_out;
  assign siw_read_xbar_data_to_MEM_g01_data_in_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g01_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g03_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_8_out;
  assign siw_read_xbar_data_to_MEM_g03_address_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_9_out;
  assign siw_read_xbar_data_to_MEM_g03_data_in_a = siw_read_xbar_data_from_BM_BM_g0_auto_2_out;
  assign siw_read_xbar_data_to_MEM_g03_data_in_b = siw_read_xbar_data_from_BM_BM_g0_auto_2_out;
  assign siw_read_xbar_data_to_MEM_g04_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_8_out;
  assign siw_read_xbar_data_to_MEM_g04_address_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_9_out;
  assign siw_read_xbar_data_to_MEM_g04_data_in_a = siw_read_xbar_data_from_BM_BM_g0_auto_2_out;
  assign siw_read_xbar_data_to_MEM_g04_data_in_b = siw_read_xbar_data_from_BM_BM_g0_auto_2_out;
  assign siw_read_xbar_data_to_MEM_g05_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_7_out;
  assign siw_read_xbar_data_to_MEM_g05_address_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_9_out;
  assign siw_read_xbar_data_to_MEM_g05_data_in_a = siw_read_xbar_data_from_BM_BM_g0_auto_0_out;
  assign siw_read_xbar_data_to_MEM_g05_data_in_b = siw_read_xbar_data_from_BM_BM_g0_auto_0_out;
  assign siw_read_xbar_data_to_MEM_g06_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_5_out;
  assign siw_read_xbar_data_to_MEM_g06_address_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_6_out;
  assign siw_read_xbar_data_to_MEM_g06_data_in_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g06_data_in_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g06_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g06_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g07_address_a = siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_2_out;
  assign siw_read_xbar_data_to_MEM_g07_address_b = siw_read_xbar_data_from_BAU_14_BAU_14_g0_auto_3_out;
  assign siw_read_xbar_data_to_MEM_g07_data_in_a = siw_read_xbar_data_from_BM_BM_g0_auto_1_out;
  assign siw_read_xbar_data_to_MEM_g07_data_in_b = siw_read_xbar_data_from_BM_BM_g0_auto_2_out;
  assign siw_read_xbar_data_to_MEM_g08_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out;
  assign siw_read_xbar_data_to_MEM_g08_address_b = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_3_out;
  assign siw_read_xbar_data_to_MEM_g08_data_in_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g08_data_in_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g08_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g08_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g09_address_a = siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_0_out;
  assign siw_read_xbar_data_to_MEM_g09_address_b = siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_1_out;
  assign siw_read_xbar_data_to_MEM_g09_data_in_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g09_data_in_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_32;
  assign siw_read_xbar_data_to_MEM_g09_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
  assign siw_read_xbar_data_to_MEM_g09_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;

//-------------------
// Combinatory Part -
//-------------------
  always @(output_sel_0 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done)
  begin
    case (output_sel_0)
      1'd0 : siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_done = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_done;
      default : siw_read_xbar_data_to_SIW_CTRL_SIW_CTRL_auto_0_done = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_done;
    endcase
  end

  always @(output_sel_32 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_5_out or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out)
  begin
    case (output_sel_32)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i0 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_0_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_5_out;
    endcase
  end

  always @(output_sel_33 or siw_read_xbar_data_from_BD_BD_g0_auto_1_out1 or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out)
  begin
    case (output_sel_33)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i1 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_1_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_0_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_1_out1;
    endcase
  end

  always @(output_sel_34 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_6_out or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out)
  begin
    case (output_sel_34)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i0 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_2_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_6_out;
    endcase
  end

  always @(output_sel_35 or siw_read_xbar_data_from_BD_BD_g0_auto_1_out2 or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out)
  begin
    case (output_sel_35)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i1 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_3_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_1_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_1_out2;
    endcase
  end

  always @(output_sel_36 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_7_out or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out)
  begin
    case (output_sel_36)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i0 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_4_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_7_out;
    endcase
  end

  always @(output_sel_37 or siw_read_xbar_data_from_BD_BD_g0_auto_1_out3 or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out)
  begin
    case (output_sel_37)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i1 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_5_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_10_i1 = siw_read_xbar_data_from_BD_BD_g0_auto_1_out3;
    endcase
  end

  always @(output_sel_38 or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out or siw_read_xbar_data_from_ND_ND_g0_auto_0_ulMO_)
  begin
    case (output_sel_38)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i0 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_6_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i0 = siw_read_xbar_data_from_ND_ND_g0_auto_0_ulMO_;
    endcase
  end

  always @(output_sel_39 or siw_read_xbar_data_from_GENERIC_VALUE_g07_out or siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out)
  begin
    case (output_sel_39)
      1'd0 : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i1 = siw_read_xbar_data_from_MUL_D4_32_64_MUL_D4_32_64_g0_auto_7_out;
      default : siw_read_xbar_data_to_BADD_32_BADD_32_g0_auto_2_i1 = siw_read_xbar_data_from_GENERIC_VALUE_g07_out;
    endcase
  end

  always @(output_sel_55 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_)
  begin
    case (output_sel_55)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_;
    endcase
  end

  always @(output_sel_56 or siw_read_xbar_data_from_GENERIC_VALUE_g01_out or siw_read_xbar_data_from_GENERIC_VALUE_g04_out)
  begin
    case (output_sel_56)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_inc = siw_read_xbar_data_from_GENERIC_VALUE_g01_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
    endcase
  end

  always @(output_sel_57 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_)
  begin
    case (output_sel_57)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_;
    endcase
  end

  always @(output_sel_58 or siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_0_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out5)
  begin
    case (output_sel_58)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld_val = siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_0_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_0_ld_val = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out5;
    endcase
  end

  always @(output_sel_60 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_)
  begin
    case (output_sel_60)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_I_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_;
    endcase
  end

  always @(output_sel_61 or siw_read_xbar_data_from_GENERIC_VALUE_g01_out or siw_read_xbar_data_from_GENERIC_VALUE_g04_out)
  begin
    case (output_sel_61)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_inc = siw_read_xbar_data_from_GENERIC_VALUE_g01_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
    endcase
  end

  always @(output_sel_62 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_)
  begin
    case (output_sel_62)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_I_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_;
    endcase
  end

  always @(output_sel_63 or siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_1_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2)
  begin
    case (output_sel_63)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld_val = siw_read_xbar_data_from_CONC_32_CONC_32_g0_auto_1_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_1_ld_val = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2;
    endcase
  end

  always @(output_sel_65 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_)
  begin
    case (output_sel_65)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_I_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_J_;
    endcase
  end

  always @(output_sel_66 or siw_read_xbar_data_from_GENERIC_VALUE_g00_out or siw_read_xbar_data_from_GENERIC_VALUE_g04_out)
  begin
    case (output_sel_66)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_inc = siw_read_xbar_data_from_GENERIC_VALUE_g00_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
    endcase
  end

  always @(output_sel_67 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_)
  begin
    case (output_sel_67)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_I_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_10_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_J_;
    endcase
  end

  always @(output_sel_71 or siw_read_xbar_data_from_GENERIC_VALUE_g04_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2)
  begin
    case (output_sel_71)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_inc = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
    endcase
  end

  always @(output_sel_73 or siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_3_add or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_0_out)
  begin
    case (output_sel_73)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_0_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_11_ld_val = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_3_add;
    endcase
  end

  always @(output_sel_75 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_)
  begin
    case (output_sel_75)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_J_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
    endcase
  end

  always @(output_sel_76 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2 or siw_read_xbar_data_from_TWO_g00_fixed_out_12)
  begin
    case (output_sel_76)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_inc = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_inc = siw_read_xbar_data_from_TWO_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_77 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_)
  begin
    case (output_sel_77)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_J_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_;
    endcase
  end

  always @(output_sel_78 or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_13_out or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_1_out)
  begin
    case (output_sel_78)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_1_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_12_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_13_out;
    endcase
  end

  always @(output_sel_81 or siw_read_xbar_data_from_GENERIC_VALUE_g04_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2)
  begin
    case (output_sel_81)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_inc = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out2;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_inc = siw_read_xbar_data_from_GENERIC_VALUE_g04_out;
    endcase
  end

  always @(output_sel_83 or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_10_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out4)
  begin
    case (output_sel_83)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_10_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_13_ld_val = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out4;
    endcase
  end

  always @(output_sel_84 or siw_read_xbar_data_from_THREE_g00_fixed_out_12 or siw_read_xbar_data_from_ZERO_g00_fixed_out_12)
  begin
    case (output_sel_84)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_cmp = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_cmp = siw_read_xbar_data_from_THREE_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_88 or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_11_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_12)
  begin
    case (output_sel_88)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_11_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_2_ld_val = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_90 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_)
  begin
    case (output_sel_90)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_enable_K_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_en = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
    endcase
  end

  always @(output_sel_91 or siw_read_xbar_data_from_ONE_g00_fixed_out_12 or siw_read_xbar_data_from_TWO_g00_fixed_out_12)
  begin
    case (output_sel_91)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_inc = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_inc = siw_read_xbar_data_from_TWO_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_92 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_ or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_)
  begin
    case (output_sel_92)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_1_start_K_;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_start_K_;
    endcase
  end

  always @(output_sel_93 or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_0_out or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out)
  begin
    case (output_sel_93)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_12_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_3_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_0_out;
    endcase
  end

  always @(output_sel_98 or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_13_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_12)
  begin
    case (output_sel_98)
      1'd0 : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld_val = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_13_out;
      default : siw_read_xbar_data_to_BAU_12_BAU_12_g0_auto_4_ld_val = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_152 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_0_out or siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_8_out)
  begin
    case (output_sel_152)
      1'd0 : siw_read_xbar_data_to_BM_BM_g0_auto_0_i0 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_0_out;
      default : siw_read_xbar_data_to_BM_BM_g0_auto_0_i0 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_8_out;
    endcase
  end

  always @(output_sel_153 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_1_out or siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_3_out)
  begin
    case (output_sel_153)
      1'd0 : siw_read_xbar_data_to_BM_BM_g0_auto_0_i1 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_1_out;
      default : siw_read_xbar_data_to_BM_BM_g0_auto_0_i1 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_3_out;
    endcase
  end

  always @(output_sel_154 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_2_out or siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_9_out)
  begin
    case (output_sel_154)
      1'd0 : siw_read_xbar_data_to_BM_BM_g0_auto_0_i2 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_2_out;
      default : siw_read_xbar_data_to_BM_BM_g0_auto_0_i2 = siw_read_xbar_data_from_SREG_32_SREG_32_g0_auto_9_out;
    endcase
  end

  always @(output_sel_155 or siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_3_out or siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_7_out)
  begin
    case (output_sel_155)
      1'd0 : siw_read_xbar_data_to_BM_BM_g0_auto_0_i3 = siw_read_xbar_data_from_BADD3_32_BADD3_32_g0_auto_3_out;
      default : siw_read_xbar_data_to_BM_BM_g0_auto_0_i3 = siw_read_xbar_data_from_CLIP_32_CLIP_32_g0_auto_7_out;
    endcase
  end

  always @(output_sel_328 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out4)
  begin
    case (output_sel_328)
      1'd0 : siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_0_in = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out4;
      default : siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_0_in = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0;
    endcase
  end

  always @(output_sel_329 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out5)
  begin
    case (output_sel_329)
      1'd0 : siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_1_in = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out5;
      default : siw_read_xbar_data_to_SEP_32_SEP_32_g0_auto_1_in = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1;
    endcase
  end

  always @(output_sel_330 or siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_0_add or siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out)
  begin
    case (output_sel_330)
      1'd0 : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_0_add;
      default : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_0_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_0_out;
    endcase
  end

  always @(output_sel_331 or siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_1_add or siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out)
  begin
    case (output_sel_331)
      1'd0 : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_1_add;
      default : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_1_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_1_out;
    endcase
  end

  always @(output_sel_332 or siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_10_add or siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out)
  begin
    case (output_sel_332)
      1'd0 : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_10_add;
      default : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_2_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_2_out;
    endcase
  end

  always @(output_sel_333 or siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_2_add or siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out)
  begin
    case (output_sel_333)
      1'd0 : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in = siw_read_xbar_data_from_BADD_32_BADD_32_g0_auto_2_add;
      default : siw_read_xbar_data_to_SHIFT_R5_32_SHIFT_R5_32_g0_auto_3_in = siw_read_xbar_data_from_MUX4TO1_32_MUX4TO1_32_g0_auto_3_out;
    endcase
  end

  always @(output_sel_364 or siw_read_xbar_data_from_ONE_g00_fixed_out_12 or siw_read_xbar_data_from_ZERO_g00_fixed_out_12)
  begin
    case (output_sel_364)
      1'd0 : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
      default : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_i = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_365 or siw_read_xbar_data_from_ONE_g00_fixed_out_12 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1)
  begin
    case (output_sel_365)
      1'd0 : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1;
      default : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_j = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_366 or siw_read_xbar_data_from_GENERIC_VALUE_g06_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0)
  begin
    case (output_sel_366)
      1'd0 : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0;
      default : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_0_limit_k = siw_read_xbar_data_from_GENERIC_VALUE_g06_out;
    endcase
  end

  always @(output_sel_369 or siw_read_xbar_data_from_ONE_g00_fixed_out_12 or siw_read_xbar_data_from_ZERO_g00_fixed_out_12)
  begin
    case (output_sel_369)
      1'd0 : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
      default : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_i = siw_read_xbar_data_from_ZERO_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_370 or siw_read_xbar_data_from_ONE_g00_fixed_out_12 or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1)
  begin
    case (output_sel_370)
      1'd0 : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out1;
      default : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_j = siw_read_xbar_data_from_ONE_g00_fixed_out_12;
    endcase
  end

  always @(output_sel_371 or siw_read_xbar_data_from_GENERIC_VALUE_g06_out or siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0)
  begin
    case (output_sel_371)
      1'd0 : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k = siw_read_xbar_data_from_SIW_CTRL_SIW_CTRL_auto_0_out0;
      default : siw_read_xbar_data_to_TU_4_4_12_TU_4_4_12_g0_auto_1_limit_k = siw_read_xbar_data_from_GENERIC_VALUE_g06_out;
    endcase
  end

  always @(output_sel_378 or siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_out or siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_0_out)
  begin
    case (output_sel_378)
      1'd0 : siw_read_xbar_data_to_MEM_g01_address_a = siw_read_xbar_data_from_BAU_12_BAU_12_g0_auto_4_out;
      default : siw_read_xbar_data_to_MEM_g01_address_a = siw_read_xbar_data_from_SREG_12_SREG_12_g0_auto_0_out;
    endcase
  end

  always @(output_sel_382 or siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_ or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_382)
      1'd0 : siw_read_xbar_data_to_MEM_g01_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g01_write_a = siw_read_xbar_data_from_TU_4_4_12_TU_4_4_12_g0_auto_0_enable_K_;
    endcase
  end

  always @(output_sel_388 or siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_1_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_388)
      1'd0 : siw_read_xbar_data_to_MEM_g03_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g03_write_a = siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_1_out;
    endcase
  end

  always @(output_sel_389 or siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_389)
      1'd0 : siw_read_xbar_data_to_MEM_g03_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g03_write_b = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
    endcase
  end

  always @(output_sel_394 or siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_1_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_394)
      1'd0 : siw_read_xbar_data_to_MEM_g04_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g04_write_a = siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_1_out;
    endcase
  end

  always @(output_sel_395 or siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_395)
      1'd0 : siw_read_xbar_data_to_MEM_g04_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g04_write_b = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
    endcase
  end

  always @(output_sel_400 or siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_0_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_400)
      1'd0 : siw_read_xbar_data_to_MEM_g05_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g05_write_a = siw_read_xbar_data_from_BLU_1_BLU_1_g0_auto_0_out;
    endcase
  end

  always @(output_sel_401 or siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_401)
      1'd0 : siw_read_xbar_data_to_MEM_g05_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g05_write_b = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
    endcase
  end

  always @(output_sel_412 or siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_412)
      1'd0 : siw_read_xbar_data_to_MEM_g07_write_a = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g07_write_a = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
    endcase
  end

  always @(output_sel_413 or siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out or siw_read_xbar_data_from_ZERO_g00_fixed_out_1)
  begin
    case (output_sel_413)
      1'd0 : siw_read_xbar_data_to_MEM_g07_write_b = siw_read_xbar_data_from_ZERO_g00_fixed_out_1;
      default : siw_read_xbar_data_to_MEM_g07_write_b = siw_read_xbar_data_from_DLINE_1_16_DLINE_1_16_g0_auto_0_out;
    endcase
  end


endmodule
