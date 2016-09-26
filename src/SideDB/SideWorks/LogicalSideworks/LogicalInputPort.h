/*
 * LogicalInputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALINPUTPORT_H_
#define LOGICALINPUTPORT_H_

#include "Port.h"
class LogicalInputPort:public Port {
public:
	LogicalInputPort(const std::string& name,int width,FUInstance* p);
	virtual ~LogicalInputPort();
};

#endif /* LOGICALINPUTPORT_H_ */
