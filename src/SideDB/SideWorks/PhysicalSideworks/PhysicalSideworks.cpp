/*
 * PhysicalSideworks.cpp
 *
 *  Created on: Sep 30, 2016
 *      Author: songjinxin
 */

#include <PhysicalSideworks.h>
#include <limits.h>

PhysicalSideworks::PhysicalSideworks()
:Sideworks(),
 fus_by_type(){
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
    lfu->place(best_fu);
    best_fu->place(lfu);
    BOOST_LOG_TRIVIAL(info)<<boost::format("\nplace %-20s @ %-20s cost %-8f") %lfu->name %best_fu->name %best_fu_cost;
}

void PhysicalSideworks::route(FUInstance* lfu,int simid){


}
