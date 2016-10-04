/*
 * ResourceAllocator.h
 *
 *  Created on: Sep 23, 2016
 *      Author: songjinxin
 */

#ifndef RESOURCEALLOCATOR_H_
#define RESOURCEALLOCATOR_H_
#include "sic_types.h"
#include "FunctionalUnitLibrary.h"
#include "LogicalSideworks.h"
#include "PhysicalSideworks.h"

class ResourceAllocator {
    std::map<std::string, unsigned int> fu_resources;
public:
	ResourceAllocator();
	virtual ~ResourceAllocator();
    void addLSiWResources(const std::vector<LogicalSideworks*>&);
    void allocateResources(PhysicalSideworks& physical_sideWorks,const FunctionalUnitLibrary& fulib);
};

#endif /* RESOURCEALLOCATOR_H_ */
