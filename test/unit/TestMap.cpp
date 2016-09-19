/*
 * TestMap.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include <gmock/gmock.h>
#include <string>
#include "sic_types.h"
#include "LogicalSideworks.h"
#include "Mapper.h"
#define BOOST_TEST_MODULE Map example
#include <boost/test/unit_test.hpp>

class Sample_graph1 : public LogicalSideworks{
public:
	Sample_graph1(){
		boost::add_vertex(vertex_properties("ALU",vp_name("alu0","ALU.alu0")), siw_graph);
		boost::add_vertex(vertex_properties("ALU",vp_name("alu1","ALU.alu1")), siw_graph);
		boost::add_vertex(vertex_properties("MULT",vp_name("mult0","MULT.mult0")), siw_graph);
		boost::add_vertex(vertex_properties("CNST",vp_name("cnst_g02","CNST.cnst_g02")), siw_graph);
		add_edge(0,1,edge_properties("out_i0"),siw_graph);
		add_edge(0,2,edge_properties("out_i1"),siw_graph);
		add_edge(1,2,edge_properties("out_i0"),siw_graph);
	}
	~Sample_graph1(){}
};

class Sample_graph2 : public LogicalSideworks{
public:
	Sample_graph2(){
		boost::add_vertex(vertex_properties("CNST",vp_name("cnst_g01","CNST.cnst_g01")), siw_graph);
		boost::add_vertex(vertex_properties("ALU",vp_name("alu_g00","ALU.alu_g00")), siw_graph);
		boost::add_vertex(vertex_properties("ALU",vp_name("alu_g01","ALU.alu_g01")), siw_graph);
		boost::add_vertex(vertex_properties("MULT",vp_name("mult_g10","MULT.mult_g10")), siw_graph);
		boost::add_vertex(vertex_properties("CNST",vp_name("cnst_g02","CNST.cnst_g02")), siw_graph);
		boost::add_vertex(vertex_properties("MULT",vp_name("mult_g01","MULT.mult_g01")), siw_graph);
		add_edge(1,2,edge_properties("out_i0"),siw_graph);
		add_edge(1,3,edge_properties("out_i1"),siw_graph);
		add_edge(2,3,edge_properties("out_i0"),siw_graph);
		add_edge(3,2,edge_properties("out_i1"),siw_graph);
		add_edge(2,4,edge_properties("out_i0"),siw_graph);
		add_edge(2,5,edge_properties("out_i1"),siw_graph);
	}
	~Sample_graph2(){}
};

BOOST_AUTO_TEST_CASE(test_case1) {
	Mapper m;
	Sample_graph1 g1;
	Sample_graph2 g2;
	print_graph(g1.getGraph());
	print_graph(g1.getGraph(),get(boost::vertex_funame,g1.getGraph()));

	//TestClass t(m,g1,g2);
	BOOST_CHECK_EQUAL(m.map_func(g1.getGraph(),g2.getGraph()),true);
}

