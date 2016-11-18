/*
 * LogicalFUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALFUINSTANCE_H_
#define LOGICALFUINSTANCE_H_
#include "sic_types.h"
#include "PhysicalFUInstance.h"
#include "Function.h"
#include "FUDescription.h"

class PhysicalFUInstance;
class ConstantPhysicalFUInstance;
class InputPort;
class OutputPort;
class LogicalInputPort;
class LogicalOutputPort;
class MemPhysicalFUInstance;
class LogicalFUInstance:public FUInstance {
	friend class LogicalSideworks;
	friend class PhysicalSideworks;
	std::string funcname;
	std::unordered_map<std::string, LogicalInputPort*>	inports;
	std::unordered_map<std::string, LogicalOutputPort*>	outports;
	std::unordered_map<std::string, long>		 	parameters;
	PhysicalFUInstance* correspond_physicalFUInstance;
	void addInputPort(const std::string&, int width);
	void addOutputPort(const std::string&, int width);
	void setBit(unsigned int*,unsigned int,unsigned int);
	void generateCfg(unsigned int*,unsigned int,unsigned int,unsigned int);
	inline unsigned int getFunctionSelect() const { return description->getFUFunction(funcname)->getFunctionSelect();}
protected:
	LogicalInputPort*  getInputPort(const std::string& i) const;
	LogicalOutputPort* getOutputPort(const std::string& o) const;
public:
	LogicalFUInstance(const LogicalFUInstance&);
	LogicalFUInstance& operator=(const LogicalFUInstance& obj){
		FUInstance::operator=(obj);
		return *this;
	}
	virtual void setParameter(const std::string&, long);

	LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc);
	virtual ~LogicalFUInstance();
	//FUInstance* getCorrespondence() const { return correspond_physicalFUInstance;}
	PhysicalFUInstance* correspondence()const {return correspond_physicalFUInstance;}
	void place(PhysicalFUInstance*);
	bool isPlaced(){ return correspond_physicalFUInstance != NULL;}
	double estimatePlacementDecisionCost(PhysicalFUInstance&);
	virtual double estimateConstantPlacementDecisionCost(ConstantPhysicalFUInstance&){ throw SideConfException("type mismatch");}
	virtual double estimateMemPlacementDecisionCost(MemPhysicalFUInstance&){throw SideConfException("typpe mismatch");}
	virtual PhysicalFUInstance* createPhysicalFUInstance(const std::string&);
	void generateCfgWord(unsigned int*);

};

#endif /* LOGICALFUINSTANCE_H_ */
