/*
 * LogicalFUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALFUINSTANCE_H_
#define LOGICALFUINSTANCE_H_
#include "sic_types.h"
class PhysicalFUInstance;
class ConstantPhysicalFUInstance;
class FUDescription;
class InputPort;
class OutputPort;
class LogicalInputPort;
class LogicalOutputPort;

class LogicalFUInstance:public FUInstance {
	friend class LogicalSideworks;
	friend class PhysicalSideworks;
	std::string funcname;
	std::unordered_map<std::string, LogicalInputPort*>	inports;
	std::unordered_map<std::string, LogicalOutputPort*>	outports;
	std::unordered_map<std::string, long>		 	parameters;
	FUInstance* correspond_physicalFUInstance;
	void addInputPort(const std::string&, int width);
	void addOutputPort(const std::string&, int width);
protected:
	InputPort*  getInputPort(const std::string& i) const;
	OutputPort* getOutputPort(const std::string& o) const;
public:
    LogicalFUInstance(const LogicalFUInstance&);
    LogicalFUInstance& operator=(const LogicalFUInstance& obj){
    	FUInstance::operator=(obj);
    	return *this;
    }
	virtual void setParameter(const std::string&, long);

	LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc);
	virtual ~LogicalFUInstance();
	FUInstance* correspondence(int)const {return correspond_physicalFUInstance;}
	void place(FUInstance*);
	bool isPlaced(int){ return correspond_physicalFUInstance != NULL;}
	double estimatePlacementDecisionCost(PhysicalFUInstance*);
	virtual double estimatePlacementDecisionCost(ConstantPhysicalFUInstance*){throw SideConfException("type mismatch");}
	virtual PhysicalFUInstance* createPhysicalFUInstance(const std::string&);
};

#endif /* LOGICALFUINSTANCE_H_ */
