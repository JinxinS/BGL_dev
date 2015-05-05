/*
 * Mapper.cpp
 *
 *  Created on: Apr 28, 2015
 *      Author: songjinxin
 */

#include <Mapper.h>

Mapper::Mapper() {
	// TODO Auto-generated constructor stub

}

Mapper::~Mapper() {
	// TODO Auto-generated destructor stub
}


void Mapper::map_func(GraphTypes::Graph& g1, GraphTypes::Graph& g2){
	typedef property_map<GraphTypes::Graph, edge_connection_t>::type edge_connection_map_t;
	typedef property_map<GraphTypes::Graph, vertex_futype_t>::type vertex_futype_map_t;

	typedef property_map_equivalent<edge_connection_map_t, edge_connection_map_t> edge_comp_t;
	typedef property_map_equivalent<vertex_futype_map_t, vertex_futype_map_t> vertex_comp_t;

	edge_comp_t edge_comp =
			make_property_map_equivalent(get(edge_connection, g1), get(edge_connection, g2));

	vertex_comp_t vertex_comp =
			make_property_map_equivalent(get(vertex_futype, g1), get(vertex_futype, g2));


#if 0	// Maximum, unique subgraphs
	map_callback<GraphTypes::Graph> user_callback(g1,g2);
	std::cout << "mcgregor_common_subgraphs_maximum_unique:" << std::endl;
	mcgregor_common_subgraphs_maximum_unique
	(g1, g2, true, user_callback,
			vertices_equivalent(vertex_comp).edges_equivalent(edge_comp)
	);
#else 	// vf2_subgraph_mono
	std::cout << "vf2_subgraph_mono:" << std::endl;
	// Print out all subgraph isomorphism mappings between graph1 and graph2.
	// Vertices and edges are assumed to be always equivalent.

	bool got_hit = false;
	bool stop = true; 	//stop at first occurance

	vf2_subgraph_mono_callback<GraphTypes::Graph,edge_comp_t,vertex_comp_t>   callback( got_hit,stop, g1, g2,edge_comp,vertex_comp);

	vf2_subgraph_mono
	(g1, g2, callback,vertex_order_by_mult(g1),
			edges_equivalent(edge_comp).vertices_equivalent(vertex_comp));

	if(!got_hit){
		std::cout<<"mapping not found! "<<std::endl;
	}




#endif
}


