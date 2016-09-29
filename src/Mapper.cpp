/*
 * Mapper.cpp
 *
 *  Created on: Apr 28, 2015
 *      Author: songjinxin
 */

#include "Mapper.h"

Mapper::Mapper() {
	// TODO Auto-generated constructor stub

}

Mapper::~Mapper() {
	// TODO Auto-generated destructor stub
}

template <typename PropertyMapFirst,
           typename PropertyMapSecond,
           typename PropertyMapThird,
           typename PropertyMapFourth>
 struct property_map_equivalent_2 {

	property_map_equivalent_2(const PropertyMapFirst property_map1,
                            const PropertyMapSecond property_map2,
							const PropertyMapThird property_map3,
                            const PropertyMapFourth property_map4) :
      m_property_map1(property_map1),
      m_property_map2(property_map2),
	  m_property_map3(property_map3),
      m_property_map4(property_map4)  { }

    template <typename ItemFirst,
              typename ItemSecond>
    bool operator()(const ItemFirst item1, const ItemSecond item2) {
      return (get(m_property_map1, item1) == get(m_property_map2, item2))&&
    		  (get(m_property_map3, item1) == get(m_property_map4, item2));
    }

  private:
    const PropertyMapFirst  m_property_map1;
    const PropertyMapSecond m_property_map2;
    const PropertyMapThird  m_property_map3;
    const PropertyMapFourth m_property_map4;
 };

bool Mapper::map_func(graph_t& g1, graph_t& g2){

	typedef property_map<graph_t, vertex_bundle_t>::type vertex_bundle_map_t;

//	typedef property_map_equivalent<edge_iname_map_t, edge_iname_map_t> edge_in_comp_t;
//	typedef property_map_equivalent<edge_oname_map_t, edge_oname_map_t> edge_out_comp_t;
	typedef property_map_equivalent_2<edge_iname_map_t, edge_iname_map_t,edge_oname_map_t, edge_oname_map_t>	edge_comp_t;

	typedef property_map_equivalent<vertex_bundle_map_t, vertex_bundle_map_t> vertex_comp_t;
//	edge_in_comp_t edge_in_comp =
//			make_property_map_equivalent(get(edge_iname, g1), get(edge_iname, g2));
//
//	edge_out_comp_t edge_out_comp =
//			make_property_map_equivalent(get(edge_oname, g1), get(edge_oname, g2));

	edge_comp_t edge_comp = edge_comp_t(get(edge_iname, g1), get(edge_iname, g2),get(edge_oname, g1), get(edge_oname, g2));

	vertex_comp_t vertex_comp =
			make_property_map_equivalent(get(vertex_bundle, g1), get(vertex_bundle, g2));


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

	vf2_subgraph_mono_callback<graph_t,edge_comp_t,vertex_comp_t>   callback( got_hit,stop, g1, g2,edge_comp,vertex_comp);

	vf2_subgraph_mono
	(g1, g2, callback,vertex_order_by_mult(g1),
			edges_equivalent(edge_comp).vertices_equivalent(vertex_comp));

	if(!got_hit){
		std::cout<<"mapping not found! "<<std::endl;
		return false;
	}else{
		return true;
	}




#endif
}


