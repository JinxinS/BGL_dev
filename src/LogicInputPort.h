/*
 * LogicInputPort.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICINPUTPORT_H_
#define LOGICINPUTPORT_H_
#include "Port.h"
class LogicInputPort:public Port {
public:
	LogicInputPort(const std::string& name,int width,FUInstance* p);
	virtual ~LogicInputPort();
};

#endif /* LOGICINPUTPORT_H_ */
