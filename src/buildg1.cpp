/*
 * buildg1.cpp
 *
 *  Created on: Apr 30, 2015
 *      Author: songjinxin
 */

#include <buildg1.h>

build_g1::build_g1() {

}

build_g1::~build_g1() {
}

void build_g1::buildgraph1(GraphTypes::Graph& g){
//	graph_traits<GraphTypes::Graph>::vertex_descriptor vit0 = add_vertex(g);
//		put(vertex_futype, g,  vit0, "fIXED128");
//		put(vertex_funame, g,  vit0, "fIXED128");
//		graph_traits<GraphTypes::Graph>::vertex_descriptor vit1 = add_vertex(g);
//		put(vertex_futype, g,  vit1, "mTWO");
//		put(vertex_funame, g,  vit1, "mTWO");
//		graph_traits<GraphTypes::Graph>::vertex_descriptor vit2 = add_vertex(g);
//		put(vertex_futype, g,  vit2, "THREE");
//		put(vertex_funame, g,  vit2, "THREE");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit3 = add_vertex(g);
		put(vertex_futype, g,  vit3, "mONE");
		put(vertex_funame, g,  vit3, "mONE");
//		graph_traits<GraphTypes::Graph>::vertex_descriptor vit4 = add_vertex(g);
//		put(vertex_futype, g,  vit4, "fIXED31");
//		put(vertex_funame, g,  vit4, "fIXED31");
//		graph_traits<GraphTypes::Graph>::vertex_descriptor vit5 = add_vertex(g);
//		put(vertex_futype, g,  vit5, "TWO");
//		put(vertex_funame, g,  vit5, "TWO");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit6 = add_vertex(g);
		put(vertex_futype, g,  vit6, "ONE");
		put(vertex_funame, g,  vit6, "ONE");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit7 = add_vertex(g);
		put(vertex_futype, g,  vit7, "ZERO");
		put(vertex_funame, g,  vit7, "ZERO");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit8 = add_vertex(g);
		put(vertex_futype, g,  vit8, "REG_12");
		put(vertex_funame, g,  vit8, "reg12_0");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit9 = add_vertex(g);
		put(vertex_futype, g,  vit9, "REG_12");
		put(vertex_funame, g,  vit9, "reg12_1");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit10 = add_vertex(g);
		put(vertex_futype, g,  vit10, "REG_12");
		put(vertex_funame, g,  vit10, "reg12_2");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit11 = add_vertex(g);
		put(vertex_futype, g,  vit11, "REG_12");
		put(vertex_funame, g,  vit11, "reg12_3");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit12 = add_vertex(g);
		put(vertex_futype, g,  vit12, "REG_12");
		put(vertex_funame, g,  vit12, "reg12_4");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit13 = add_vertex(g);
		put(vertex_futype, g,  vit13, "REG_12");
		put(vertex_funame, g,  vit13, "reg12_5");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit14 = add_vertex(g);
		put(vertex_futype, g,  vit14, "REG_32");
		put(vertex_funame, g,  vit14, "reg32_0");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit15 = add_vertex(g);
		put(vertex_futype, g,  vit15, "DLINE_1_16");
		put(vertex_funame, g,  vit15, "acc_ld");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit16 = add_vertex(g);
		put(vertex_futype, g,  vit16, "BAU_12");
		put(vertex_funame, g,  vit16, "bau_j_rd_1a");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit17 = add_vertex(g);
		put(vertex_futype, g,  vit17, "BAU_12");
		put(vertex_funame, g,  vit17, "bau_j_rd_0b");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit18 = add_vertex(g);
		put(vertex_futype, g,  vit18, "BAU_12");
		put(vertex_funame, g,  vit18, "bau_k_rd_1a");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit19 = add_vertex(g);
		put(vertex_futype, g,  vit19, "BAU_12");
		put(vertex_funame, g,  vit19, "bau_k_rd_0b");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit20 = add_vertex(g);
		put(vertex_futype, g,  vit20, "ALU_32");
		put(vertex_funame, g,  vit20, "alu_0");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit21 = add_vertex(g);
		put(vertex_futype, g,  vit21, "ALU_32");
		put(vertex_funame, g,  vit21, "alu_2");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit22 = add_vertex(g);
		put(vertex_futype, g,  vit22, "BAU_12");
		put(vertex_funame, g,  vit22, "bau_j_rd_1b");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit23 = add_vertex(g);
		put(vertex_futype, g,  vit23, "BAU_12");
		put(vertex_funame, g,  vit23, "bau_k_rd_1b");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit24 = add_vertex(g);
		put(vertex_futype, g,  vit24, "BSHIFT_32");
		put(vertex_funame, g,  vit24, "bshift_0");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit25 = add_vertex(g);
		put(vertex_futype, g,  vit25, "BAU_12");
		put(vertex_funame, g,  vit25, "bau_j_wr_2a");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit26 = add_vertex(g);
		put(vertex_futype, g,  vit26, "ALU_32");
		put(vertex_funame, g,  vit26, "alu_4");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit27 = add_vertex(g);
		put(vertex_futype, g,  vit27, "BAU_12");
		put(vertex_funame, g,  vit27, "bau_k_wr_2a");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit28 = add_vertex(g);
		put(vertex_futype, g,  vit28, "SIW_CTRL");
		put(vertex_funame, g,  vit28, "siw_ctrl");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit29 = add_vertex(g);
		put(vertex_futype, g,  vit29, "TU_4_4_12");
		put(vertex_funame, g,  vit29, "tu_rd");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit30 = add_vertex(g);
		put(vertex_futype, g,  vit30, "AAU_12");
		put(vertex_funame, g,  vit30, "aau_j_rd_1a");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit31 = add_vertex(g);
		put(vertex_futype, g,  vit31, "MUL_D4_32_64");
		put(vertex_funame, g,  vit31, "mult_1");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit32 = add_vertex(g);
		put(vertex_futype, g,  vit32, "MUX2TO1_32");
		put(vertex_funame, g,  vit32, "mux_0");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit33 = add_vertex(g);
		put(vertex_futype, g,  vit33, "TU_4_4_12");
		put(vertex_funame, g,  vit33, "tu_rd_delay");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit34 = add_vertex(g);
		put(vertex_futype, g,  vit34, "TU_4_4_12");
		put(vertex_funame, g,  vit34, "tu_wr");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit35 = add_vertex(g);
		put(vertex_futype, g,  vit35, "MEM");
		put(vertex_funame, g,  vit35, "m1");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit36 = add_vertex(g);
		put(vertex_futype, g,  vit36, "MEM");
		put(vertex_funame, g,  vit36, "m0");
		graph_traits<GraphTypes::Graph>::vertex_descriptor vit37 = add_vertex(g);
		put(vertex_futype, g,  vit37, "MEM");
		put(vertex_funame, g,  vit37, "m2");
		add_edge(vit7,vit8,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit7,vit9,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit7,vit10,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit7,vit11,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit7,vit12,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit7,vit13,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit7,vit14,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit19,vit15,GraphTypes::edge_property("f_eq_t_in"),g);
		add_edge(vit6,vit16,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit12,vit16,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit29,vit16,GraphTypes::edge_property("f_enable_J__t_en"),g);
		add_edge(vit29,vit16,GraphTypes::edge_property("f_start_J__t_ld"),g);
		add_edge(vit7,vit17,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit11,vit17,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit29,vit17,GraphTypes::edge_property("f_enable_J__t_en"),g);
		add_edge(vit29,vit17,GraphTypes::edge_property("f_start_J__t_ld"),g);
		add_edge(vit3,vit18,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit30,vit18,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit29,vit18,GraphTypes::edge_property("f_enable_K__t_en"),g);
		add_edge(vit29,vit18,GraphTypes::edge_property("f_start_K__t_ld"),g);
		add_edge(vit6,vit19,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit17,vit19,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit17,vit19,GraphTypes::edge_property("f_out_t_cmp"),g);
		add_edge(vit29,vit19,GraphTypes::edge_property("f_enable_K__t_en"),g);
		add_edge(vit29,vit19,GraphTypes::edge_property("f_start_K__t_ld"),g);
		add_edge(vit7,vit20,GraphTypes::edge_property("f_fixed_out_32_t_i0"),g);
		add_edge(vit31,vit20,GraphTypes::edge_property("f_out_t_i1"),g);
		add_edge(vit7,vit20,GraphTypes::edge_property("f_fixed_out_1_t_sub"),g);
		add_edge(vit7,vit20,GraphTypes::edge_property("f_fixed_out_1_t_shr"),g);
		add_edge(vit7,vit20,GraphTypes::edge_property("f_fixed_out_1_t_shl"),g);
		add_edge(vit15,vit20,GraphTypes::edge_property("f_out_t_ld"),g);
		add_edge(vit6,vit20,GraphTypes::edge_property("f_fixed_out_1_t_en"),g);
		add_edge(vit32,vit21,GraphTypes::edge_property("f_out_t_i0"),g);
		add_edge(vit7,vit21,GraphTypes::edge_property("f_fixed_out_32_t_i1"),g);
		add_edge(vit7,vit21,GraphTypes::edge_property("f_fixed_out_1_t_sub"),g);
		add_edge(vit7,vit21,GraphTypes::edge_property("f_fixed_out_1_t_shr"),g);
		add_edge(vit7,vit21,GraphTypes::edge_property("f_fixed_out_1_t_shl"),g);
		add_edge(vit6,vit22,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit10,vit22,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit33,vit22,GraphTypes::edge_property("f_enable_J__t_en"),g);
		add_edge(vit33,vit22,GraphTypes::edge_property("f_start_J__t_ld"),g);
		add_edge(vit7,vit23,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit22,vit23,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit33,vit23,GraphTypes::edge_property("f_enable_K__t_en"),g);
		add_edge(vit33,vit23,GraphTypes::edge_property("f_start_K__t_ld"),g);
		add_edge(vit21,vit24,GraphTypes::edge_property("f_out_t_in"),g);
		add_edge(vit14,vit24,GraphTypes::edge_property("f_out_t_shift"),g);
		add_edge(vit6,vit25,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit13,vit25,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit34,vit25,GraphTypes::edge_property("f_enable_J__t_en"),g);
		add_edge(vit34,vit25,GraphTypes::edge_property("f_start_J__t_ld"),g);
		add_edge(vit24,vit26,GraphTypes::edge_property("f_out_t_i0"),g);
		add_edge(vit35,vit26,GraphTypes::edge_property("f_data_b_t_i1"),g);
		add_edge(vit7,vit26,GraphTypes::edge_property("f_fixed_out_1_t_sub"),g);
		add_edge(vit7,vit26,GraphTypes::edge_property("f_fixed_out_1_t_shr"),g);
		add_edge(vit7,vit26,GraphTypes::edge_property("f_fixed_out_1_t_shl"),g);
		add_edge(vit7,vit27,GraphTypes::edge_property("f_fixed_out_12_t_inc"),g);
		add_edge(vit25,vit27,GraphTypes::edge_property("f_out_t_ld_val"),g);
		add_edge(vit34,vit27,GraphTypes::edge_property("f_enable_K__t_en"),g);
		add_edge(vit34,vit27,GraphTypes::edge_property("f_start_K__t_ld"),g);
		add_edge(vit34,vit28,GraphTypes::edge_property("f_done_t_done"),g);
		add_edge(vit28,vit29,GraphTypes::edge_property("f_en_t_en"),g);
		add_edge(vit9,vit29,GraphTypes::edge_property("f_out_t_limit_k"),g);
		add_edge(vit8,vit29,GraphTypes::edge_property("f_out_t_limit_j"),g);
		add_edge(vit7,vit29,GraphTypes::edge_property("f_fixed_out_12_t_limit_i"),g);
		add_edge(vit7,vit29,GraphTypes::edge_property("f_fixed_out_12_t_limit_h"),g);
		add_edge(vit9,vit30,GraphTypes::edge_property("f_out_t_i0"),g);
		add_edge(vit16,vit30,GraphTypes::edge_property("f_out_t_i1"),g);
		add_edge(vit36,vit31,GraphTypes::edge_property("f_data_b_t_i0"),g);
		add_edge(vit35,vit31,GraphTypes::edge_property("f_data_a_t_i1"),g);
		add_edge(vit7,vit31,GraphTypes::edge_property("f_fixed_out_1_t_lohi"),g);
		add_edge(vit20,vit32,GraphTypes::edge_property("f_out_t_i0"),g);
		add_edge(vit7,vit32,GraphTypes::edge_property("f_fixed_out_32_t_i1"),g);
		add_edge(vit7,vit32,GraphTypes::edge_property("f_fixed_out_1_t_s0"),g);
		add_edge(vit28,vit33,GraphTypes::edge_property("f_en_t_en"),g);
		add_edge(vit9,vit33,GraphTypes::edge_property("f_out_t_limit_k"),g);
		add_edge(vit8,vit33,GraphTypes::edge_property("f_out_t_limit_j"),g);
		add_edge(vit7,vit33,GraphTypes::edge_property("f_fixed_out_12_t_limit_i"),g);
		add_edge(vit7,vit33,GraphTypes::edge_property("f_fixed_out_12_t_limit_h"),g);
		add_edge(vit28,vit34,GraphTypes::edge_property("f_en_t_en"),g);
		add_edge(vit9,vit34,GraphTypes::edge_property("f_out_t_limit_k"),g);
		add_edge(vit8,vit34,GraphTypes::edge_property("f_out_t_limit_j"),g);
		add_edge(vit7,vit34,GraphTypes::edge_property("f_fixed_out_12_t_limit_i"),g);
		add_edge(vit7,vit34,GraphTypes::edge_property("f_fixed_out_12_t_limit_h"),g);
		add_edge(vit18,vit35,GraphTypes::edge_property("f_out_t_address_a"),g);
		add_edge(vit7,vit35,GraphTypes::edge_property("f_fixed_out_1_t_write_a"),g);
		add_edge(vit23,vit35,GraphTypes::edge_property("f_out_t_address_b"),g);
		add_edge(vit7,vit35,GraphTypes::edge_property("f_fixed_out_1_t_write_b"),g);
		add_edge(vit7,vit36,GraphTypes::edge_property("f_fixed_out_1_t_write_a"),g);
		add_edge(vit19,vit36,GraphTypes::edge_property("f_out_t_address_b"),g);
		add_edge(vit7,vit36,GraphTypes::edge_property("f_fixed_out_1_t_write_b"),g);
		add_edge(vit26,vit37,GraphTypes::edge_property("f_out_t_data_in_a"),g);
		add_edge(vit27,vit37,GraphTypes::edge_property("f_out_t_address_a"),g);
		add_edge(vit34,vit37,GraphTypes::edge_property("f_enable_K__t_write_a"),g);
		add_edge(vit7,vit37,GraphTypes::edge_property("f_fixed_out_1_t_write_b"),g);}

void build_g1::buildgraphsimple1(GraphTypes::Graph& g){

	graph_traits<GraphTypes::Graph>::vertex_descriptor vit = add_vertex(g);
	put(vertex_futype, g, vit, "ALU");
	put(vertex_funame, g, vit, "alu0");
	vit = add_vertex(g);
	put(vertex_futype, g, vit, "ALU");
	put(vertex_funame, g, vit, "alu1");
	vit = add_vertex(g);
	put(vertex_futype, g, vit, "MULT");
	put(vertex_funame, g, vit, "mult0");

	vit = add_vertex(g);
	put(vertex_futype, g, vit, "CNST");
	put(vertex_funame, g, vit, "cnst_g02");

	add_edge(0, 1, GraphTypes::edge_property("out_i0"), g);
	add_edge(0, 2, GraphTypes::edge_property("out_i1"), g);
	add_edge(1, 2, GraphTypes::edge_property("out_i0"), g);

}
