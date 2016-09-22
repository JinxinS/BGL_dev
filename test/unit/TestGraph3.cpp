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

using namespace boost;
using namespace boost::graph;


typedef property<boost::edge_connection_t, std::string> EdgeProperties;
typedef property<vertex_index1_t, int ,property<boost::vertex_funame_t, std::string, property<vertex_futype_t,std::string,std::string>>> VertexPorperties;

namespace boost { namespace graph {

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
struct internal_vertex_name<VertexPorperties>
{
	typedef vertex_name_extractor<std::string> type;
};

template<>
struct internal_vertex_constructor<VertexPorperties>
{
	typedef vertex_from_name<VertexPorperties> type;
};

} }

typedef adjacency_list<listS, vecS, bidirectionalS,VertexPorperties,EdgeProperties > graph_;
typedef graph_traits<graph_>::vertex_descriptor Vertex;

BOOST_AUTO_TEST_CASE(test_case)
{

	graph_ g;
	std::vector<graph_::vertex_descriptor> svlist;
	for (int i = 0; i < 5; i++) {
		std::string bundle = "hashtag" + std::to_string(i);
		if(i > 3) bundle = "hashtag3";

		VertexPorperties vp;
		vp.m_value = (i);
		vp.m_base= property<boost::vertex_funame_t, std::string, property<vertex_futype_t,std::string,std::string>>
				("funame"+std::to_string(i),property<vertex_futype_t,std::string,std::string> ("futype"+std::to_string(i),bundle));

		Vertex v = boost::add_vertex(vp,g);
//		put(vertex_funame, g,  v, "futype"+std::to_string(i));
//		put(vertex_futype, g,  v, "futname"+std::to_string(i));
//		put(vertex_bundle, g,  v, "hashtag0"+std::to_string(i));
		svlist.push_back(v);
		std::cout<<"add vertext["<<v<<"]"<<std::endl;
		std::cout<<"-> "<<get(boost::vertex_funame,g,v)<<" "<<get(boost::vertex_futype,g,v)<<" "<<get(boost::vertex_bundle,g,v)<<" "<<get(boost::vertex_index1,g,v)<<std::endl;
	}
	add_edge(0,1,EdgeProperties("edge0_1"),g);
	add_edge(3,5,EdgeProperties("edge0_1"),g);

	std::cout<<num_vertices(g)<<std::endl;
	std::cout<<svlist.size()<<std::endl;

	graph_::vertex_name_type s_temp("hashtag3");

	optional<graph_::vertex_descriptor> V(find_vertex(s_temp,g));

	if( V ) {
		std::cout << "Found vertex:" << *V << std::endl;
		//remove_vertex(*V,g);           // (1)
		//remove_vertex(vertex(*V,g),g); // (2)
		//remove_vertex(g[*V],g);        // (3)
		//remove_vertex(s_temp,g);       // (4)
	} else {
		std::cout << "Vertex not found\n"<<std::endl;
	}
}

BOOST_AUTO_TEST_CASE(test_case2){

}

