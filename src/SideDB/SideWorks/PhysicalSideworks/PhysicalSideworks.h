/*
 * PhysicalSideworks.h
 *
 *  Created on: Sep 30, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALSIDEWORKS_H_
#define PHYSICALSIDEWORKS_H_
#include "Sideworks.h"
class FUInstance;
class PhysicalSideworks:public Sideworks {
	std::map<std::string,std::vector<FUInstance*>> fus_by_type;
	//std::vector<FUInstance*>						placed_fus;
public:
	PhysicalSideworks();
	virtual ~PhysicalSideworks();

	void addFU(FUInstance* fu);
	void place(FUInstance* lfu,int simid);
};

#endif /* PHYSICALSIDEWORKS_H_ */
