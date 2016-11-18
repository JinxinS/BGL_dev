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
class PhysicalInputPort;
class PhysicalOutputPort;
class PhysicalFUInstance:public FUInstance {
	friend class PhysicalSideworks;
	friend class LogicalFUInstance;
	friend class MemFUInstance;
	std::unordered_map<std::string, PhysicalInputPort*>	inports;
	std::unordered_map<std::string, PhysicalOutputPort*>outports;
	std::map<int,LogicalFUInstance*> correspond_LogicalFUInstance;
	int confBitPointer;
	protected:
	void addInputPort(const std::string&, int width);
	void addOutputPort(const std::string&, int width);
	inline PhysicalInputPort*  getInputPort(const std::string& i)const{ return inports.at(i);}
	inline PhysicalOutputPort* getOutputPort(const std::string& o)const{return outports.at(o);}
	public:
	PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc);
	virtual ~PhysicalFUInstance();
	int fanInSize();
	int fanOutSize();
	void place(LogicalFUInstance*,int);
	bool isPlaced(int simid);
	virtual double estimatePlacementDecisionCost(LogicalFUInstance&);
	void getReadXbarMuxCount(int*,int);
	int getConfSize();
	inline void setConfBitPointer(int v){ confBitPointer = v; }
};

#endif /* PHYSICALFUINSTANCE_H_ */
