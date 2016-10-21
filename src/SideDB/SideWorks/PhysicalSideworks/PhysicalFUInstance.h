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
class PhysicalFUInstance:public FUInstance {
	std::vector<FUInstance*> correspond_LogicalFUInstance;
	virtual void addInputPort(const std::string&, int width);
	virtual void addOutputPort(const std::string&, int width);
public:
	PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc);
	virtual ~PhysicalFUInstance();
	FUInstance* correspondence(int i)const {return correspond_LogicalFUInstance[i];}
	void place(FUInstance*);
	bool isPlaced(int simid);
	void getReadXbarMuxCount(int*,int);
};

#endif /* PHYSICALFUINSTANCE_H_ */
