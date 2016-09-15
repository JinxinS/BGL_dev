/*
 * TestGraph3.cpp
 *
 *  Created on: Sep 15, 2016
 *      Author: songjinxin
 */

#define BOOST_TEST_MODULE testgraph3
#include <boost/test/unit_test.hpp>
#include <boost/config.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/filtered_graph.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <boost/graph/mcgregor_common_subgraphs.hpp>
#include <boost/graph/properties.hpp>
#include <string>
#include <iostream>
using namespace boost;
namespace boost {
enum edge_connection_t { edge_connection };
enum vertex_funame_t { vertex_funame };
enum vertex_futype_t { vertex_futype };
BOOST_INSTALL_PROPERTY(edge, connection);
BOOST_INSTALL_PROPERTY(vertex,   funame);
BOOST_INSTALL_PROPERTY(vertex,   futype);
}
namespace bg = boost::graph;

using namespace boost::graph;





namespace boost {
namespace graph {

typedef property<boost::edge_connection_t, std::string> EdgeProperties;
typedef property<boost::vertex_funame_t, std::string, property<vertex_futype_t,std::string>> VertexPorperties;

typedef adjacency_list<listS, vecS, bidirectionalS,VertexPorperties,EdgeProperties > Graph;
/// Use the City name as a key for indexing cities in a graph
template<>
struct internal_vertex_name<VertexPorperties>
{
  typedef multi_index::member<VertexPorperties, std::string, &VertexPorperties::m_value> type;
};
//
///// Allow the graph to build cities given only their names (filling in
///// the defaults for fields).
template<>
struct internal_vertex_constructor<VertexPorperties>
{
  typedef vertex_from_name<VertexPorperties> type;
};

}
} // end namespace boost::graph

BOOST_AUTO_TEST_CASE(test_case)
{
	Graph g;
	std::vector<Graph::vertex_descriptor> svlist;
	for (int i = 0; i < 4; i++) {

//		VertexPorperties vp("funame"+std::to_string(i),"futype"+std::to_string(i));
//		Graph::vertex_descriptor  v = boost::add_vertex(vp, g);
//		svlist.push_back(v);
//		std::cout<<"add vertext["<<v<<"]"<<std::endl;
//		std::cout<<"-> "<<get(boost::vertex_funame,g,v)<<" "<<get(boost::vertex_futype,g,v)<<std::endl;
	}

	//find_vertex(std::string(""),g);
}

BOOST_AUTO_TEST_CASE(test_case2){

}

