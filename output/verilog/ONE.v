//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : ONE.v
// AUTHOR         : SideGen V1.4
//----------------------------------------------------------------------
// RELEASE HISTORY
// VERSION DATE         AUTHOR
// 1.0     Sep  9 2016  SideGen V1.4
//----------------------------------------------------------------------
// PURPOSE  : ONE
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
module ONE ( 
  input                 ONE_clk, 
  input                 ONE_reset, 
  input                 ONE_init, 
  input                 ONE_in_disable, 
  output wire           ONE_out_fixed_out_1, 
  output wire   [11:0]  ONE_out_fixed_out_12, 
  output wire   [31:0]  ONE_out_fixed_out_32);


  wire           reset_i;


//--------------
// Assign Part -
//--------------
  assign reset_i = ONE_reset | ONE_init;
  assign ONE_out_fixed_out_1 = { 1'b1 };
  assign ONE_out_fixed_out_12 = { {11{1'b0}} ,1'b1 };
  assign ONE_out_fixed_out_32 = { {31{1'b0}} ,1'b1 };

endmodule
