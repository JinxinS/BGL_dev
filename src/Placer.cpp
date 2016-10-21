/*
 * Placer.cpp
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#include <Placer.h>
#include "FUInstance.h"
#include "LogicalSideworks.h"
Placer::Placer() {
	// TODO Auto-generated constructor stub

}

Placer::~Placer() {
	// TODO Auto-generated destructor stub
}

void Placer::place(LogicalSideworks* logical_sideworks,PhysicalSideworks& physical_sideWorks,int simid){
	for(auto lfu:logical_sideworks->fuList)
		if(lfu != NULL) physical_sideWorks.place(lfu,simid);

}
