/*
 * Testcommonsubgraphs.cpp
 *
 *  Created on: Sep 20, 2016
 *      Author: songjinxin
 */
#define BOOST_TEST_MODULE testgraph
#include <boost/test/unit_test.hpp>
#include "sic_types.h"
#include "SideParser.h"
#include "FunctionalUnitLibrary.h"
#include "LogicalSideworks.h"
#include "SampleGraph.h"
template <typename EdgeWeightMap>
struct positive_edge_weight {
  positive_edge_weight() { }
  positive_edge_weight(EdgeWeightMap weight,std::vector<std::string> edgnames)
  :m_weight(weight),
   edgnames(edgnames){ }
  template <typename Edge>
  bool operator()(const Edge& e) const {
	bool ret = (std::find(edgnames.begin(),edgnames.end(),get(m_weight, e))!= edgnames.end());
	std::cout<<get(m_weight, e)<<":"<<ret<<std::endl;
    return ret;
  }
  EdgeWeightMap m_weight;
  std::vector<std::string> edgnames;
};
template <typename Graph>
struct example_callback {

	typedef typename graph_traits<Graph>::vertices_size_type VertexSizeFirst;

	example_callback(const Graph& graph1,const Graph& graph2) :
		m_graph1(graph1),
		m_graph2(graph2){ }

	template <typename CorrespondenceMapFirstToSecond,
	typename CorrespondenceMapSecondToFirst>
	bool operator()(CorrespondenceMapFirstToSecond correspondence_map_1_to_2,
			CorrespondenceMapSecondToFirst correspondence_map_2_to_1,
			VertexSizeFirst subgraph_size) {

		// Fill membership map for first graph
		typedef typename property_map<Graph, vertex_index_t>::type VertexIndexMap;
		typedef typename property_map<Graph, edge_connection_t>::type EdgeWeightMap;

		typedef shared_array_property_map<bool, VertexIndexMap> MembershipMap;

		MembershipMap membership_map1(num_vertices(m_graph1),get(vertex_index, m_graph1));
		MembershipMap membership_map2(num_vertices(m_graph2),get(vertex_index, m_graph2));


		fill_membership_map<Graph>(m_graph1, correspondence_map_1_to_2, membership_map1);
		fill_membership_map<Graph>(m_graph2, correspondence_map_2_to_1, membership_map2);


		// Generate filtered graphs using membership map
		typedef typename membership_filtered_graph_traits<Graph, MembershipMap>::graph_type
				MembershipFilteredGraph;

		MembershipFilteredGraph subgraph1 = make_membership_filtered_graph(m_graph1, membership_map1);
		MembershipFilteredGraph subgraph2 = make_membership_filtered_graph(m_graph2, membership_map2);


		EdgeWeightMap emap = get(boost::edge_connection, subgraph1);
		EdgeWeightMap emap2 = get(boost::edge_connection, subgraph2);

		std::vector<std::string> edgenames;
//		typename boost::graph_traits<MembershipFilteredGraph>::vertex_iterator v, v_end;
		typename boost::graph_traits<Graph>::out_edge_iterator e1, e1_end,e2, e2_end;
		typename boost::graph_traits<Graph>::vertex_descriptor t,cs,ct;

//		for (boost::tie(v, v_end) = vertices(subgraph2); v != v_end; ++v)
//			for (boost::tie(e, e_end) = out_edges(*v, subgraph2); e != e_end; ++e){
//				edgenames.push_back(emap2[*e]);
//				std::cout<<"push"<<emap2[*e]<<std::endl;
//			}

		BGL_FORALL_VERTICES_T(s, m_graph1, Graph) {
			cs = get(correspondence_map_1_to_2, s);
			if (cs != graph_traits<Graph>::null_vertex()) {
				for (boost::tie(e1, e1_end) = out_edges(s, m_graph1); e1 != e1_end; ++e1){
					t = target(*e1,m_graph1);
					std::cout<<"evaluating  "<<s <<"."<< emap[*e1]<<"."<<t<<std::endl;
					for (boost::tie(e2, e2_end) = out_edges(cs, m_graph2); e2 != e2_end; ++e2){
						ct =  target(*e2,m_graph2);
						if(ct == get(correspondence_map_1_to_2, t)){
							std::cout<<"with  				"<<cs <<"."<< emap[*e2]<<"."<<ct<<std::endl;
						}
					}
				}
			}
		}



//		positive_edge_weight<EdgeWeightMap> filter(get(edge_connection, subgraph1),edgenames);
//		filtered_graph<MembershipFilteredGraph, positive_edge_weight<EdgeWeightMap> > fg(subgraph1,filter);

		// Print the graph out to the console
		std::cout << "Found common subgraph (size " << subgraph_size << ")" << std::endl;
		print_graph(subgraph1,get(boost::vertex_bundle,subgraph1));
		std::cout<<"subgraph1 edges:"<<std::endl;
		print_edges2(subgraph1,get(boost::vertex_bundle,subgraph1),get(boost::edge_connection,subgraph1));
		std::cout<<"subgraph2 edges:"<<std::endl;
		print_edges2(subgraph2,get(boost::vertex_bundle,subgraph2),get(boost::edge_connection,subgraph2));
//		std::cout<<"filtered edges:"<<std::endl;
//		print_graph(fg,get(boost::vertex_funame,fg));
//		print_edges2(fg,get(boost::vertex_funame,fg),get(boost::edge_connection,fg));
//		std::cout << std::endl;

		// Print out correspondences between vertices
		BGL_FORALL_VERTICES_T(vertex1, m_graph1, Graph) {
			// Skip unmapped vertices
			if (get(correspondence_map_1_to_2, vertex1) != graph_traits<Graph>::null_vertex()) {
				std::cout << vertex1 << " <-> " << get(correspondence_map_1_to_2, vertex1) << std::endl;
			}
		}
		// Explore the entire space
		return (true);
	}

private:
	const Graph& m_graph1;
	const Graph& m_graph2;
	VertexSizeFirst m_max_subgraph_size;
};


BOOST_AUTO_TEST_CASE(test_case) {
	logging::core::get()->set_filter
			(
					logging::trivial::severity >= logging::trivial::fatal
			);

	//	FunctionalUnitLibrary fulib ;
	//	directory_iterator it("/coreworks/sideconf-dev/sideFU/release/xml/"), eod;
	//	BOOST_FOREACH(path const &x, std::make_pair(it, eod))
	//		if(x.extension() == ".xml")SideParser::parseFunctionalUnitLibrary(&fulib,x.string());
	//    LogicalSideworks l1,l2;
	//	SideParser::parseLogicalSideWorks(&fulib,&l1,"test/res/example.xml");
	//	SideParser::parseLogicalSideWorks(&fulib,&l2,"test/res/example2.xml");
	//


	Sample_graph1 g1;
	Sample_graph2 g2;
	vFuMap vname_map_simple1 = get(boost::vertex_bundle, g1.getGraph());
	vFuMap vname_map_simple2 = get(boost::vertex_bundle, g2.getGraph());
	example_callback<graph_t> user_callback(g1.getGraph(),g2.getGraph());
	//    std::cout << "mcgregor_common_subgraphs:" << std::endl;
	//     mcgregor_common_subgraphs
	//       (l1.getGraph(), l2.getGraph(), true, user_callback,
	//        vertices_equivalent(make_property_map_equivalent(vname_map_simple1, vname_map_simple2)));
	//     std::cout << std::endl;

	// Maximum, unique subgraphs
	edge_connection_map_t emap = get(boost::edge_connection, g1.getGraph());
	edge_connection_map_t emap2 = get(boost::edge_connection, g2.getGraph());

	  boost::graph_traits<graph_t>::vertex_iterator v, v_end;
	  boost::graph_traits<graph_t>::out_edge_iterator e, e_end;
	  for (boost::tie(v, v_end) = vertices(g1.getGraph()); v != v_end; ++v)
	    for (boost::tie(e, e_end) = out_edges(*v, g1.getGraph()); e != e_end; ++e){
	    	std::cout<<emap[*e]<<std::endl;
	    }

	  for (boost::tie(v, v_end) = vertices(g2.getGraph()); v != v_end; ++v)
	    for (boost::tie(e, e_end) = out_edges(*v, g2.getGraph()); e != e_end; ++e)
	    	std::cout<<emap2[*e]<<std::endl;


	 // make_property_map_equivalent(get(boost::edge_connection, g1.getGraph()), get(boost::edge_connection, g2.getGraph()));

	std::cout << "mcgregor_common_subgraphs_maximum_unique:" << std::endl;
	mcgregor_common_subgraphs_maximum_unique
	(g1.getGraph(), g2.getGraph(), true, user_callback,
			edges_equivalent(make_property_map_equivalent(get(boost::edge_connection, g1.getGraph()), get(boost::edge_connection, g2.getGraph()))).
			vertices_equivalent(make_property_map_equivalent(vname_map_simple1, vname_map_simple2)));
}


