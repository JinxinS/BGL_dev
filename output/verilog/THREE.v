//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : THREE.v
// AUTHOR         : SideGen V1.4
//----------------------------------------------------------------------
// RELEASE HISTORY
// VERSION DATE         AUTHOR
// 1.0     Sep  9 2016  SideGen V1.4
//----------------------------------------------------------------------
// PURPOSE  : THREE
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
module THREE ( 
  input                 THREE_clk, 
  input                 THREE_reset, 
  input                 THREE_init, 
  input                 THREE_in_disable, 
  output wire   [11:0]  THREE_out_fixed_out_12);


  wire           reset_i;


//--------------
// Assign Part -
//--------------
  assign reset_i = THREE_reset | THREE_init;
  assign THREE_out_fixed_out_12 = { {10{1'b0}} ,{2{1'b1}} };

endmodule
