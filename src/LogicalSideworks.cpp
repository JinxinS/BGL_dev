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
	graph_t::vertex_descriptor v = boost::add_vertex(vertex_properties(type,vp_name(name,name)), siw_graph);
}


void LogicalSideworks::addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& c){
	BOOST_LOG_TRIVIAL(trace)<<"add edge "<<get(boost::vertex_funame,siw_graph,v1)<<" - "<<get(boost::vertex_funame,siw_graph,v2)<<" ["<<c<<"]";
	add_edge(v1,v2,edge_properties(c),siw_graph);
}

graph_t::vertex_descriptor LogicalSideworks::getLogicalFU(const std::string& kname){
	return find_vertex(kname,siw_graph).get();
}
