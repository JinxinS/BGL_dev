/*
 * LogicalInputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALINPUTPORT_H_
#define LOGICALINPUTPORT_H_

#include "InputPort.h"
#include "LogicalFUInstance.h"
class PhysicalInputPort;
class LogicalInputPort:public InputPort {
	LogicalFUInstance* owner;
public:
	LogicalInputPort& operator=(const LogicalInputPort&);
	LogicalInputPort(const LogicalInputPort& obj);
	LogicalInputPort(const std::string& name,int width,LogicalFUInstance* p);
	virtual ~LogicalInputPort();
	bool isPlaced() { return owner->isPlaced() ; }
	void setMuxSelect(OutputPort*,int);
	inline int getMuxSelect()const { return (*source_outputs.begin()).second;}
	double calcCost(PhysicalInputPort* phyIn);
	FUInstance* getOwner()const { return owner;}

	//    bool match_p(PhysicalInputPort* p);
	//    bool strictMatch_p(PhysicalInputPort* p);
};

#endif /* LOGICALINPUTPORT_H_ */
