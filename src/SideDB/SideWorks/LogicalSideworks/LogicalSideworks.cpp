/*
 * LogicalSideworks.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "LogicalSideworks.h"
#include "sic_types.h"
#include "InputPort.h"
#include "OutputPort.h"
LogicalSideworks::LogicalSideworks()
:Sideworks(){
	// TODO Auto-generated constructor stub

}

LogicalSideworks::~LogicalSideworks() {
	// TODO Auto-generated destructor stub
}


void LogicalSideworks::route(PhysicalSideworks &physical_sideWorks){
	graph_t& psiw_graph = physical_sideWorks.getGraph();
	std::pair<edge_iterator,edge_iterator> p = edges(siw_graph);
	edge_iname_map_t eimap = get(boost::edge_iname, siw_graph);
	edge_oname_map_t eomap = get(boost::edge_oname, siw_graph);
	for(auto e = p.first; e != p.second;++e){
		auto u = source(*e, siw_graph);
		auto v = target(*e, siw_graph);
		auto cu = *find_vertex(fuList[u]->correspondence(0)->name, psiw_graph);
		auto cv = *find_vertex(fuList[v]->correspondence(0)->name, psiw_graph);
		int muxSelect = physical_sideWorks.addConection(cu,cv,eomap[*e],eimap[*e]);
		fuList[v]->getInputPort(eimap[*e])->setMuxSelect(fuList[u]->getOutputPort(eomap[*e]),muxSelect);
	//	std::cout<<(*(fuList[v]->getInputPort(eimap[*e])));
	}
}
