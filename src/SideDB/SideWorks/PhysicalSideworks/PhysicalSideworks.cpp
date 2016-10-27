/*
 * PhysicalSideworks.cpp
 *
 *  Created on: Sep 30, 2016
 *      Author: songjinxin
 */

#include <PhysicalSideworks.h>
#include <limits.h>
#include "sic_types.h"
#include "InputPort.h"
#include "OutputPort.h"
#include "LogicalSideworks.h"
#include "IResourceCostConstants.h"
#include "FUDescription.h"
PhysicalSideworks::PhysicalSideworks()
:Sideworks(),
 fus_by_type(),
 muxCount({0})
{
	// TODO Auto-generated constructor stub

}

PhysicalSideworks::~PhysicalSideworks() {
	// TODO Auto-generated destructor stub
}

void PhysicalSideworks::addFU(FUInstance* fu){
	Sideworks::addFU(fu);
	fus_by_type[fu->type].push_back(fu);
}

void PhysicalSideworks::place(FUInstance* lfu,int simid){
	 BOOST_LOG_TRIVIAL(fatal)<<"********placing process************";
    double best_fu_cost = std::numeric_limits<double>::max() - 1;
    FUInstance* best_fu = 0;
    for(auto pfu:fus_by_type[lfu->type] ){
    	if(pfu->isPlaced(simid)) continue;
		double new_estimate_cost = lfu->estimatePlacementDecisionCost(pfu);

		if(new_estimate_cost < best_fu_cost){
			best_fu_cost = new_estimate_cost;
			best_fu	= pfu;
		}
	}
    //no suitable FU to place, add one
    if(best_fu_cost == std::numeric_limits<double>::max() - 1){
		std::string fu_name(lfu->type+"_auto_"+std::to_string(fus_by_type[lfu->type].size()));
		best_fu = lfu->createPhysicalFUInstance(fu_name);
    	this->addFU(best_fu);
    	BOOST_LOG_TRIVIAL(fatal)<<boost::format("\nplace %-10s @ %-10s cost MAX") %lfu->name %best_fu->name ;
    }
    else
    	BOOST_LOG_TRIVIAL(fatal)<<boost::format("\nplace %-10s @ %-10s cost %-f") %lfu->name %best_fu->name %best_fu_cost;

    lfu->place(best_fu,0);
    best_fu->place(lfu,simid);
	BOOST_LOG_TRIVIAL(fatal)<<*best_fu->correspondence(simid);
}

void PhysicalSideworks::route(LogicalSideworks &logical_sideWorks){
	graph_t& lsiw_graph = logical_sideWorks.getGraph();
	std::pair<edge_iterator,edge_iterator> p = edges(lsiw_graph);
	edge_iname_map_t eimap = get(boost::edge_iname, lsiw_graph);
	edge_oname_map_t eomap = get(boost::edge_oname, lsiw_graph);
	for(auto e = p.first; e != p.second;++e){
		auto u = logical_sideWorks.fuList[source(*e, lsiw_graph)];
		auto v = logical_sideWorks.fuList[target(*e, lsiw_graph)];
		auto cu = *find_vertex(u->correspondence(0)->name, siw_graph);
		auto cv = *find_vertex(v->correspondence(0)->name, siw_graph);
		int muxSelect = addConection(cu,cv,eomap[*e],eimap[*e]);
		v->getInputPort(eimap[*e])->setMuxSelect(u->getOutputPort(eomap[*e]),muxSelect);
		//std::cout<<*fuList[cv]->getInputPort(eimap[*e]);
	}
	//update the mux count per Datapath
	for(int mux_size = 0; mux_size < 33; mux_size++){
		muxCount[mux_size] = 0;
	}

	for(auto fu:fuList){
		fu->getReadXbarMuxCount(muxCount,sizeof(muxCount)/sizeof(int));
	}
	for(int mux_size = 0; mux_size < 33; mux_size++){
		if(muxCount[mux_size] != 0)
		std::cout<<"MUX_" << std::to_string(mux_size) <<": " << std::to_string(muxCount[mux_size]) <<
				" \t[" <<
				std::to_string( muxCount[mux_size] *IResourceCostConstants::MUXCOST[IResourceCostConstants::VIRTEX5][ mux_size] ) << "]\n";
	}
}

int  PhysicalSideworks::getReadXbarLuts(const int lut_per_mux_size[]){
	int total_luts = 0;
	for(int mux_size = 0; mux_size < 33; mux_size++)
	{
		total_luts += muxCount[mux_size] * lut_per_mux_size[mux_size];
	}
	return total_luts;
}
