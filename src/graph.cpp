#include "graph.h"
#include "Mapper.h"
#include "buildg1.h"
#include "buildg2.h"


int main (int argc, char *argv[]) {
	// Test maximum and unique variants on known graphs
	GraphTypes::Graph graph_simple1, graph_simple2;
#if 0
	build_g1::buildgraph1(graph_simple1);
	build_g2::buildgraph2(graph_simple2);
#else
	build_g1::buildgraphsimple1(graph_simple1);
	build_g2::buildgraphsimple2(graph_simple2);
#endif
	//
#define PRINT_IDX
	std::cout << "First graph:" << std::endl;
#ifdef PRINT_IDX
	print_graph(graph_simple1);
#else
	print_graph(graph_simple1,get(vertex_funame,graph_simple1));
#endif
	std::cout << std::endl;



	std::cout << "Second graph:" << std::endl;
#ifdef PRINT_IDX
	print_graph(graph_simple2);
#else
	print_graph(graph_simple2,get(vertex_funame,graph_simple2));
#endif
	std::cout << std::endl;

	Mapper m;
	m.map_func(graph_simple1,graph_simple2);

	std::cout<<"done"<<std::endl;
	return 0;
}
