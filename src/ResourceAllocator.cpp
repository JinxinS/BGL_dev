/*
 * ResourceAllocator.cpp
 *
 *  Created on: Sep 23, 2016
 *      Author: songjinxin
 */

#include <ResourceAllocator.h>
#include "LogicalSideworks.h"
#include "FunctionalUnitLibrary.h"
ResourceAllocator::ResourceAllocator()
:fu_resources(){
	// TODO Auto-generated constructor stub

}

ResourceAllocator::~ResourceAllocator() {
	// TODO Auto-generated destructor stub
}

void ResourceAllocator::addLSiWResources(const std::vector<LogicalSideworks*>& logical_sideworks_list){
    for(unsigned int i = 0; i < logical_sideworks_list.size(); i++){
    	for(auto x : logical_sideworks_list[i]->getResourceUsage() ){
    		if(fu_resources[x.first] < x.second) fu_resources[x.first] = x.second;
    	}
    }
	for(auto s:fu_resources){
		std::cout<<s.first<<"["<<s.second<<"]"<<std::endl;
	}
}

void ResourceAllocator::allocateResources(LogicalSideworks& physical_sideWorks,const FunctionalUnitLibrary& fulib){
	for(auto s:fu_resources){
		std::string fu_type(s.first);
		int n(s.second);
		for(int i = 0; i < n; ++i){
			std::string fu_name(fu_type+"_auto_"+std::to_string(i));
			//physical_sideWorks.addLogicalFU(fulib.getLogicalFUInstance(fu_type,fu_name));
		}
	}
}
