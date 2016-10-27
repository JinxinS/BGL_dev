/*
 * Constant.h
 *
 *  Created on: Oct 20, 2016
 *      Author: songjinxin
 */

#ifndef CONSTANT_H_
#define CONSTANT_H_
#include "FUDescription.h"
#include "LogicalFUInstance.h"
#include "PhysicalFUInstance.h"
class Constant : public FUDescription{
public:
	static const std::string TYPE;
	static const std::string FUNC_NAME;
	Constant();
	virtual ~Constant();
	FUInstance* createLogicalFUInstance(const std::string &,const std::string &,const std::string &) ;
};

class ConstantFUInstance:public LogicalFUInstance{
public:
	int value;
	ConstantFUInstance(const std::string &name,const std::string &type,const std::string &func,FUDescription* desc);
	virtual ~ConstantFUInstance();
	void setParameter(const std::string&, long);
	double estimatePlacementDecisionCost(FUInstance*);
	FUInstance* createPhysicalFUInstance(const std::string &);
};


class ConstantPhysicalFUInstance:public PhysicalFUInstance{
public:
	int value;
	ConstantPhysicalFUInstance(const std::string &name,const std::string &type,int val,FUDescription* desc);
	virtual ~ConstantPhysicalFUInstance();
};

#endif /* CONSTANT_H_ */
