/*
 * TestGraphStruct.cpp
 *
 *  Created on: Sep 21, 2016
 *      Author: songjinxin
 */


#define BOOST_TEST_MODULE testgraph1
#include <boost/test/unit_test.hpp>
#include <boost/config.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <string>
#include <iostream>
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
using namespace boost;
using namespace boost;
using namespace boost::filesystem;
using namespace boost::graph;
namespace boost {
enum edge_connection_t { edge_connection };
BOOST_INSTALL_PROPERTY(edge, connection);
}
/// City structure to be attached to each vertex
struct FUInstance {
	FUInstance():name(""),type("no_type") {}

	FUInstance(const std::string& name, const std::string& type = "no_type")
	: name(name), type(type) { }

	std::string name;
	std::string type;
};

namespace boost {
namespace graph {
typedef property<vertex_name_t,std::string,FUInstance> vertex_properties;
template<typename Type>
struct vertex_name_extractor
{
	typedef Type type;
	typedef const std::string& result_type;
	result_type operator()(const Type& v) const
	{
		return 	v.name;
	}
};

template<typename VertexProperty>
struct vertex_from_name_constructor
{
private:
	typedef typename internal_vertex_name<VertexProperty>::type extract_name_type;

	typedef typename remove_cv<
			typename remove_reference<
			typename extract_name_type::result_type>::type>::type
			vertex_name_type;

public:
	typedef vertex_name_type argument_type;
	typedef VertexProperty result_type;

	VertexProperty operator()(const vertex_name_type& name)
	{
		return VertexProperty("",FUInstance(name));
	}
};

template<>
struct internal_vertex_name<vertex_properties>
{
	typedef vertex_name_extractor<FUInstance> type;
};

template<>
struct internal_vertex_constructor<vertex_properties>
{
	typedef vertex_from_name_constructor<vertex_properties> type;
};

}
} // end namespace boost::graph

typedef adjacency_list<vecS, vecS, directedS, vertex_properties> FUmap;
typedef graph_traits<FUmap>::vertex_descriptor Vertex;

BOOST_AUTO_TEST_CASE(test_case)
{
	FUmap map;
	Vertex adder = add_vertex(vertex_properties("a",FUInstance("adder0", "F_ADD")), map);
	Vertex mux = add_vertex(vertex_properties("b",FUInstance("mux1", "F_MUX")), map);
	Vertex mult = add_vertex(vertex_properties("c",FUInstance("mult0", "F_MULT")), map);

	BOOST_CHECK(add_vertex(vertex_properties("a",FUInstance("adder0", "F_ADD")), map) == adder);
	BOOST_CHECK(add_vertex(vertex_properties("b",FUInstance("adder0", "F_ADD")), map) == adder);
	BOOST_CHECK(add_vertex(vertex_properties("b",FUInstance("adder0", "F_MULT")), map) == adder);

	BGL_FORALL_VERTICES(fu, map, FUmap)
	std::cout << map[fu].name << ", type " << map[fu].type << std::endl;
	//
	BOOST_CHECK(*find_vertex("adder0", map) == adder);
	BOOST_CHECK(*find_vertex("mux1", map) == mux);
	BOOST_CHECK(*find_vertex("mult0", map) == mult);
	// BOOST_CHECK(*find_vertex("blabla", map)==optional<Vertex>());
	add_edge(adder, "mux1", map);
	add_edge("mux1", mux, map);
	add_edge("mux1", "clip0", map);


	BGL_FORALL_VERTICES(city, map, FUmap)
	std::cout << map[city].name << ", type " << map[city].type
	<< std::endl;


	BGL_FORALL_EDGES(road, map, FUmap)
	std::cout << map[source(road, map)].name << " -> "
	<< map[target(road, map)].name << std::endl;

	BOOST_CHECK(map[*find_vertex("clip0", map)].type == "no_type");

	map[*find_vertex("clip0", map)].type = "F_CLIP";
	if( find_vertex("clip5", map) ) {
		std::cout << "Found vertex:" << *find_vertex("clip5", map) << std::endl;
	} else {
		std::cout << "Vertex not found\n"<<std::endl;
	}

	BGL_FORALL_VERTICES(city, map, FUmap)
	std::cout << map[city].name << ", type " << map[city].type
	<< std::endl;
}


