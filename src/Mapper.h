/*
 * Mapper.h
 *
 *  Created on: Apr 28, 2015
 *      Author: songjinxin
 */

#ifndef MAPPER_H_
#define MAPPER_H_
#include <assert.h>     /* assert */
#include "sic_types.h"

class Mapper {

public:
	bool map_func(GraphTypes::Graph& g1,GraphTypes:: Graph& g2);
	Mapper();
	virtual ~Mapper();


private:
	template <typename Graph,typename EdgeEquivalencePredicate,typename VertexEquivalencePredicate>
	struct vf2_subgraph_mono_callback {
		vf2_subgraph_mono_callback(bool& gothit,
				bool stop_,const
				Graph& graph1,
				const Graph& graph2,
				const EdgeEquivalencePredicate& e,
				const VertexEquivalencePredicate& v):
					got_hit(gothit),
					stop(!stop_),
					m_graph1(graph1),
					m_graph2(graph2),
					edge_comp(e),
					vertex_comp(v){	 }

		template<typename Map1To2, typename Map2To1>
		bool operator()(Map1To2 map1to2, Map2To1 map2to1) {
			got_hit = true;

			std::cout<<"find mapping:"<<std::endl;
			BGL_FORALL_VERTICES_T(v, m_graph1, Graph)
			std::cout << '(' << get(vertex_funame_t(), m_graph1, v) << ", "
			<< get(vertex_funame_t(), m_graph2, get(map1to2, v)) << ") ";
			std::cout<<std::endl;

			//validate mapping
			bool verify = verify_vf2_subgraph_iso(m_graph1, m_graph2,  map1to2 ,edge_comp ,vertex_comp);
			assert(verify);

			return stop;
		}
	private:
		bool &got_hit;
		bool stop;
		const Graph& m_graph1;
		const Graph& m_graph2;
		const EdgeEquivalencePredicate& edge_comp;
		const VertexEquivalencePredicate& vertex_comp;

	};

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

			// Print out correspondences between vertices
			BGL_FORALL_VERTICES_T(vertex1, m_graph1, Graph) {

				// Skip unmapped vertices
				if (get(correspondence_map_1_to_2, vertex1) != graph_traits<Graph>::null_vertex()) {
					std::cout << vertex1 << " <-> " << get(correspondence_map_1_to_2, vertex1) << std::endl;
				}

			}

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
