/*
 * graph.h
 *
 *  Created on: Apr 28, 2015
 *      Author: songjinxin
 */

#ifndef GRAPH_H_
#define GRAPH_H_

#include <fstream>
#include <iostream>
#include <string>
#include <stdio.h>
#include <boost/lexical_cast.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/filtered_graph.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <boost/graph/mcgregor_common_subgraphs.hpp>
#include <boost/property_map/shared_array_property_map.hpp>
#include <boost/graph/properties.hpp>
#include <boost/graph/vf2_sub_graph_iso.hpp>
//#define PRINT_IDX
using namespace boost;

namespace boost {
enum edge_connection_t { edge_connection };
enum vertex_funame_t { vertex_funame };
enum vertex_futype_t { vertex_futype };
BOOST_INSTALL_PROPERTY(edge, connection);
BOOST_INSTALL_PROPERTY(vertex,   funame);
BOOST_INSTALL_PROPERTY(vertex,   futype);
}

struct GraphTypes{
	typedef property<edge_connection_t, std::string> edge_property;
	typedef property<vertex_funame_t, std::string, property<vertex_futype_t,std::string> > vertex_property;
	typedef adjacency_list<listS, vecS, bidirectionalS,vertex_property,edge_property > Graph;
	typedef property_map<GraphTypes::Graph, vertex_futype_t>::type VertexTypeMap;
};

#endif /* GRAPH_H_ */
