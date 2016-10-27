/*
 * LogicalFUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALFUINSTANCE_H_
#define LOGICALFUINSTANCE_H_
#include "sic_types.h"
#include "FUInstance.h"
class FUDescription;
class LogicalFUInstance:public FUInstance {
	std::string funcname;
	FUInstance* correspond_physicalFUInstance;
	void addInputPort(const std::string&, int width);
	void addOutputPort(const std::string&, int width);
public:
    LogicalFUInstance(const LogicalFUInstance&);
    LogicalFUInstance& operator=(const LogicalFUInstance&){}
	LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc);
	virtual ~LogicalFUInstance();
	FUInstance* correspondence(int)const {return correspond_physicalFUInstance;}
	void place(FUInstance*,int);
	bool isPlaced(int){ return correspond_physicalFUInstance != NULL;}
	virtual double estimatePlacementDecisionCost(FUInstance*);
	virtual FUInstance* createPhysicalFUInstance(const std::string &);
};

#endif /* LOGICALFUINSTANCE_H_ */
