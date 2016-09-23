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
#include "FUInstance.h"
namespace pt = boost::property_tree;
namespace logging = boost::log;

using namespace boost;
using namespace boost::filesystem;
using namespace boost::graph;

namespace boost {
enum edge_connection_t { edge_connection };
BOOST_INSTALL_PROPERTY(edge, connection);

namespace graph {

typedef property<edge_connection_t, std::string> edge_properties;

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

/// FUInstance structure to be attached to each vertex
typedef adjacency_list<listS, vecS, bidirectionalS,vertex_properties,edge_properties> graph_t;

typedef property_map<graph_t, vertex_name_t>::type vNameMap;
typedef property_map<graph_t, vertex_bundle_t>::type vFuMap;
typedef property_map<graph_t, edge_connection_t>::type edge_connection_map_t;

} }




#endif /* SIC_TYPES_H_ */
