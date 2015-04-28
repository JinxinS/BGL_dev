#include <fstream>
#include <iostream>
#include <string>
#include <stdio.h>
#include <boost/lexical_cast.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/filtered_graph.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <boost/graph/mcgregor_common_subgraphs.hpp>
#include <boost/property_map/shared_array_property_map.hpp>
#include <boost/graph/properties.hpp>
//#define PRINT_IDX
using namespace boost;

namespace boost {
  enum edge_connection_t { edge_connection };
  enum vertex_funame_t { vertex_funame };
  enum vertex_futype_t { vertex_futype };

  BOOST_INSTALL_PROPERTY(edge, connection);
  BOOST_INSTALL_PROPERTY(vertex,   funame);
  BOOST_INSTALL_PROPERTY(vertex,   futype);
}


// Callback that looks for the first common subgraph whose size
// matches the user's preference.
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

    typedef typename property_map<Graph, vertex_index_t>::type VertexIndexMap;
    typedef shared_array_property_map<bool, VertexIndexMap> MembershipMap;

    // Fill membership map for first graph
    MembershipMap membership_map1(num_vertices(m_graph1),
                                  get(vertex_index, m_graph1));
    fill_membership_map<Graph>(m_graph1, correspondence_map_1_to_2, membership_map1);

    // Fill membership map for second graph
    MembershipMap membership_map2(num_vertices(m_graph2),
                                  get(vertex_index, m_graph2));
    fill_membership_map<Graph>(m_graph2, correspondence_map_2_to_1, membership_map2);

    // Generate filtered graphs using membership map
    typedef typename membership_filtered_graph_traits<Graph, MembershipMap>::graph_type
      MembershipFilteredGraph;

    MembershipFilteredGraph subgraph1 =
      make_membership_filtered_graph(m_graph1, membership_map1);

    MembershipFilteredGraph subgraph2 =
        make_membership_filtered_graph(m_graph2, membership_map2);


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
	  typename property_map<IncidenceGraph, vertex_funame_t>::const_type fu_name1 = get(vertex_funame,G1);//
	  typename property_map<IncidenceGraph, vertex_funame_t>::const_type fu_name2 = get(vertex_funame,G2);

#ifdef PRINT_IDX
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
	  typedef typename boost::graph_traits<IncidenceGraph>::vertex_iterator    Viter;
	  Viter ui, uiend, vi,viend;
	  boost::tie(ui, uiend) = vertices(G1);
	  boost::tie(vi, viend) = vertices(G2);
	  assert(std::distance(ui, uiend)== std::distance(vi, viend));
	  for (; ui != uiend, vi!= viend; ++ui,++vi) {
		  std::cout << fu_name1[*ui] <<"->"<<fu_name2[*vi]<< "\t";
	  }
	  std::cout<<"done!"<<std::endl;
  }
};






int main (int argc, char *argv[]) {
  typedef property<edge_connection_t, std::string> edge_property;

  typedef property<vertex_funame_t, std::string, property<vertex_futype_t,std::string> > vertex_property;

  // Using a vecS graph here so that we don't have to mess around with
  // a vertex index map; it will be implicit.
  typedef adjacency_list<listS, vecS, directedS,
		  vertex_property,
		  edge_property > Graph;

  typedef property_map<Graph, vertex_futype_t>::type VertexTypeMap;

  // Test maximum and unique variants on known graphs
  Graph graph_simple1, graph_simple2;
  example_callback<Graph> user_callback(graph_simple1,graph_simple2);

  VertexTypeMap vtype_map_simple1 = get(vertex_futype, graph_simple1);
  VertexTypeMap vtype_map_simple2 = get(vertex_futype, graph_simple2);


  // Graph that looks like a triangle
  graph_traits<Graph>::vertex_descriptor vit = add_vertex(graph_simple1);
  put(vertex_futype, graph_simple1, vit, "ALU");
  put(vertex_funame, graph_simple1, vit, "alu0");
  vit = add_vertex(graph_simple1);
  put(vertex_futype, graph_simple1, vit, "ALU");
  put(vertex_funame, graph_simple1, vit, "alu1");
  vit = add_vertex(graph_simple1);
  put(vertex_futype, graph_simple1, vit, "MULT");
  put(vertex_funame, graph_simple1, vit, "mult0");


  add_edge(0, 1, edge_property("out_i0"), graph_simple1);
  add_edge(0, 2, edge_property("out_i1"), graph_simple1);
  add_edge(1, 2, edge_property("out_i0"), graph_simple1);

  std::cout << "First graph:" << std::endl;
#ifdef PRINT_IDX
  print_graph(graph_simple1);
#else
  print_graph(graph_simple1,get(vertex_funame,graph_simple1));
#endif
  std::cout << std::endl;

  // Triangle with an extra vertex
  vit = add_vertex(graph_simple2);
  put(vertex_futype, graph_simple2, vit, "CNST");
  put(vertex_funame, graph_simple2, vit, "cnst_g01");


  vit = add_vertex(graph_simple2);
  put(vertex_futype, graph_simple2, vit, "ALU");
  put(vertex_funame, graph_simple2, vit, "alu_g00");

  vit = add_vertex(graph_simple2);
  put(vertex_futype, graph_simple2, vit, "ALU");
  put(vertex_funame, graph_simple2, vit, "alu_g01");

  vit = add_vertex(graph_simple2);
  put(vertex_futype, graph_simple2, vit, "MULT");
  put(vertex_funame, graph_simple2, vit, "mult_g10");

  vit = add_vertex(graph_simple2);
  put(vertex_futype, graph_simple2, vit, "CNST");
  put(vertex_funame, graph_simple2, vit, "cnst_g02");


  add_edge(1, 2,  edge_property("out_i0"),graph_simple2);
  add_edge(1, 3, edge_property("out_i1"), graph_simple2);
  add_edge(2, 3, edge_property("out_i0"), graph_simple2);
  add_edge(2, 4,  edge_property("out_i0"),graph_simple2);

  std::cout << "Second graph:" << std::endl;
#ifdef PRINT_IDX
  print_graph(graph_simple2);
#else
  print_graph(graph_simple2,get(vertex_funame,graph_simple2));
#endif
  std::cout << std::endl;

  typedef property_map<Graph, edge_connection_t>::type edge_connection_map_t;
  typedef property_map_equivalent<edge_connection_map_t, edge_connection_map_t> edge_comp_t;
  edge_comp_t edge_comp =
    make_property_map_equivalent(get(edge_connection, graph_simple1), get(edge_connection, graph_simple2));

  // Maximum, unique subgraphs
  std::cout << "mcgregor_common_subgraphs_maximum_unique:" << std::endl;
  mcgregor_common_subgraphs_maximum_unique
    (graph_simple1, graph_simple2, true, user_callback,
    		edges_equivalent(edge_comp).vertices_equivalent(make_property_map_equivalent(vtype_map_simple1, vtype_map_simple2))
	 );

  return 0;
}
