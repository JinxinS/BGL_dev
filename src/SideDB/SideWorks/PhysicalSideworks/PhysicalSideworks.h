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
class LogicalSideworks;
class PhysicalSideworks:public Sideworks {
	std::map<std::string,std::vector<FUInstance*>> fus_by_type;
	int muxCount[33];
public:
	PhysicalSideworks();
	virtual ~PhysicalSideworks();

	void addFU(FUInstance* fu);
	void place(FUInstance* lfu,int simid);
	void route(LogicalSideworks &logical_sideWorks);
    int  getReadXbarLuts(const int lut_per_mux_size[]);
};

#endif /* PHYSICALSIDEWORKS_H_ */
