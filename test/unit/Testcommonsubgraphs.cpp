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

template <class EdgeListGraph, class VertexName, class EdgeOName,class EdgeIName>
void print_edges3(const EdgeListGraph& G, VertexName vname, EdgeOName eoname,EdgeIName einame)
{
	typename graph_traits<EdgeListGraph>::edge_iterator ei, ei_end;
	for (boost::tie(ei, ei_end) = edges(G); ei != ei_end; ++ei)
		std::cout << get(eoname, *ei)<<"-"<<  get(einame, *ei)<< "(" << get(vname, source(*ei, G))
		<< "," << get(vname, target(*ei, G)) << ") ";
	std::cout << std::endl;
}

template <typename Graph,typename CORESMAP>
struct edge_filter {

	typedef typename property_map<Graph, edge_iname_t>::type edgeinameMap;
	typedef typename property_map<Graph, edge_oname_t>::type edgeonameMap;
	edge_filter(){}

	edge_filter(Graph* m_graph1,Graph* m_graph2,CORESMAP correspondence_map_1_to_2)
	:
		m_graph2(m_graph2),
		correspondence_map_1_to_2(correspondence_map_1_to_2),
		eimap(get(edge_iname, *m_graph1)),
		eimap2(get(edge_iname, *m_graph2)),
		eomap(get(edge_oname, *m_graph1)),
		eomap2(get(edge_oname, *m_graph2))
	{}
	template <typename Edge>
	bool operator()(const Edge& e) const {
		typedef typename boost::graph_traits<Graph>::vertex_descriptor Vertex;
		Vertex s1 = (e).m_source;
		Vertex t1 = (e).m_target;
		Vertex s2 = get(correspondence_map_1_to_2, (e).m_source);
		Vertex t2 = get(correspondence_map_1_to_2, (e).m_target);

		typename boost::graph_traits<Graph>::out_edge_iterator e1, e1_end;
		for (boost::tie(e1, e1_end) = out_edges(s2, *m_graph2); e1 != e1_end; ++e1){
			if(t2 == target(*e1,*m_graph2)){
				if((eomap[e] == eomap2[*e1]) &&(eimap[e] == eimap2[*e1])) return true;
			}
		}
		return false;
	}
	Graph*  m_graph2;
	CORESMAP correspondence_map_1_to_2;
	edgeinameMap eimap;
	edgeinameMap eimap2;
	edgeonameMap eomap;
	edgeonameMap eomap2;
};

template <typename Graph>
struct example_callback {

	typedef typename graph_traits<Graph>::vertices_size_type VertexSizeFirst;

	example_callback(Graph& graph1,Graph& graph2) :
		m_graph1(graph1),
		m_graph2(graph2){ }

	template <typename CorrespondenceMapFirstToSecond,
	typename CorrespondenceMapSecondToFirst>
	bool operator()(CorrespondenceMapFirstToSecond correspondence_map_1_to_2,
			CorrespondenceMapSecondToFirst correspondence_map_2_to_1,
			VertexSizeFirst subgraph_size) {

		// Fill membership map for first graph
		typedef typename property_map<Graph, vertex_index_t>::type VertexIndexMap;
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

		edge_filter<MembershipFilteredGraph,CorrespondenceMapFirstToSecond> filter(&subgraph1,&subgraph2,correspondence_map_1_to_2);
		filtered_graph<MembershipFilteredGraph, edge_filter<MembershipFilteredGraph,CorrespondenceMapFirstToSecond> > fg(subgraph1,filter);

		// Print the graph out to the console
		std::cout << "Found common subgraph (size " << subgraph_size << ")" << std::endl;
		print_graph(subgraph1,get(boost::vertex_bundle,subgraph1));
		std::cout<<"subgraph1 edges:"<<std::endl;
		print_edges3(subgraph1,get(boost::vertex_bundle,subgraph1),get(boost::edge_oname,subgraph1),get(boost::edge_iname,subgraph1));
		std::cout<<"subgraph2 edges:"<<std::endl;
		print_edges3(subgraph2,get(boost::vertex_bundle,subgraph2),get(boost::edge_oname,subgraph2),get(boost::edge_iname,subgraph2));
		std::cout<<"filtered edges:"<<std::endl;
		print_graph(fg,get(boost::vertex_bundle,fg));
		print_edges3(fg,get(boost::vertex_bundle,fg),get(boost::edge_oname,fg),get(boost::edge_iname,fg));
		std::cout << std::endl;

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
	typedef property_map_equivalent_2<edge_iname_map_t, edge_iname_map_t,edge_oname_map_t, edge_oname_map_t>	edge_comp_t;


	Sample_graph1 g1;
	Sample_graph2 g2;
	vFuMap vname_map_simple1 = get(boost::vertex_bundle, g1.getGraph());
	vFuMap vname_map_simple2 = get(boost::vertex_bundle, g2.getGraph());
	edge_comp_t edge_comp = edge_comp_t(get(edge_iname, g1.getGraph()), get(edge_iname, g2.getGraph()),get(edge_oname, g1.getGraph()), get(edge_oname, g2.getGraph()));

	example_callback<graph_t> user_callback(g1.getGraph(),g2.getGraph());

	// Maximum, unique subgraphs
	edge_iname_map_t eimap = get(boost::edge_iname, g1.getGraph());
	edge_iname_map_t eimap2 = get(boost::edge_iname, g2.getGraph());
	edge_oname_map_t eomap = get(boost::edge_oname, g1.getGraph());
	edge_oname_map_t eomap2 = get(boost::edge_oname, g2.getGraph());
	boost::graph_traits<graph_t>::vertex_iterator v, v_end;
	boost::graph_traits<graph_t>::out_edge_iterator e, e_end;
	for (boost::tie(v, v_end) = vertices(g1.getGraph()); v != v_end; ++v)
		for (boost::tie(e, e_end) = out_edges(*v, g1.getGraph()); e != e_end; ++e){
			std::cout<<eomap[*e]<<"->"<<eimap[*e]<<std::endl;
		}
	std::cout<<"************************"<<std::endl;
	for (boost::tie(v, v_end) = vertices(g2.getGraph()); v != v_end; ++v)
		for (boost::tie(e, e_end) = out_edges(*v, g2.getGraph()); e != e_end; ++e)
			std::cout<<eomap2[*e]<<"->"<<eimap2[*e]<<std::endl;


	// make_property_map_equivalent(get(boost::edge_connection, g1.getGraph()), get(boost::edge_connection, g2.getGraph()));

	std::cout << "mcgregor_common_subgraphs_maximum_unique:" << std::endl;
	mcgregor_common_subgraphs_maximum_unique
	(g1.getGraph(), g2.getGraph(), true, user_callback,
			edges_equivalent(edge_comp).
			vertices_equivalent(make_property_map_equivalent(vname_map_simple1, vname_map_simple2)));
}


