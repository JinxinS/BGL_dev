/*
 * TestMap.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include <gmock/gmock.h>
#include <sic_types.h>
#include <string>
#include "LogicalSideworks.h"
#include "Mapper.h"
#define BOOST_TEST_MODULE Mock example
#include <boost/test/unit_test.hpp>

class Sample_graph1 : public LogicalSideworks{
public:
	inline GraphTypes::Graph& getGraph(){return siw_graph;}
	Sample_graph1(){
		addLogicalFU("ALU" ,"alu0");
		addLogicalFU("ALU" ,"alu1");
		addLogicalFU("MULT","mult0");
		addLogicalFU("CNST","cnst_g02");
		addConection(0, 1, "out_i0");
		addConection(0, 2, "out_i1");
		addConection(1, 2,"out_i0");
	}
	~Sample_graph1(){}
};

class Sample_graph2 : public LogicalSideworks{
public:
	inline GraphTypes::Graph& getGraph(){return siw_graph;}
	Sample_graph2(){
		addLogicalFU("CNST" ,"cnst_g01");
		addLogicalFU("ALU"  ,"alu_g00");
		addLogicalFU("ALU"  ,"alu_g01");
		addLogicalFU("MULT" ,"mult_g10");
		addLogicalFU("CNST" ,"cnst_g02");
		addLogicalFU("MULT" ,"mult_g01");

		addConection(1, 2, "out_i0");
		addConection(1, 3, "out_i1");
		addConection(2, 3, "out_i0");
		addConection(3, 2, "out_i1");
		addConection(2, 4, "out_i0");
		addConection(2, 5, "out_i1");

	}
	~Sample_graph2(){}
};

BOOST_AUTO_TEST_CASE(test_case1) {
//	print_graph(graph_simple1);
//
//	print_graph(graph_simple1,get(vertex_funame,graph_simple1));
	//using ::testing::Return;
	Mapper m;
	Sample_graph1 g1;
	Sample_graph2 g2;

	//TestClass t(m,g1,g2);
	BOOST_CHECK_EQUAL(m.map_func(g1.getGraph(),g2.getGraph()),true);
}

