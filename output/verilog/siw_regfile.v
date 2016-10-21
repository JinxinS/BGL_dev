//  Copyright (c) 2004-2013 Coreworks, S.A.      All rights reserved
//  Rua Alves Redol, 9 
//  1000-029 Lisboa 
//  Portugal 
//
//  Coreworks Confidential Information
//----------------------------------------------------------------------
// FILE NAME      : siw_regfile.v
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
module siw_regfile ( 
  input                 siw_regfile_clk, 
  input                 siw_regfile_reset, 
  input         [31:0]  siw_regfile_conf_data_in, 
  input                 siw_regfile_conf_req_in, 
  input                 siw_regfile_ctr_req_in, 
  input         [6:0]   siw_regfile_ctr_addr, 
  input                 siw_regfile_ctr_wr, 
  input         [31:0]  siw_regfile_ctr_data_in, 
  output reg    [31:0]  siw_regfile_ctr_data_out, 
  input                 siw_regfile_done, 
  output wire           siw_regfile_enable, 
  output reg            siw_regfile_init_siw, 
  output reg    [11:0]  siw_regfile_OFFSET_loop, 
  output wire   [11:0]  siw_regfile_OFFSET_mult, 
  output wire   [11:0]  siw_regfile_OFFSET_add, 
  input                 siw_regfile_ctr_kernel_run, 
  input         [7:0]   siw_regfile_ctr_kernel_load_dp_number, 
  input                 siw_regfile_ctr_kernel_load_dp, 
  input                 siw_regfile_ctr_kernel_dp_conf_ready, 
  input                 siw_regfile_ctr_kernel_done, 
  output reg            siw_regfile_ctr_kernel_stopped, 
  output reg            siw_regfile_ctr_kernel_busy, 
  input         [7:0]   siw_regfile_ctr_wr_conf_mem, 
  input         [63:0]  siw_regfile_ctr_data_conf_mem, 
  input         [8:0]   siw_regfile_ctr_add_conf_mem, 
  output wire   [60:0]  siw_regfile_read_xbar_conf, 
  output wire   [145:0] siw_regfile_func_units_conf);


  wire   [2047:0] configurations_pre;
  reg    [2047:0] configurations;
  reg            init_siw_nxt;
  reg            run;
  reg            run_nxt;
  reg            pre_run;
  reg            pre_run_nxt;
  wire   [31:0]  control_status;
  reg            start_ld_conf;
  reg            nx_start_ld_conf;
  reg            start_conf_reg;
  reg            start_conf;
  reg    [31:0]  configuration_0_reg;
  reg    [31:0]  configuration_1_reg;
  reg    [31:0]  configuration_2_reg;
  reg    [31:0]  configuration_3_reg;
  reg    [31:0]  configuration_4_reg;
  reg    [31:0]  configuration_5_reg;
  reg    [31:0]  configuration_6_reg;
  reg    [31:0]  configuration_7_reg;
  reg    [31:0]  configuration_8_reg;
  reg    [31:0]  configuration_9_reg;
  reg    [31:0]  configuration_10_reg;
  reg    [31:0]  configuration_11_reg;
  reg    [31:0]  configuration_12_reg;
  reg    [31:0]  configuration_13_reg;
  reg    [31:0]  configuration_14_reg;
  reg    [31:0]  configuration_15_reg;
  reg    [31:0]  configuration_16_reg;
  reg    [31:0]  configuration_17_reg;
  reg    [31:0]  configuration_18_reg;
  reg    [31:0]  configuration_19_reg;
  reg    [31:0]  configuration_20_reg;
  reg    [31:0]  configuration_21_reg;
  reg    [31:0]  configuration_22_reg;
  reg    [31:0]  configuration_23_reg;
  reg    [31:0]  configuration_24_reg;
  reg    [31:0]  configuration_25_reg;
  reg    [31:0]  configuration_26_reg;
  reg    [31:0]  configuration_27_reg;
  reg    [31:0]  configuration_28_reg;
  reg    [31:0]  configuration_29_reg;
  reg    [31:0]  configuration_30_reg;
  reg    [31:0]  configuration_31_reg;
  reg    [31:0]  configuration_32_reg;
  reg    [31:0]  configuration_33_reg;
  reg    [31:0]  configuration_34_reg;
  reg    [31:0]  configuration_35_reg;
  reg    [31:0]  configuration_36_reg;
  reg    [31:0]  configuration_37_reg;
  reg    [31:0]  configuration_38_reg;
  reg    [31:0]  configuration_39_reg;
  reg    [31:0]  configuration_40_reg;
  reg    [31:0]  configuration_41_reg;
  reg    [31:0]  configuration_42_reg;
  reg    [31:0]  configuration_43_reg;
  reg    [31:0]  configuration_44_reg;
  reg    [31:0]  configuration_45_reg;
  reg    [31:0]  configuration_46_reg;
  reg    [31:0]  configuration_47_reg;
  reg    [31:0]  configuration_48_reg;
  reg    [31:0]  configuration_49_reg;
  reg    [31:0]  configuration_50_reg;
  reg    [31:0]  configuration_51_reg;
  reg    [31:0]  configuration_52_reg;
  reg    [31:0]  configuration_53_reg;
  reg    [31:0]  configuration_54_reg;
  reg    [31:0]  configuration_55_reg;
  reg    [31:0]  configuration_56_reg;
  reg    [31:0]  configuration_57_reg;
  reg    [31:0]  configuration_58_reg;
  reg    [31:0]  configuration_59_reg;
  reg    [31:0]  configuration_60_reg;
  reg    [31:0]  configuration_61_reg;
  reg    [31:0]  configuration_62_reg;
  reg    [31:0]  configuration_63_reg;
  reg    [31:0]  nx_configuration_0_reg;
  reg    [31:0]  nx_configuration_1_reg;
  reg    [31:0]  nx_configuration_2_reg;
  reg    [31:0]  nx_configuration_3_reg;
  reg    [31:0]  nx_configuration_4_reg;
  reg    [31:0]  nx_configuration_5_reg;
  reg    [31:0]  nx_configuration_6_reg;
  reg    [31:0]  nx_configuration_7_reg;
  reg    [31:0]  nx_configuration_8_reg;
  reg    [31:0]  nx_configuration_9_reg;
  reg    [31:0]  nx_configuration_10_reg;
  reg    [31:0]  nx_configuration_11_reg;
  reg    [31:0]  nx_configuration_12_reg;
  reg    [31:0]  nx_configuration_13_reg;
  reg    [31:0]  nx_configuration_14_reg;
  reg    [31:0]  nx_configuration_15_reg;
  reg    [31:0]  nx_configuration_16_reg;
  reg    [31:0]  nx_configuration_17_reg;
  reg    [31:0]  nx_configuration_18_reg;
  reg    [31:0]  nx_configuration_19_reg;
  reg    [31:0]  nx_configuration_20_reg;
  reg    [31:0]  nx_configuration_21_reg;
  reg    [31:0]  nx_configuration_22_reg;
  reg    [31:0]  nx_configuration_23_reg;
  reg    [31:0]  nx_configuration_24_reg;
  reg    [31:0]  nx_configuration_25_reg;
  reg    [31:0]  nx_configuration_26_reg;
  reg    [31:0]  nx_configuration_27_reg;
  reg    [31:0]  nx_configuration_28_reg;
  reg    [31:0]  nx_configuration_29_reg;
  reg    [31:0]  nx_configuration_30_reg;
  reg    [31:0]  nx_configuration_31_reg;
  reg    [31:0]  nx_configuration_32_reg;
  reg    [31:0]  nx_configuration_33_reg;
  reg    [31:0]  nx_configuration_34_reg;
  reg    [31:0]  nx_configuration_35_reg;
  reg    [31:0]  nx_configuration_36_reg;
  reg    [31:0]  nx_configuration_37_reg;
  reg    [31:0]  nx_configuration_38_reg;
  reg    [31:0]  nx_configuration_39_reg;
  reg    [31:0]  nx_configuration_40_reg;
  reg    [31:0]  nx_configuration_41_reg;
  reg    [31:0]  nx_configuration_42_reg;
  reg    [31:0]  nx_configuration_43_reg;
  reg    [31:0]  nx_configuration_44_reg;
  reg    [31:0]  nx_configuration_45_reg;
  reg    [31:0]  nx_configuration_46_reg;
  reg    [31:0]  nx_configuration_47_reg;
  reg    [31:0]  nx_configuration_48_reg;
  reg    [31:0]  nx_configuration_49_reg;
  reg    [31:0]  nx_configuration_50_reg;
  reg    [31:0]  nx_configuration_51_reg;
  reg    [31:0]  nx_configuration_52_reg;
  reg    [31:0]  nx_configuration_53_reg;
  reg    [31:0]  nx_configuration_54_reg;
  reg    [31:0]  nx_configuration_55_reg;
  reg    [31:0]  nx_configuration_56_reg;
  reg    [31:0]  nx_configuration_57_reg;
  reg    [31:0]  nx_configuration_58_reg;
  reg    [31:0]  nx_configuration_59_reg;
  reg    [31:0]  nx_configuration_60_reg;
  reg    [31:0]  nx_configuration_61_reg;
  reg    [31:0]  nx_configuration_62_reg;
  reg    [31:0]  nx_configuration_63_reg;
  reg    [31:0]  cfg_out_data_nxt;
  wire   [8:0]   mux_select;
  reg            write_conf;
  wire           update_conf;
  reg    [31:0]  co_processing;
  reg    [31:0]  co_processing_nxt;
  reg    [31:0]  data_a_reg;
  reg    [31:0]  data_b_reg;
  reg            load_reg_en_reg;
  reg    [2:0]   kernel_state;
  reg    [2:0]   kernel_state_nxt;
  reg    [11:0]  kernel_cnt_i;
  reg    [11:0]  kernel_cnt_i_nxt;
  wire   [11:0]  kernel_cnt_i_nxt_nxt;
  reg    [5:0]   kernel_cnt_j;
  reg    [5:0]   kernel_cnt_j_nxt;
  reg    [11:0]  kernel_total_i;
  reg    [11:0]  kernel_total_i_nxt;
  wire   [11:0]  kernel_total_i_nxt_nxt;
  reg    [5:0]   kernel_total_j;
  reg    [5:0]   kernel_total_j_nxt;
  wire   [5:0]   kernel_total_j_nxt_nxt;
  reg    [11:0]  kernel_mult_nxt;
  reg    [11:0]  kernel_mult;
  reg    [11:0]  kernel_add_nxt;
  reg    [11:0]  kernel_add;
  reg            kernel_load_conf;
  reg            kernel_done;
  reg            kernel_run;
  reg            kernel_run_nxt;
  reg            kernel_init_siw;
  reg            process_var_allias;
  wire           init_siw_wire;
  reg    [63:0]  conf_mem_0[255:0];
  reg    [63:0]  conf_mem_1[255:0];
  reg    [63:0]  conf_mem_2[255:0];
  reg    [63:0]  conf_mem_3[255:0];
  reg    [63:0]  conf_mem_4[255:0];
  reg    [63:0]  conf_mem_5[255:0];
  reg    [63:0]  conf_mem_6[255:0];
  reg    [63:0]  conf_mem_7[255:0];
  reg    [31:0]  data_a;
  reg    [31:0]  data_b;
  reg    [11:0]  address_port_a;
  reg    [11:0]  nx_address_port_a;
  reg    [11:0]  address_port_b;
  reg    [11:0]  nx_address_port_b;
  reg    [1:0]   rd_fsm_state;
  reg    [1:0]   rd_fsm_next_state;
  wire   [5:0]   conf_load;
  wire   [6:0]   conf_sel;
  reg            load_reg_en;
  reg            nx_load_reg_en;
  reg            load_reg_done;
  reg            nx_load_reg_done;
  reg    [8:0]   nx_address_rd;
  reg    [8:0]   address_rd;
  reg    [8:0]   address_rd_reg;
  reg    [63:0]  data_0_reg;
  reg    [63:0]  data_1_reg;
  reg    [63:0]  data_2_reg;
  reg    [63:0]  data_3_reg;
  reg    [63:0]  data_4_reg;
  reg    [63:0]  data_5_reg;
  reg    [63:0]  data_6_reg;
  reg    [63:0]  data_7_reg;
  wire   [63:0]  data_0;
  wire   [63:0]  data_1;
  wire   [63:0]  data_2;
  wire   [63:0]  data_3;
  wire   [63:0]  data_4;
  wire   [63:0]  data_5;
  wire   [63:0]  data_6;
  wire   [63:0]  data_7;
  reg    [7:0]   kernel_datapath_offset;
  reg    [7:0]   kernel_datapath_offset_nxt;

  localparam     [2:0]   st_idle = 3'd1;
  localparam     [2:0]   st_load_conf = 3'd2;
  localparam     [2:0]   st_wait_run = 3'd3;
  localparam     [2:0]   st_run_datapath = 3'd4;
  localparam     [2:0]   st_start_run = 3'd5;

//--------------
// Assign Part -
//--------------
  assign siw_regfile_read_xbar_conf = configurations[60:0];
  assign siw_regfile_func_units_conf = configurations[206:61];
  assign control_status = {28'd0, start_ld_conf, start_conf_reg, kernel_run, run};
  assign mux_select = {siw_regfile_ctr_req_in, siw_regfile_ctr_wr, siw_regfile_ctr_addr};
  assign update_conf = (run_nxt & ~run) | siw_regfile_init_siw;
  assign siw_regfile_enable = run & ~siw_regfile_init_siw;
  assign configurations_pre[31:0] = configuration_6_reg;
  assign configurations_pre[63:32] = configuration_5_reg;
  assign configurations_pre[95:64] = configuration_4_reg;
  assign configurations_pre[127:96] = configuration_3_reg;
  assign configurations_pre[159:128] = configuration_2_reg;
  assign configurations_pre[191:160] = configuration_1_reg;
  assign configurations_pre[223:192] = configuration_0_reg;
  assign configurations_pre[255:224] = 32'd0;
  assign configurations_pre[287:256] = 32'd0;
  assign configurations_pre[319:288] = 32'd0;
  assign configurations_pre[351:320] = 32'd0;
  assign configurations_pre[383:352] = 32'd0;
  assign configurations_pre[415:384] = 32'd0;
  assign configurations_pre[447:416] = 32'd0;
  assign configurations_pre[479:448] = 32'd0;
  assign configurations_pre[511:480] = 32'd0;
  assign configurations_pre[543:512] = 32'd0;
  assign configurations_pre[575:544] = 32'd0;
  assign configurations_pre[607:576] = 32'd0;
  assign configurations_pre[639:608] = 32'd0;
  assign configurations_pre[671:640] = 32'd0;
  assign configurations_pre[703:672] = 32'd0;
  assign configurations_pre[735:704] = 32'd0;
  assign configurations_pre[767:736] = 32'd0;
  assign configurations_pre[799:768] = 32'd0;
  assign configurations_pre[831:800] = 32'd0;
  assign configurations_pre[863:832] = 32'd0;
  assign configurations_pre[895:864] = 32'd0;
  assign configurations_pre[927:896] = 32'd0;
  assign configurations_pre[959:928] = 32'd0;
  assign configurations_pre[991:960] = 32'd0;
  assign configurations_pre[1023:992] = 32'd0;
  assign configurations_pre[1055:1024] = 32'd0;
  assign configurations_pre[1087:1056] = 32'd0;
  assign configurations_pre[1119:1088] = 32'd0;
  assign configurations_pre[1151:1120] = 32'd0;
  assign configurations_pre[1183:1152] = 32'd0;
  assign configurations_pre[1215:1184] = 32'd0;
  assign configurations_pre[1247:1216] = 32'd0;
  assign configurations_pre[1279:1248] = 32'd0;
  assign configurations_pre[1311:1280] = 32'd0;
  assign configurations_pre[1343:1312] = 32'd0;
  assign configurations_pre[1375:1344] = 32'd0;
  assign configurations_pre[1407:1376] = 32'd0;
  assign configurations_pre[1439:1408] = 32'd0;
  assign configurations_pre[1471:1440] = 32'd0;
  assign configurations_pre[1503:1472] = 32'd0;
  assign configurations_pre[1535:1504] = 32'd0;
  assign configurations_pre[1567:1536] = 32'd0;
  assign configurations_pre[1599:1568] = 32'd0;
  assign configurations_pre[1631:1600] = 32'd0;
  assign configurations_pre[1663:1632] = 32'd0;
  assign configurations_pre[1695:1664] = 32'd0;
  assign configurations_pre[1727:1696] = 32'd0;
  assign configurations_pre[1759:1728] = 32'd0;
  assign configurations_pre[1791:1760] = 32'd0;
  assign configurations_pre[1823:1792] = 32'd0;
  assign configurations_pre[1855:1824] = 32'd0;
  assign configurations_pre[1887:1856] = 32'd0;
  assign configurations_pre[1919:1888] = 32'd0;
  assign configurations_pre[1951:1920] = 32'd0;
  assign configurations_pre[1983:1952] = 32'd0;
  assign configurations_pre[2015:1984] = 32'd0;
  assign configurations_pre[2047:2016] = 32'd0;
  assign conf_load = siw_regfile_ctr_data_in[5:0];
  assign conf_sel = (kernel_run == 1'b0) ? siw_regfile_ctr_data_in[6:0] : (siw_regfile_ctr_kernel_run == 1'b1) ? siw_regfile_ctr_kernel_load_dp_number : kernel_cnt_j + kernel_datapath_offset;
  assign kernel_total_i_nxt_nxt = (siw_regfile_ctr_kernel_run == 1'b1) ? 12'd1 : kernel_total_i_nxt;
  assign kernel_total_j_nxt_nxt = (siw_regfile_ctr_kernel_run == 1'b1) ? 6'd1 : kernel_total_j_nxt;
  assign kernel_cnt_i_nxt_nxt = (siw_regfile_ctr_kernel_run == 1'b1) ? 12'd1 : kernel_cnt_i_nxt;
  assign siw_regfile_OFFSET_mult = kernel_mult;
  assign siw_regfile_OFFSET_add = kernel_add;
  assign init_siw_wire = init_siw_nxt | kernel_init_siw;

//-------------------
// Combinatory Part -
//-------------------
  always @(*)
  begin
    nx_address_rd = address_rd;
    rd_fsm_next_state = rd_fsm_state;
    nx_load_reg_en = load_reg_en;
    nx_load_reg_done = 1'd0;
    process_var_allias = nx_start_ld_conf | kernel_load_conf;
    case (rd_fsm_state)
      2'd0 : 
        begin
          if (process_var_allias == 1'd1)
            begin
              nx_address_rd = {conf_sel, 2'd0};
              rd_fsm_next_state = 2'd1;
              nx_load_reg_en = 1'd1;
            end
        end
      2'd1 : 
        begin
          nx_address_rd[1:0] = address_rd[1:0] + 2'd1;
          nx_load_reg_en = 1'd1;
          if (address_rd[1:0] == 2'd3)
            begin
              nx_address_rd = address_rd;
              nx_load_reg_en = 1'd0;
              rd_fsm_next_state = 2'd0;
              nx_load_reg_done = 1'd1;
            end
        end
      default : 
        begin
        end
    endcase
  end

  always @(*)
  begin
    nx_configuration_0_reg = configuration_0_reg;
    nx_configuration_1_reg = configuration_1_reg;
    nx_configuration_2_reg = configuration_2_reg;
    nx_configuration_3_reg = configuration_3_reg;
    nx_configuration_4_reg = configuration_4_reg;
    nx_configuration_5_reg = configuration_5_reg;
    nx_configuration_6_reg = configuration_6_reg;
    nx_configuration_7_reg = configuration_7_reg;
    nx_configuration_8_reg = configuration_8_reg;
    nx_configuration_9_reg = configuration_9_reg;
    nx_configuration_10_reg = configuration_10_reg;
    nx_configuration_11_reg = configuration_11_reg;
    nx_configuration_12_reg = configuration_12_reg;
    nx_configuration_13_reg = configuration_13_reg;
    nx_configuration_14_reg = configuration_14_reg;
    nx_configuration_15_reg = configuration_15_reg;
    nx_configuration_16_reg = configuration_16_reg;
    nx_configuration_17_reg = configuration_17_reg;
    nx_configuration_18_reg = configuration_18_reg;
    nx_configuration_19_reg = configuration_19_reg;
    nx_configuration_20_reg = configuration_20_reg;
    nx_configuration_21_reg = configuration_21_reg;
    nx_configuration_22_reg = configuration_22_reg;
    nx_configuration_23_reg = configuration_23_reg;
    nx_configuration_24_reg = configuration_24_reg;
    nx_configuration_25_reg = configuration_25_reg;
    nx_configuration_26_reg = configuration_26_reg;
    nx_configuration_27_reg = configuration_27_reg;
    nx_configuration_28_reg = configuration_28_reg;
    nx_configuration_29_reg = configuration_29_reg;
    nx_configuration_30_reg = configuration_30_reg;
    nx_configuration_31_reg = configuration_31_reg;
    nx_configuration_32_reg = configuration_32_reg;
    nx_configuration_33_reg = configuration_33_reg;
    nx_configuration_34_reg = configuration_34_reg;
    nx_configuration_35_reg = configuration_35_reg;
    nx_configuration_36_reg = configuration_36_reg;
    nx_configuration_37_reg = configuration_37_reg;
    nx_configuration_38_reg = configuration_38_reg;
    nx_configuration_39_reg = configuration_39_reg;
    nx_configuration_40_reg = configuration_40_reg;
    nx_configuration_41_reg = configuration_41_reg;
    nx_configuration_42_reg = configuration_42_reg;
    nx_configuration_43_reg = configuration_43_reg;
    nx_configuration_44_reg = configuration_44_reg;
    nx_configuration_45_reg = configuration_45_reg;
    nx_configuration_46_reg = configuration_46_reg;
    nx_configuration_47_reg = configuration_47_reg;
    nx_configuration_48_reg = configuration_48_reg;
    nx_configuration_49_reg = configuration_49_reg;
    nx_configuration_50_reg = configuration_50_reg;
    nx_configuration_51_reg = configuration_51_reg;
    nx_configuration_52_reg = configuration_52_reg;
    nx_configuration_53_reg = configuration_53_reg;
    nx_configuration_54_reg = configuration_54_reg;
    nx_configuration_55_reg = configuration_55_reg;
    nx_configuration_56_reg = configuration_56_reg;
    nx_configuration_57_reg = configuration_57_reg;
    nx_configuration_58_reg = configuration_58_reg;
    nx_configuration_59_reg = configuration_59_reg;
    nx_configuration_60_reg = configuration_60_reg;
    nx_configuration_61_reg = configuration_61_reg;
    nx_configuration_62_reg = configuration_62_reg;
    nx_configuration_63_reg = configuration_63_reg;
    if (load_reg_en_reg == 1'd1)
      begin
        case (address_rd_reg[1:0])
          2'd0 : 
            begin
              nx_configuration_0_reg = data_0_reg[31:0];
              nx_configuration_1_reg = data_0_reg[63:32];
              nx_configuration_2_reg = data_1_reg[31:0];
              nx_configuration_3_reg = data_1_reg[63:32];
              nx_configuration_4_reg = data_2_reg[31:0];
              nx_configuration_5_reg = data_2_reg[63:32];
              nx_configuration_6_reg = data_3_reg[31:0];
              nx_configuration_7_reg = data_3_reg[63:32];
              nx_configuration_8_reg = data_4_reg[31:0];
              nx_configuration_9_reg = data_4_reg[63:32];
              nx_configuration_10_reg = data_5_reg[31:0];
              nx_configuration_11_reg = data_5_reg[63:32];
              nx_configuration_12_reg = data_6_reg[31:0];
              nx_configuration_13_reg = data_6_reg[63:32];
              nx_configuration_14_reg = data_7_reg[31:0];
              nx_configuration_15_reg = data_7_reg[63:32];
            end
          2'd1 : 
            begin
              nx_configuration_16_reg = data_0_reg[31:0];
              nx_configuration_17_reg = data_0_reg[63:32];
              nx_configuration_18_reg = data_1_reg[31:0];
              nx_configuration_19_reg = data_1_reg[63:32];
              nx_configuration_20_reg = data_2_reg[31:0];
              nx_configuration_21_reg = data_2_reg[63:32];
              nx_configuration_22_reg = data_3_reg[31:0];
              nx_configuration_23_reg = data_3_reg[63:32];
              nx_configuration_24_reg = data_4_reg[31:0];
              nx_configuration_25_reg = data_4_reg[63:32];
              nx_configuration_26_reg = data_5_reg[31:0];
              nx_configuration_27_reg = data_5_reg[63:32];
              nx_configuration_28_reg = data_6_reg[31:0];
              nx_configuration_29_reg = data_6_reg[63:32];
              nx_configuration_30_reg = data_7_reg[31:0];
              nx_configuration_31_reg = data_7_reg[63:32];
            end
          2'd2 : 
            begin
              nx_configuration_32_reg = data_0_reg[31:0];
              nx_configuration_33_reg = data_0_reg[63:32];
              nx_configuration_34_reg = data_1_reg[31:0];
              nx_configuration_35_reg = data_1_reg[63:32];
              nx_configuration_36_reg = data_2_reg[31:0];
              nx_configuration_37_reg = data_2_reg[63:32];
              nx_configuration_38_reg = data_3_reg[31:0];
              nx_configuration_39_reg = data_3_reg[63:32];
              nx_configuration_40_reg = data_4_reg[31:0];
              nx_configuration_41_reg = data_4_reg[63:32];
              nx_configuration_42_reg = data_5_reg[31:0];
              nx_configuration_43_reg = data_5_reg[63:32];
              nx_configuration_44_reg = data_6_reg[31:0];
              nx_configuration_45_reg = data_6_reg[63:32];
              nx_configuration_46_reg = data_7_reg[31:0];
              nx_configuration_47_reg = data_7_reg[63:32];
            end
          2'd3 : 
            begin
              nx_configuration_48_reg = data_0_reg[31:0];
              nx_configuration_49_reg = data_0_reg[63:32];
              nx_configuration_50_reg = data_1_reg[31:0];
              nx_configuration_51_reg = data_1_reg[63:32];
              nx_configuration_52_reg = data_2_reg[31:0];
              nx_configuration_53_reg = data_2_reg[63:32];
              nx_configuration_54_reg = data_3_reg[31:0];
              nx_configuration_55_reg = data_3_reg[63:32];
              nx_configuration_56_reg = data_4_reg[31:0];
              nx_configuration_57_reg = data_4_reg[63:32];
              nx_configuration_58_reg = data_5_reg[31:0];
              nx_configuration_59_reg = data_5_reg[63:32];
              nx_configuration_60_reg = data_6_reg[31:0];
              nx_configuration_61_reg = data_6_reg[63:32];
              nx_configuration_62_reg = data_7_reg[31:0];
              nx_configuration_63_reg = data_7_reg[63:32];
            end
          default : 
            begin
            end
        endcase
      end
  end

  always @(*)
  begin
    pre_run_nxt = pre_run;
    kernel_state_nxt = kernel_state;
    kernel_cnt_i_nxt = kernel_cnt_i;
    kernel_cnt_j_nxt = kernel_cnt_j;
    kernel_load_conf = 1'd0;
    kernel_done = 1'd0;
    kernel_init_siw = 1'd0;
    siw_regfile_ctr_kernel_busy = 1'd0;
    siw_regfile_ctr_kernel_stopped = 1'd0;
    case (kernel_state)
      3'd1 : 
        begin
          kernel_cnt_i_nxt = 12'd0;
          kernel_cnt_j_nxt = 6'd0;
          if (kernel_run == 1'd1)
            begin
              if (siw_regfile_ctr_kernel_run == 1'd1)
                begin
                  kernel_state_nxt = st_wait_run;
                end
              else 
                begin
                  kernel_state_nxt = st_load_conf;
                end
            end
        end
      3'd2 : 
        begin
          kernel_load_conf = 1'd1;
          siw_regfile_ctr_kernel_busy = 1'd1;
          if (load_reg_done == 1'd1)
            begin
              kernel_load_conf = 1'd0;
              kernel_state_nxt = st_wait_run;
              siw_regfile_ctr_kernel_busy = 1'd0;
            end
        end
      3'd3 : 
        begin
          if (siw_regfile_ctr_kernel_done == 1'd1)
            begin
              siw_regfile_ctr_kernel_stopped = 1'd1;
              kernel_done = 1'd1;
              kernel_state_nxt = st_idle;
            end
          if (siw_regfile_ctr_kernel_run && siw_regfile_ctr_kernel_load_dp)
            begin
              kernel_state_nxt = st_load_conf;
            end
          else if ((run == 1'd0) || (siw_regfile_done == 1'd1))
            begin
              if (siw_regfile_ctr_kernel_dp_conf_ready == 1'b1 || siw_regfile_ctr_kernel_run == 1'd0)
                begin
                  kernel_init_siw = 1'd1;
                  kernel_state_nxt = st_start_run;
                end
            end
        end
      3'd5 : 
        begin
          pre_run_nxt = 1'd1;
          if (run == 1'd1)
            begin
              pre_run_nxt = 1'd0;
              if (siw_regfile_ctr_kernel_run == 1'd1)
                begin
                  kernel_state_nxt = st_wait_run;
                end
            end
        end
      default : 
        begin
        end
    endcase
  end

  always @(*)
  begin
    write_conf = 1'd0;
    cfg_out_data_nxt = 32'd0;
    kernel_run_nxt = kernel_run;
    kernel_total_i_nxt = kernel_total_i;
    kernel_total_j_nxt = kernel_total_j;
    kernel_mult_nxt = kernel_mult;
    kernel_add_nxt = kernel_add;
    kernel_datapath_offset_nxt = kernel_datapath_offset;
    init_siw_nxt = 1'd0;
    run_nxt = run;
    co_processing_nxt = co_processing;
    start_conf = start_conf_reg;
    nx_start_ld_conf = start_ld_conf;
    if (load_reg_done == 1'd1)
      begin
        nx_start_ld_conf = 1'd0;
      end
    if (siw_regfile_done == 1'd1)
      begin
        run_nxt = 1'd0;
      end
    if (run == 1'd0)
      begin
        run_nxt = pre_run;
      end
    if (kernel_done == 1'd1)
      begin
        kernel_run_nxt = 1'd0;
      end
    else if (siw_regfile_ctr_kernel_run == 1'd1)
      begin
        kernel_run_nxt = 1'd1;
      end
    if (siw_regfile_conf_req_in == 1'd1)
      begin
        write_conf = 1'd1;
      end
    case (mux_select)
      9'd257 : cfg_out_data_nxt = control_status;
      9'd287 : cfg_out_data_nxt = co_processing;
      9'd385 : 
        begin
          run_nxt = siw_regfile_ctr_data_in[0];
          init_siw_nxt = siw_regfile_ctr_data_in[2];
        end
      9'd413 : start_conf = 1'd1;
      9'd414 : nx_start_ld_conf = 1'd1;
      9'd415 : co_processing_nxt = siw_regfile_ctr_data_in;
      9'd416 : 
        begin
          kernel_total_i_nxt = siw_regfile_ctr_data_in[18:7];
          kernel_total_j_nxt = siw_regfile_ctr_data_in[6:1];
          kernel_run_nxt = siw_regfile_ctr_data_in[0];
        end
      9'd417 : 
        begin
          kernel_mult_nxt = siw_regfile_ctr_data_in[31:20];
          kernel_datapath_offset_nxt = siw_regfile_ctr_data_in[19:12];
          kernel_add_nxt = siw_regfile_ctr_data_in[11:0];
        end
      default : cfg_out_data_nxt = 32'd0;
    endcase
  end

//------------------
// Sequencial Part -
//------------------
  always @(posedge siw_regfile_clk or posedge siw_regfile_reset)
  begin
    if (siw_regfile_reset == 1'b1)
      begin
        siw_regfile_ctr_data_out <= 32'd0;
      end
    else
      begin
        siw_regfile_ctr_data_out <= cfg_out_data_nxt;
      end
  end

  always @(posedge siw_regfile_clk or posedge siw_regfile_reset)
  begin
    if (siw_regfile_reset == 1'b1)
      begin
        run <= 1'd0;
        co_processing <= 32'd0;
        pre_run <= 1'd0;
        siw_regfile_init_siw <= 1'd0;
        kernel_mult <= 12'd0;
        kernel_add <= 12'd0;
        kernel_total_i <= 12'd0;
        kernel_total_j <= 6'd0;
        kernel_cnt_j <= 6'd0;
        kernel_cnt_i <= 12'd0;
        kernel_state <= 3'd1;
        kernel_run <= 1'd0;
        kernel_datapath_offset <= 8'd0;
      end
    else
      begin
        run <= run_nxt;
        co_processing <= co_processing_nxt;
        pre_run <= pre_run_nxt;
        siw_regfile_init_siw <= init_siw_wire;
        kernel_mult <= kernel_mult_nxt;
        kernel_add <= kernel_add_nxt;
        kernel_total_i <= kernel_total_i_nxt_nxt;
        kernel_total_j <= kernel_total_j_nxt_nxt;
        kernel_cnt_j <= kernel_cnt_j_nxt;
        kernel_cnt_i <= kernel_cnt_i_nxt_nxt;
        kernel_state <= kernel_state_nxt;
        kernel_run <= kernel_run_nxt;
        kernel_datapath_offset <= kernel_datapath_offset_nxt;
      end
  end

  always @(posedge siw_regfile_clk or posedge siw_regfile_reset)
  begin
    if (siw_regfile_reset == 1'b1)
      begin
        data_0_reg <= 64'd0;
        data_1_reg <= 64'd0;
        data_2_reg <= 64'd0;
        data_3_reg <= 64'd0;
        data_4_reg <= 64'd0;
        data_5_reg <= 64'd0;
        data_6_reg <= 64'd0;
        data_7_reg <= 64'd0;
        address_rd <= 9'd0;
        address_rd_reg <= 9'd0;
        rd_fsm_state <= 2'd0;
        start_conf_reg <= 1'd0;
        load_reg_en <= 1'd0;
        load_reg_en_reg <= 1'd0;
        start_ld_conf <= 1'd0;
        load_reg_done <= 1'd0;
        configuration_0_reg <= 32'd0;
        configuration_1_reg <= 32'd0;
        configuration_2_reg <= 32'd0;
        configuration_3_reg <= 32'd0;
        configuration_4_reg <= 32'd0;
        configuration_5_reg <= 32'd0;
        configuration_6_reg <= 32'd0;
        configuration_7_reg <= 32'd0;
        configuration_8_reg <= 32'd0;
        configuration_9_reg <= 32'd0;
        configuration_10_reg <= 32'd0;
        configuration_11_reg <= 32'd0;
        configuration_12_reg <= 32'd0;
        configuration_13_reg <= 32'd0;
        configuration_14_reg <= 32'd0;
        configuration_15_reg <= 32'd0;
        configuration_16_reg <= 32'd0;
        configuration_17_reg <= 32'd0;
        configuration_18_reg <= 32'd0;
        configuration_19_reg <= 32'd0;
        configuration_20_reg <= 32'd0;
        configuration_21_reg <= 32'd0;
        configuration_22_reg <= 32'd0;
        configuration_23_reg <= 32'd0;
        configuration_24_reg <= 32'd0;
        configuration_25_reg <= 32'd0;
        configuration_26_reg <= 32'd0;
        configuration_27_reg <= 32'd0;
        configuration_28_reg <= 32'd0;
        configuration_29_reg <= 32'd0;
        configuration_30_reg <= 32'd0;
        configuration_31_reg <= 32'd0;
        configuration_32_reg <= 32'd0;
        configuration_33_reg <= 32'd0;
        configuration_34_reg <= 32'd0;
        configuration_35_reg <= 32'd0;
        configuration_36_reg <= 32'd0;
        configuration_37_reg <= 32'd0;
        configuration_38_reg <= 32'd0;
        configuration_39_reg <= 32'd0;
        configuration_40_reg <= 32'd0;
        configuration_41_reg <= 32'd0;
        configuration_42_reg <= 32'd0;
        configuration_43_reg <= 32'd0;
        configuration_44_reg <= 32'd0;
        configuration_45_reg <= 32'd0;
        configuration_46_reg <= 32'd0;
        configuration_47_reg <= 32'd0;
        configuration_48_reg <= 32'd0;
        configuration_49_reg <= 32'd0;
        configuration_50_reg <= 32'd0;
        configuration_51_reg <= 32'd0;
        configuration_52_reg <= 32'd0;
        configuration_53_reg <= 32'd0;
        configuration_54_reg <= 32'd0;
        configuration_55_reg <= 32'd0;
        configuration_56_reg <= 32'd0;
        configuration_57_reg <= 32'd0;
        configuration_58_reg <= 32'd0;
        configuration_59_reg <= 32'd0;
        configuration_60_reg <= 32'd0;
        configuration_61_reg <= 32'd0;
        configuration_62_reg <= 32'd0;
        configuration_63_reg <= 32'd0;
      end
    else
      begin
        data_0_reg <= data_0;
        data_1_reg <= data_1;
        data_2_reg <= data_2;
        data_3_reg <= data_3;
        data_4_reg <= data_4;
        data_5_reg <= data_5;
        data_6_reg <= data_6;
        data_7_reg <= data_7;
        address_rd <= nx_address_rd;
        address_rd_reg <= address_rd;
        rd_fsm_state <= rd_fsm_next_state;
        start_conf_reg <= start_conf;
        load_reg_en <= nx_load_reg_en;
        load_reg_en_reg <= load_reg_en;
        start_ld_conf <= nx_start_ld_conf;
        load_reg_done <= nx_load_reg_done;
        configuration_0_reg <= nx_configuration_0_reg;
        configuration_1_reg <= nx_configuration_1_reg;
        configuration_2_reg <= nx_configuration_2_reg;
        configuration_3_reg <= nx_configuration_3_reg;
        configuration_4_reg <= nx_configuration_4_reg;
        configuration_5_reg <= nx_configuration_5_reg;
        configuration_6_reg <= nx_configuration_6_reg;
        configuration_7_reg <= nx_configuration_7_reg;
        configuration_8_reg <= nx_configuration_8_reg;
        configuration_9_reg <= nx_configuration_9_reg;
        configuration_10_reg <= nx_configuration_10_reg;
        configuration_11_reg <= nx_configuration_11_reg;
        configuration_12_reg <= nx_configuration_12_reg;
        configuration_13_reg <= nx_configuration_13_reg;
        configuration_14_reg <= nx_configuration_14_reg;
        configuration_15_reg <= nx_configuration_15_reg;
        configuration_16_reg <= nx_configuration_16_reg;
        configuration_17_reg <= nx_configuration_17_reg;
        configuration_18_reg <= nx_configuration_18_reg;
        configuration_19_reg <= nx_configuration_19_reg;
        configuration_20_reg <= nx_configuration_20_reg;
        configuration_21_reg <= nx_configuration_21_reg;
        configuration_22_reg <= nx_configuration_22_reg;
        configuration_23_reg <= nx_configuration_23_reg;
        configuration_24_reg <= nx_configuration_24_reg;
        configuration_25_reg <= nx_configuration_25_reg;
        configuration_26_reg <= nx_configuration_26_reg;
        configuration_27_reg <= nx_configuration_27_reg;
        configuration_28_reg <= nx_configuration_28_reg;
        configuration_29_reg <= nx_configuration_29_reg;
        configuration_30_reg <= nx_configuration_30_reg;
        configuration_31_reg <= nx_configuration_31_reg;
        configuration_32_reg <= nx_configuration_32_reg;
        configuration_33_reg <= nx_configuration_33_reg;
        configuration_34_reg <= nx_configuration_34_reg;
        configuration_35_reg <= nx_configuration_35_reg;
        configuration_36_reg <= nx_configuration_36_reg;
        configuration_37_reg <= nx_configuration_37_reg;
        configuration_38_reg <= nx_configuration_38_reg;
        configuration_39_reg <= nx_configuration_39_reg;
        configuration_40_reg <= nx_configuration_40_reg;
        configuration_41_reg <= nx_configuration_41_reg;
        configuration_42_reg <= nx_configuration_42_reg;
        configuration_43_reg <= nx_configuration_43_reg;
        configuration_44_reg <= nx_configuration_44_reg;
        configuration_45_reg <= nx_configuration_45_reg;
        configuration_46_reg <= nx_configuration_46_reg;
        configuration_47_reg <= nx_configuration_47_reg;
        configuration_48_reg <= nx_configuration_48_reg;
        configuration_49_reg <= nx_configuration_49_reg;
        configuration_50_reg <= nx_configuration_50_reg;
        configuration_51_reg <= nx_configuration_51_reg;
        configuration_52_reg <= nx_configuration_52_reg;
        configuration_53_reg <= nx_configuration_53_reg;
        configuration_54_reg <= nx_configuration_54_reg;
        configuration_55_reg <= nx_configuration_55_reg;
        configuration_56_reg <= nx_configuration_56_reg;
        configuration_57_reg <= nx_configuration_57_reg;
        configuration_58_reg <= nx_configuration_58_reg;
        configuration_59_reg <= nx_configuration_59_reg;
        configuration_60_reg <= nx_configuration_60_reg;
        configuration_61_reg <= nx_configuration_61_reg;
        configuration_62_reg <= nx_configuration_62_reg;
        configuration_63_reg <= nx_configuration_63_reg;
      end
  end

  always @(posedge siw_regfile_clk or posedge siw_regfile_reset)
  begin
    if (siw_regfile_reset == 1'b1)
      begin
        configurations <= 2048'd0;
        siw_regfile_OFFSET_loop <= 12'd0;
      end
    else
      begin
        if (update_conf == 1'b1)
          begin
            configurations <= configurations_pre;
            siw_regfile_OFFSET_loop <= kernel_cnt_i;
          end
      end
  end
//------------------
// Memory Part -
//------------------
  //------------------------------------------------------//
  //					DUAL PORT RAM					  //
  //------------------------------------------------------//
tp_mem_1r1w_512_64  siw_regfile_0 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[0]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_0)
  );
tp_mem_1r1w_512_64  siw_regfile_1 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[1]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_1)
  );
tp_mem_1r1w_512_64  siw_regfile_2 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[2]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_2)
  );
tp_mem_1r1w_512_64  siw_regfile_3 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[3]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_3)
  );
tp_mem_1r1w_512_64  siw_regfile_4 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[4]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_4)
  );
tp_mem_1r1w_512_64  siw_regfile_5 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[5]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_5)
  );
tp_mem_1r1w_512_64  siw_regfile_6 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[6]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_6)
  );
tp_mem_1r1w_512_64  siw_regfile_7 (
    .wclk(siw_regfile_clk),
    .we(siw_regfile_ctr_wr_conf_mem[7]),
    .waddr(siw_regfile_ctr_add_conf_mem),
    .data_in(siw_regfile_ctr_data_conf_mem),
    .rclk(siw_regfile_clk),
    .re(1'b1),
    .raddr(nx_address_rd),
    .data_out(data_7)
  );

endmodule
