/*
 * SampleGraph.h
 *
 *  Created on: Sep 20, 2016
 *      Author: songjinxin
 */

#ifndef UNIT_SAMPLEGRAPH_H_
#define UNIT_SAMPLEGRAPH_H_
#include "sic_types.h"
#include "LogicalSideworks.h"
#include "FUInstance.h"
#include "Mapper.h"

class Sample_graph1 : public LogicalSideworks{
public:
	Sample_graph1(){
		boost::add_vertex(vertex_properties("ALU.alu0",FUInstance("alu0","ALU")), siw_graph);
		boost::add_vertex(vertex_properties("ALU.alu1",FUInstance("alu1","ALU")), siw_graph);
		boost::add_vertex(vertex_properties("MULT.mult0",FUInstance("mult0","MULT")), siw_graph);
		boost::add_vertex(vertex_properties("CNST.cnst_g02",FUInstance("cnst_g02","CNST")), siw_graph);
		add_edge(0,1,edge_properties("out_i0"),siw_graph);
		add_edge(0,1,edge_properties("out_i1"),siw_graph);
		add_edge(0,2,edge_properties("out_i1"),siw_graph);
		add_edge(1,2,edge_properties("out_i0"),siw_graph);
	}
	~Sample_graph1(){}
};

class Sample_graph2 : public LogicalSideworks{
public:
	Sample_graph2(){
		boost::add_vertex(vertex_properties("CNST.cnst_g01",FUInstance("cnst_g01","CNST")), siw_graph);
		boost::add_vertex(vertex_properties("ALU.alu_g00",FUInstance("alu_g00","ALU")), siw_graph);
		boost::add_vertex(vertex_properties("ALU.alu_g01",FUInstance("alu_g01","ALU")), siw_graph);
		boost::add_vertex(vertex_properties("MULT.mult_g10",FUInstance("mult_g10","MULT")), siw_graph);
		boost::add_vertex(vertex_properties("CNST.cnst_g02",FUInstance("cnst_g02","CNST")), siw_graph);
		boost::add_vertex(vertex_properties("MULT.mult_g01",FUInstance("mult_g01","MULT")), siw_graph);
		add_edge(1,2,edge_properties("out_i0"),siw_graph);
		add_edge(1,2,edge_properties("out_i1"),siw_graph);
		add_edge(1,3,edge_properties("out_i1"),siw_graph);
		add_edge(2,3,edge_properties("out_i0"),siw_graph);
		add_edge(3,2,edge_properties("out_i1"),siw_graph);
		add_edge(2,4,edge_properties("out_i0"),siw_graph);
		add_edge(2,5,edge_properties("out_i1"),siw_graph);
	}
	~Sample_graph2(){}
};


#endif /* UNIT_SAMPLEGRAPH_H_ */
