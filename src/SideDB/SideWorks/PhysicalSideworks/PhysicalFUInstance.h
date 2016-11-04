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
class InputPort;
class OutputPort;
class PhysicalInputPort;
class PhysicalOutputPort;
class PhysicalFUInstance:public FUInstance {
	friend class PhysicalSideworks;
	friend class LogicalFUInstance;
	std::unordered_map<std::string, PhysicalInputPort*>	inports;
	std::unordered_map<std::string, PhysicalOutputPort*>outports;
	std::map<int,FUInstance*> correspond_LogicalFUInstance;
	int confBitPointer;
	void addInputPort(const std::string&, int width);
	void addOutputPort(const std::string&, int width);
protected:
	InputPort*  getInputPort(const std::string& i) const;
	OutputPort* getOutputPort(const std::string& o) const;
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
	int getConfSize();
    inline void setConfBitPointer(int v){ confBitPointer = v; }
};

#endif /* PHYSICALFUINSTANCE_H_ */
