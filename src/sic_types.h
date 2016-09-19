/*
 * graph.h
 *
 *  Created on: Apr 28, 2015
 *      Author: songjinxin
 */

#ifndef SIC_TYPES_H_
#define SIC_TYPES_H_

#include <string>
#include <list>
#include <unordered_map>
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

} }





#endif /* SIC_TYPES_H_ */
