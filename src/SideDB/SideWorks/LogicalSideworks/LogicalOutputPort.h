/*
 * LogicalOutputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALOUTPUTPORT_H_
#define LOGICALOUTPUTPORT_H_
#include "OutputPort.h"
#include "LogicalFUInstance.h"
class PhysicalOutputPort;
class LogicalOutputPort :public OutputPort{
	LogicalFUInstance* owner;
public:
	LogicalOutputPort& operator=(const LogicalOutputPort&);
	LogicalOutputPort(const LogicalOutputPort& obj);
    LogicalOutputPort(const std::string& name,int width,LogicalFUInstance* p);
	virtual ~LogicalOutputPort();
    double calcCost(PhysicalOutputPort* phyOut);
    bool isPlaced() { return owner->isPlaced() ; }
    FUInstance* getOwner()const { return owner;}

//    bool match_p(PhysicalOutputPort* p);
//    bool strictMatch_p(PhysicalOutputPort* p);
};

#endif /* LOGICALOUTPUTPORT_H_ */
