/*
 * TestGraph.cpp
 *
 *  Created on: Sep 14, 2016
 *      Author: songjinxin
 */

#include <sic_types.h>
#define BOOST_TEST_MODULE testgraph
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_CASE(test_case) {
	// Graph instance
	GraphTypes::Graph g;

	//Property accessors
	GraphTypes::VertexTypeMap vertexType	 = boost::get(boost::vertex_futype,g);
	GraphTypes::VertexNameMap vertexName 	 = boost::get(boost::vertex_funame,g);
	GraphTypes::VertexIndexMap vertexIndex 	 = boost::get(boost::vertex_index,g);

	std::vector<GraphTypes::Graph::vertex_descriptor> svlist;
	for (int i = 0; i < 4; i++) {

		GraphTypes::vertex_property p("funame"+std::to_string(i),"futype"+std::to_string(i));

		GraphTypes::Graph::vertex_descriptor  v = boost::add_vertex(p, g);
		svlist.push_back(v);
		std::cout<<v<<std::endl;
		std::cout<<get(boost::vertex_funame,g,v)<<" "<<get(boost::vertex_futype,g,v)<<std::endl;
	}

	{
		GraphTypes::vertex_property p("funam__e",std::string("futype"));
		BOOST_LOG_TRIVIAL(debug) <<get_property_value(p, vertex_funame);
//		std::cout<<"total FU: "<<num_vertices(g)<<std::endl;
//		GraphTypes::vertex_property p("funame",std::string("futype"));
//		GraphTypes::Graph::vertex_descriptor  v  = *(g.vertex_by_property(get_property_value(p, vertex_bundle)));
//		std::cout<<"get vertex!"<<get(boost::vertex_funame,g,v)<<" "<<get(boost::vertex_futype,g,v)<<std::endl;
	}



	for (int i = 0; i < 4; i++) {
		std::cout<<vertexIndex[svlist[i]]<<"|"<<vertexType[svlist[i]]<<"|"<<vertexName[svlist[i]]<<"|"<<std::endl;
	}

}

