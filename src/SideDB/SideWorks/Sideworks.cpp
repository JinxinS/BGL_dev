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
 siw_graph(),
 fuList(){
	// TODO Auto-generated constructor stub

}

Sideworks::~Sideworks() {
	// TODO Auto-generated destructor stub
}

int Sideworks::size() const {
	return num_vertices(siw_graph) + num_edges(siw_graph);
}

void Sideworks::addFU(FUInstance* fu){
	vFuMap			 fuMap = get(boost::vertex_bundle, siw_graph);
	++resource_usage[fu->type];
	graph_t::vertex_descriptor v = boost::add_vertex(vertex_properties("",*fu), siw_graph);
	fuList.push_back(fu);
}


int Sideworks::addConection(const graph_t::vertex_descriptor& u,const graph_t::vertex_descriptor& v,const std::string& o,const std::string& i){
	BOOST_LOG_TRIVIAL(trace)<<"add edge "<<siw_graph[u].name<<"."<<o<<" -> "<<siw_graph[v].name<<"."<<i;
	if(!fuList[u]->isConnected(o,fuList[v],i)) add_edge(u,v,edge_properties(o,edge_i_property(i)),siw_graph);
	int ret = fuList[u]->connect(o,fuList[v],i);
	return ret;
}

graph_t::vertex_descriptor Sideworks::getFU(const std::string& kname){
	optional<graph_t::vertex_descriptor> ret(find_vertex(kname,siw_graph));
	if( ret ) {
		return ret.get();
	} else throw SideConfException("no such FU");
}
