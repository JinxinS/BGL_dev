//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : ZERO.v
// AUTHOR         : SideGen V1.4
//----------------------------------------------------------------------
// RELEASE HISTORY
// VERSION DATE         AUTHOR
// 1.0     Sep  9 2016  SideGen V1.4
//----------------------------------------------------------------------
// PURPOSE  : ZERO
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
module ZERO ( 
  input                 ZERO_clk, 
  input                 ZERO_reset, 
  input                 ZERO_init, 
  input                 ZERO_in_disable, 
  output wire           ZERO_out_fixed_out_1, 
  output wire   [11:0]  ZERO_out_fixed_out_12, 
  output wire   [13:0]  ZERO_out_fixed_out_14, 
  output wire   [1:0]   ZERO_out_fixed_out_2, 
  output wire   [31:0]  ZERO_out_fixed_out_32, 
  output wire   [6:0]   ZERO_out_fixed_out_7, 
  output wire   [7:0]   ZERO_out_fixed_out_8);


  wire           reset_i;


//--------------
// Assign Part -
//--------------
  assign reset_i = ZERO_reset | ZERO_init;
  assign ZERO_out_fixed_out_1 = { 1'b0 };
  assign ZERO_out_fixed_out_12 = { {12{1'b0}} };
  assign ZERO_out_fixed_out_14 = { {14{1'b0}} };
  assign ZERO_out_fixed_out_2 = { {2{1'b0}} };
  assign ZERO_out_fixed_out_32 = { {32{1'b0}} };
  assign ZERO_out_fixed_out_7 = { {7{1'b0}} };
  assign ZERO_out_fixed_out_8 = { {8{1'b0}} };

endmodule
