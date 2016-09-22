/*
 * TestGraph.cpp
 *
 *  Created on: Sep 14, 2016
 *      Author: songjinxin
 */

#define BOOST_TEST_MODULE testgraph
#include <boost/test/unit_test.hpp>
#include <boost/foreach.hpp>
#include <boost/filesystem.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/filtered_graph.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <boost/graph/mcgregor_common_subgraphs.hpp>
#include <boost/graph/properties.hpp>
#include <boost/graph/vf2_sub_graph_iso.hpp>
#include <boost/log/core/core.hpp>
#include <boost/log/trivial.hpp>
#include <boost/log/expressions.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <boost/property_map/shared_array_property_map.hpp>
#include <boost/tokenizer.hpp>
#include "FUInstance.h"
namespace pt = boost::property_tree;
namespace logging = boost::log;

using namespace boost;
using namespace boost::filesystem;
using namespace boost::graph;

namespace boost {
enum edge_connection_t { edge_connection };
enum vertex_funame_t { vertex_funame };
enum vertex_futype_t { vertex_futype };
BOOST_INSTALL_PROPERTY(edge, connection);
BOOST_INSTALL_PROPERTY(vertex,   funame);
BOOST_INSTALL_PROPERTY(vertex,   futype);

namespace graph {
typedef property<edge_connection_t, std::string> edge_properties;

typedef property<vertex_funame_t,std::string,std::string> vp_name;
typedef property<vertex_futype_t, std::string,vp_name>    vp_type;
typedef property<vertex_futype_t, std::string,vp_name> vertex_properties;


template<typename Type>
struct vertex_name_extractor
{
	typedef Type type;
	typedef const Type& result_type;
	result_type operator()(const Type& v) const
	{
		return 	v;
	}
};

template<>
struct internal_vertex_name<vertex_properties>
{
	typedef vertex_name_extractor<std::string> type;
};

template<>
struct internal_vertex_constructor<vertex_properties>
{
	typedef vertex_from_name<vertex_properties> type;
};

typedef adjacency_list<listS, vecS, bidirectionalS,vertex_properties,edge_properties > graph_t;
typedef property_map<graph_t, vertex_futype_t>::type vertexTypeMap;
typedef property_map<graph_t, vertex_funame_t>::type vertexNameMap;
typedef property_map<graph_t, vertex_bundle_t>::type vertexKeyNameMap;
}}

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
		add_edge(3,5,edge_properties("edge0_1"),g);

		std::cout<<num_vertices(g)<<std::endl;
		std::cout<<svlist.size()<<std::endl;
		print_graph(g);

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

