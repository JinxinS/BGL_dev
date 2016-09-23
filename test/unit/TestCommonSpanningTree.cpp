/*
 * TestCommonSpanningTree.cpp
 *
 *  Created on: Sep 22, 2016
 *      Author: songjinxin
 */

#define BOOST_TEST_MODULE CST
#include <boost/test/unit_test.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/graph_utility.hpp>
#include <boost/graph/two_graphs_common_spanning_trees.hpp>
#include <exception>
#include <vector>
using namespace std;

typedef
boost::adjacency_list
  <
    boost::vecS,         // OutEdgeList
    boost::vecS,         // VertexList
    boost::undirectedS,  // Directed
    boost::no_property,  // VertexProperties
    boost::no_property,  // EdgeProperties
    boost::no_property,  // GraphProperties
    boost::listS         // EdgeList
  >
Graph
;

typedef
boost::graph_traits<Graph>::vertex_descriptor
vertex_descriptor;

typedef
boost::graph_traits<Graph>::edge_descriptor
edge_descriptor;

typedef
boost::graph_traits<Graph>::vertex_iterator
vertex_iterator;

typedef
boost::graph_traits<Graph>::edge_iterator
edge_iterator;

BOOST_AUTO_TEST_CASE(test_case) {
	  Graph iG, vG;
	  vector< edge_descriptor > iG_o;
	  vector< edge_descriptor > vG_o;

	  iG_o.push_back(boost::add_edge(0, 1, iG).first);
	  iG_o.push_back(boost::add_edge(0, 2, iG).first);
	  iG_o.push_back(boost::add_edge(0, 3, iG).first);
	  iG_o.push_back(boost::add_edge(0, 4, iG).first);
	  iG_o.push_back(boost::add_edge(1, 2, iG).first);
	  iG_o.push_back(boost::add_edge(3, 4, iG).first);

	  vG_o.push_back(boost::add_edge(1, 2, vG).first);
	  vG_o.push_back(boost::add_edge(2, 0, vG).first);
	  vG_o.push_back(boost::add_edge(2, 3, vG).first);
	  vG_o.push_back(boost::add_edge(4, 3, vG).first);
	  vG_o.push_back(boost::add_edge(0, 3, vG).first);
	  vG_o.push_back(boost::add_edge(0, 4, vG).first);

	  vector<bool> inL(iG_o.size(), false);

	  std::vector< std::vector<bool> > coll;
	  boost::tree_collector<
	      std::vector< std::vector<bool> >,
	      std::vector<bool>
	    > tree_collector(coll);
	  boost::two_graphs_common_spanning_trees
	    (
	      iG,
	      iG_o,
	      vG,
	      vG_o,
	      tree_collector,
	      inL
	    );
	  print_graph(iG);
	  std::cout<<"......................."<<std::endl;
	  print_graph(vG);
	  std::vector< std::vector<bool> >::iterator it;
	  std::cout<<"cst:"<<std::endl;
	  int i = 0, j= 0;
	  for(it = coll.begin(); it != coll.end(); ++it,++i) {
		//  std::cout<<i<<" <--> ";
		 for(auto x: *it){
			 std::cout<<i<<j<<std::endl;
		//	if(x) std::cout<<j<<" ";
			 ++j;
		 }
		 std::cout<<std::endl;
		 j=0;
	  }
}




