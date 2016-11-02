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
:siw_graph(){
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
