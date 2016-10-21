//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : TWO.v
// AUTHOR         : SideGen V1.4
//----------------------------------------------------------------------
// RELEASE HISTORY
// VERSION DATE         AUTHOR
// 1.0     Sep  9 2016  SideGen V1.4
//----------------------------------------------------------------------
// PURPOSE  : TWO
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
module TWO ( 
  input                 TWO_clk, 
  input                 TWO_reset, 
  input                 TWO_init, 
  input                 TWO_in_disable, 
  output wire   [11:0]  TWO_out_fixed_out_12);


  wire           reset_i;


//--------------
// Assign Part -
//--------------
  assign reset_i = TWO_reset | TWO_init;
  assign TWO_out_fixed_out_12 = { {10{1'b0}} ,1'b1 , 1'b0 };

endmodule
