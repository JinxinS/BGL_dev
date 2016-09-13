/*
 * LogicalSideworks.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "LogicalSideworks.h"
#include "LogicalFUInstance.h"
LogicalSideworks::LogicalSideworks()
:siw_graph()
{
	// TODO Auto-generated constructor stub

}

LogicalSideworks::~LogicalSideworks() {
	// TODO Auto-generated destructor stub
}

void LogicalSideworks::addLogicalFU(LogicalFUInstance* logical_fu){
	 std::string type(logical_fu->getType() );
	 std::string name(logical_fu->getName() );

	graph_traits<GraphTypes::Graph>::vertex_descriptor v = add_vertex(siw_graph);
	put(vertex_futype, siw_graph,  v, type);
	put(vertex_funame, siw_graph,  v, name);
	logical_fu->setVertexDescriptor(v);
}


void LogicalSideworks::addConection(const graph_traits<GraphTypes::Graph>::vertex_descriptor& v1,const graph_traits<GraphTypes::Graph>::vertex_descriptor& v2,const std::string& c){
	add_edge(v1,v2,GraphTypes::edge_property(c),siw_graph);
}
