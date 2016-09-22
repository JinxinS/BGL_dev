/*
 * LogicalSideworks.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "LogicalSideworks.h"
#include "LogicalFUInstance.h"
#include "FUInstance.h"
#include "SideConfException.h"
LogicalSideworks::LogicalSideworks()
:siw_graph()
{
	// TODO Auto-generated constructor stub

}

LogicalSideworks::~LogicalSideworks() {
	// TODO Auto-generated destructor stub
}

void LogicalSideworks::addLogicalFU(LogicalFUInstance* logical_fu){
	graph_t::vertex_descriptor v = boost::add_vertex(vertex_properties("",*logical_fu), siw_graph);
}


void LogicalSideworks::addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& c){
	BOOST_LOG_TRIVIAL(trace)<<"add edge "<<siw_graph[v1].name<<" - "<<siw_graph[v2].name<<" ["<<c<<"]";
	add_edge(v1,v2,edge_properties(c),siw_graph);
}

graph_t::vertex_descriptor LogicalSideworks::getLogicalFU(const std::string& kname){
	optional<graph_t::vertex_descriptor> ret(find_vertex(kname,siw_graph));
	if( ret ) {
		return ret.get();
	} else throw SideConfException("no such logicalFU");

}
