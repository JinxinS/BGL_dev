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
	graph_t g;
	//Property accessors
	vertexTypeMap vertexType	 	= boost::get(boost::vertex_futype,g);
	vertexNameMap vertexName 	 	= boost::get(boost::vertex_funame,g);
	vertexKeyNameMap vertexKeyNameMap 	= boost::get(boost::vertex_bundle,g);

	std::vector<graph_t::vertex_descriptor> svlist;
	for (int i = 0; i < 4; i++) {

		vertex_properties p("futype"+std::to_string(i),vp_name("funame"+std::to_string(i),"type.name"+std::to_string(i)));
		std::cout<<p.m_base.m_base<<std::endl;
		graph_t::vertex_descriptor  v = boost::add_vertex(p, g);
		svlist.push_back(v);
		std::cout<<v<<std::endl;
		std::cout<<get(boost::vertex_funame,g,v)<<" "<<get(boost::vertex_futype,g,v)<<" "<<get(boost::vertex_bundle,g,v)<<std::endl;
	}

	{
		vertex_properties p("funam__e",std::string("futype"));
		BOOST_LOG_TRIVIAL(debug) <<get_property_value(p, vertex_funame);
	}

	{
		std::cout<<num_vertices(g)<<std::endl;
		std::cout<<svlist.size()<<std::endl;

		graph_t::vertex_name_type key("type.name0");
		optional<graph_t::vertex_descriptor> V(find_vertex(key,g));

		graph_t::vertex_descriptor v(V.get());
		if( V ) {
			std::cout << "Found vertex:" << *V <<"with key type.name0"<< std::endl;
		} else {
			std::cout << "Vertex not found\n"<<std::endl;
		}

		graph_t::vertex_name_type key2("type.name5");
		optional<graph_t::vertex_descriptor> V2(find_vertex(key2,g));
		if( V2 ) {
			std::cout << "Found vertex:" << *V2 <<"with key type.name5"<< std::endl;
		} else {
			std::cout << "Vertex type.name5 not found\n"<<std::endl;
		}

		std::cout<<get(boost::vertex_funame,g,v)<<" "<<get(boost::vertex_futype,g,v)<<" "<<get(boost::vertex_bundle,g,v)<<std::endl;

	}

	for (int i = 0; i < 4; i++) {
		std::cout<<vertexKeyNameMap[svlist[i]]<<"|"<<vertexType[svlist[i]]<<"|"<<vertexName[svlist[i]]<<std::endl;
	}

}

