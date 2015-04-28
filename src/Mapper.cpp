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
	map_callback<GraphTypes::Graph> user_callback(g1,g2);
	typedef property_map<GraphTypes::Graph, edge_connection_t>::type edge_connection_map_t;
	typedef property_map_equivalent<edge_connection_map_t, edge_connection_map_t> edge_comp_t;
	edge_comp_t edge_comp =
			make_property_map_equivalent(get(edge_connection, g1), get(edge_connection, g2));

	VertexTypeMap vtype_map_g1 = get(vertex_futype, g1);
	VertexTypeMap vtype_map_g2 = get(vertex_futype, g2);

	// Maximum, unique subgraphs
	std::cout << "mcgregor_common_subgraphs_maximum_unique:" << std::endl;
	mcgregor_common_subgraphs_maximum_unique
	(g1, g2, true, user_callback,
			edges_equivalent(edge_comp).vertices_equivalent(make_property_map_equivalent(vtype_map_g1, vtype_map_g2))
	);


}
