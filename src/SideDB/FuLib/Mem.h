/*
 * Mem.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUNCTIONALUNITS_MEM_H_
#define FUNCTIONALUNITS_MEM_H_
#include "FUDescription.h"
#include "LogicalFUInstance.h"
#include "PhysicalFUInstance.h"
class Mem :public FUDescription{
	friend class MemFUInstance;
	int memid;
public:
	static const std::string TYPE;
	static const std::string FUNC_NAME;
	static const std::string PROP_ID;
	static const std::string PROP_BASEADDRESS;
	static const std::string PROP_AWIDTH;
	Mem(int, int, int);
	virtual ~Mem();
	LogicalFUInstance* createLogicalFUInstance(const std::string &,const std::string &,const std::string &) ;
};

class MemPhysicalFUInstance;
class MemFUInstance:public LogicalFUInstance{
public:
	MemFUInstance(const std::string &name,const std::string &type,const std::string &func,FUDescription* desc,int memid);
	virtual ~MemFUInstance();
	double estimateMemPlacementDecisionCost(MemPhysicalFUInstance&);
	PhysicalFUInstance* createPhysicalFUInstance(const std::string &);
};


class MemPhysicalFUInstance:public PhysicalFUInstance{
public:
	MemPhysicalFUInstance(const std::string &name,const std::string &type,FUDescription* desc,int memid);
	virtual ~MemPhysicalFUInstance();
	double estimatePlacementDecisionCost(LogicalFUInstance& lfu){return lfu.estimateMemPlacementDecisionCost(*this);}
};



#endif /* FUNCTIONALUNITS_MEM_H_ */
