/*
 * TestGraph2.cpp
 *
 *  Created on: Sep 14, 2016
 *      Author: songjinxin
 */


#define BOOST_TEST_MODULE testgraph2
#include <boost/test/unit_test.hpp>
#include <iostream>
#include <string>
#include <boost/lexical_cast.hpp>
#include <boost/graph/adjacency_list.hpp>
using namespace boost;
using namespace boost::graph;

struct vertex_info {
	std::string name;          // uses vertex_from_name<vertex_info>
	vertex_info(const std::string &name_) : name(name_) { }
};

std::ostream& operator<<(std::ostream & os, const vertex_info &v)
{
	os << v.name;
	return os;
}

namespace boost { namespace graph {

template<typename Type>
struct vertex_name_extractor
{
	typedef Type type;
	typedef const std::string& result_type;
	result_type operator()(const Type& v) const
	{
		return v.name;
	}
};

template<>
struct internal_vertex_name<vertex_info>
{
	typedef vertex_name_extractor<vertex_info> type;
};

template<>
struct internal_vertex_constructor<vertex_info>
{
	typedef vertex_from_name<vertex_info> type;
};

} }

typedef adjacency_list< vecS, vecS, undirectedS, vertex_info> graph_t;

namespace bg=boost::graph;

BOOST_AUTO_TEST_CASE(test_case4) {

	using namespace std;
	graph_t g;

	int i;
	typedef graph_traits<graph_t>::vertex_descriptor vert;

	for(i=0;i < 10;++i)
	{
		string t_name("Vertex");
		vert V;
		t_name += lexical_cast<string>(i);
		V = add_vertex(t_name,g);
	}

	typedef graph_t::vertex_name_type name_t;
	name_t s_temp("Vertex2");

	optional<vert> V(
			find_vertex(s_temp,g));

	if( V ) {
		cout << "Found vertex:" << *V << '\n';
		//remove_vertex(*V,g);           // (1)
		//remove_vertex(vertex(*V,g),g); // (2)
		//remove_vertex(g[*V],g);        // (3)
		//remove_vertex(s_temp,g);       // (4)
	} else {
		cout << "Vertex not found\n";
	}


	graph_traits<graph_t>::vertex_iterator v_i, v_end;

	for(tie(v_i,v_end) = vertices(g); v_i != v_end; ++v_i)
	{
		cout << '\'' << g[*v_i] << '\'' << endl;;
	}
}
