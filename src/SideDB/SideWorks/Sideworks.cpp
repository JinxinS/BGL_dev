/*
 * Sideworks.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <Sideworks.h>
#include "FUInstance.h"
#include "SideConfException.h"
#include "InputPort.h"
#include "OutputPort.h"

Sideworks::Sideworks()
:name(),
 siw_graph(){
	// TODO Auto-generated constructor stub
}

Sideworks::~Sideworks() {
	// TODO Auto-generated destructor stub
}

int Sideworks::size() const {
	return num_vertices(siw_graph) + num_edges(siw_graph);
}

graph_t::vertex_descriptor Sideworks::getFU(const std::string& kname){
	optional<graph_t::vertex_descriptor> ret(find_vertex(kname,siw_graph));
	if( ret ) {
		return ret.get();
	} else throw SideConfException("no such FU");
}

bool Sideworks::isConnected(OutputPort* out, InputPort* in){
	return out->isConnected(in)&&in->isConnected(out);
}

int Sideworks::connect(OutputPort* out, InputPort* in){
	return out->connect(in);
}

int Sideworks::connect(const graph_t::vertex_descriptor& u,const graph_t::vertex_descriptor& v,OutputPort* out, InputPort* in){
	BOOST_LOG_TRIVIAL(trace)<<"add edge "<<siw_graph[u].name<<"."<<out->getName()<<" -> "<<siw_graph[v].name<<"."<<in->getName();
	if(!isConnected(out,in)){
		add_edge(u,v,edge_properties(out->getName(),edge_i_property(in->getName())),siw_graph);
	}
	return connect(out,in);
}

