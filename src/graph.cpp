#include "graph.h"
#include "Mapper.h"





int main (int argc, char *argv[]) {

	// Using a vecS graph here so that we don't have to mess around with
	// a vertex index map; it will be implicit.


	// Test maximum and unique variants on known graphs
	GraphTypes::Graph graph_simple1, graph_simple2;

	// Graph that looks like a triangle
	graph_traits<GraphTypes::Graph>::vertex_descriptor vit = add_vertex(graph_simple1);
	put(vertex_futype, graph_simple1, vit, "ALU");
	put(vertex_funame, graph_simple1, vit, "alu0");
	vit = add_vertex(graph_simple1);
	put(vertex_futype, graph_simple1, vit, "ALU");
	put(vertex_funame, graph_simple1, vit, "alu1");
	vit = add_vertex(graph_simple1);
	put(vertex_futype, graph_simple1, vit, "MULT");
	put(vertex_funame, graph_simple1, vit, "mult0");


	add_edge(0, 1, GraphTypes::edge_property("out_i0"), graph_simple1);
	add_edge(0, 2, GraphTypes::edge_property("out_i1"), graph_simple1);
	add_edge(1, 2, GraphTypes::edge_property("out_i0"), graph_simple1);

	std::cout << "First graph:" << std::endl;
#ifdef PRINT_IDX
	print_graph(graph_simple1);
#else
	print_graph(graph_simple1,get(vertex_funame,graph_simple1));
#endif
	std::cout << std::endl;

	// Triangle with an extra vertex
	//0
	vit = add_vertex(graph_simple2);
	put(vertex_futype, graph_simple2, vit, "CNST");
	put(vertex_funame, graph_simple2, vit, "cnst_g01");
	//1
	vit = add_vertex(graph_simple2);
	put(vertex_futype, graph_simple2, vit, "ALU");
	put(vertex_funame, graph_simple2, vit, "alu_g00");
	//2
	vit = add_vertex(graph_simple2);
	put(vertex_futype, graph_simple2, vit, "ALU");
	put(vertex_funame, graph_simple2, vit, "alu_g01");
	//3
	vit = add_vertex(graph_simple2);
	put(vertex_futype, graph_simple2, vit, "MULT");
	put(vertex_funame, graph_simple2, vit, "mult_g10");
	//4
	vit = add_vertex(graph_simple2);
	put(vertex_futype, graph_simple2, vit, "CNST");
	put(vertex_funame, graph_simple2, vit, "cnst_g02");
	//5
	vit = add_vertex(graph_simple2);
	put(vertex_futype, graph_simple2, vit, "MULT");
	put(vertex_funame, graph_simple2, vit, "mult_g01");

	add_edge(1, 2,  GraphTypes::edge_property("out_i0"),graph_simple2);
	add_edge(1, 3,  GraphTypes::edge_property("out_i1"), graph_simple2);
	add_edge(2, 3,  GraphTypes::edge_property("out_i0"), graph_simple2);
	add_edge(2, 4,  GraphTypes::edge_property("out_i0"),graph_simple2);
	add_edge(2, 5,  GraphTypes::edge_property("out_i1"),graph_simple2);

	std::cout << "Second graph:" << std::endl;
#ifdef PRINT_IDX
	print_graph(graph_simple2);
#else
	print_graph(graph_simple2,get(vertex_funame,graph_simple2));
#endif
	std::cout << std::endl;

    Mapper m;
	m.map_func(graph_simple1,graph_simple2);


	return 0;
}
