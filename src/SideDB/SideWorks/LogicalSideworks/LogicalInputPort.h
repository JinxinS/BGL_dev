/*
 * LogicalInputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALINPUTPORT_H_
#define LOGICALINPUTPORT_H_

#include "InputPort.h"
class LogicalInputPort:public InputPort {
public:
	LogicalInputPort(const std::string& name,int width,FUInstance* p);
	virtual ~LogicalInputPort();
    int calcCost(Port* phyIn);
};

#endif /* LOGICALINPUTPORT_H_ */
