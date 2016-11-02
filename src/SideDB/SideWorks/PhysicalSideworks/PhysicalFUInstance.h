/*
 * PhysicalFUInstance.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALFUINSTANCE_H_
#define PHYSICALFUINSTANCE_H_
#include "sic_types.h"
#include "FUInstance.h"
class FUDescription;
class LogicalFUInstance;
class PhysicalFUInstance:public FUInstance {
	std::map<int,FUInstance*> correspond_LogicalFUInstance;
	virtual void addInputPort(const std::string&, int width);
	virtual void addOutputPort(const std::string&, int width);
public:
	PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc);
	virtual ~PhysicalFUInstance();
	int fanInSize();
	int fanOutSize();
	FUInstance* correspondence(int i)const {return correspond_LogicalFUInstance.at(i);}
	void place(FUInstance*,int);
	bool isPlaced(int simid);
	virtual double estimatePlacementDecisionCost(LogicalFUInstance*);
	void getReadXbarMuxCount(int*,int);
};

#endif /* PHYSICALFUINSTANCE_H_ */
