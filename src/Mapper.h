/*
 * Mapper.h
 *
 *  Created on: Apr 28, 2015
 *      Author: songjinxin
 */

#ifndef MAPPER_H_
#define MAPPER_H_
#include "graph.h"
class Mapper {

public:
	void map_func(GraphTypes::Graph& g1,GraphTypes:: Graph& g2);
	Mapper();
	virtual ~Mapper();


private:
	template <typename Graph>
	struct map_callback {
		typedef typename graph_traits<Graph>::vertices_size_type VertexSizeFirst;
		map_callback(const Graph& graph1,const Graph& graph2) :
			m_graph1(graph1),
			m_graph2(graph2){ }

		template <typename CorrespondenceMapFirstToSecond, typename CorrespondenceMapSecondToFirst>
		bool operator()(CorrespondenceMapFirstToSecond correspondence_map_1_to_2,
				CorrespondenceMapSecondToFirst correspondence_map_2_to_1,
				VertexSizeFirst subgraph_size) {

			typedef typename property_map<Graph, vertex_index_t>::type VertexIndexMap;
			typedef shared_array_property_map<bool, VertexIndexMap> MembershipMap;

			// Fill membership map for first graph
			MembershipMap membership_map1(num_vertices(m_graph1), get(vertex_index, m_graph1));
			fill_membership_map<Graph>(m_graph1, correspondence_map_1_to_2, membership_map1);

			// Fill membership map for second graph
			MembershipMap membership_map2(num_vertices(m_graph2), get(vertex_index, m_graph2));
			fill_membership_map<Graph>(m_graph2, correspondence_map_2_to_1, membership_map2);

			// Generate filtered graphs using membership map
			typedef typename membership_filtered_graph_traits<Graph, MembershipMap>::graph_type
					MembershipFilteredGraph;

			MembershipFilteredGraph subgraph1 = make_membership_filtered_graph(m_graph1, membership_map1);

			MembershipFilteredGraph subgraph2 = make_membership_filtered_graph(m_graph2, membership_map2);

			// Print the graph out to the console
			std::cout << "Found common subgraph (size " << subgraph_size << ")" <<"target graph size is ("<<
					num_vertices(m_graph1)<<")"<< std::endl;

			print_mapping(subgraph1,subgraph2);
			std::cout << std::endl;

			// Explore the entire space
			return (true);
		}

	private:
		const Graph& m_graph1;
		const Graph& m_graph2;
		VertexSizeFirst m_max_subgraph_size;

		template <class IncidenceGraph>
		void print_mapping(const IncidenceGraph& G1,const IncidenceGraph& G2){
			typename property_map<IncidenceGraph, vertex_funame_t>::const_type
			fu_name1 = get(vertex_funame,G1);//
			typename property_map<IncidenceGraph, vertex_funame_t>::const_type
			fu_name2 = get(vertex_funame,G2);

#if 1
			print_graph(G1);
			std::cout<<"***********************"<<std::endl;
			print_graph(G2);

#else
			print_graph(G1,fu_name1);
			std::cout<<"***********************"<<std::endl;
			print_graph(G2,fu_name2);
			std::cout<<"***********************"<<std::endl;
#endif
			std::cout<<"mapping:"<<std::endl;
			typedef typename boost::graph_traits<IncidenceGraph>::vertex_iterator Viter;
			Viter ui, uiend, vi,viend;
			boost::tie(ui, uiend) = vertices(G1);
			boost::tie(vi, viend) = vertices(G2);
			assert(std::distance(ui, uiend)== std::distance(vi, viend));
			for (; ui != uiend, vi!= viend; ++ui,++vi) {
				std::cout << fu_name1[*ui] <<"->"<<fu_name2[*vi]<< "\t";
			}
		}
	};
};


#endif /* MAPPER_H_ */
