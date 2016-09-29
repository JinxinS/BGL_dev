/*
 * Sideworks.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <Sideworks.h>
#include "FUInstance.h"
#include "SideConfException.h"
Sideworks::Sideworks()
:resource_usage(),
siw_graph() {
	// TODO Auto-generated constructor stub

}

Sideworks::~Sideworks() {
	// TODO Auto-generated destructor stub
}

void Sideworks::addFU(FUInstance* fu){
	++resource_usage[fu->type];
	graph_t::vertex_descriptor v = boost::add_vertex(vertex_properties("",*fu), siw_graph);
	fuList[v] = fu;
}


void Sideworks::addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& c){
	BOOST_LOG_TRIVIAL(trace)<<"add edge "<<siw_graph[v1].name<<" - "<<siw_graph[v2].name<<" ["<<c<<"]";
	add_edge(v1,v2,edge_properties(c),siw_graph);
//	fuList[v1]->connect();
}

graph_t::vertex_descriptor Sideworks::getFU(const std::string& kname){
	optional<graph_t::vertex_descriptor> ret(find_vertex(kname,siw_graph));
	if( ret ) {
		return ret.get();
	} else throw SideConfException("no such FU");
}
