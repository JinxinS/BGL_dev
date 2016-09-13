/*
 * LogicOutputPort.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICOUTPUTPORT_H_
#define LOGICOUTPUTPORT_H_
#include <list>
#include "Port.h"
class LogicInputPort;
class LogicOutputPort :public Port{
    std::list<LogicInputPort*> destination_input;
public:
    LogicOutputPort(const std::string& name,int width,FUInstance* p);
	virtual ~LogicOutputPort();
};

#endif /* LOGICOUTPUTPORT_H_ */
