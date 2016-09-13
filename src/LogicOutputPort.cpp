/*
 * LogicOutputPort.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "LogicOutputPort.h"

LogicOutputPort::LogicOutputPort(const std::string& name,int width,FUInstance* p)
:Port(name, width, p),
 destination_input()
{
	// TODO Auto-generated constructor stub

}

LogicOutputPort::~LogicOutputPort() {
	// TODO Auto-generated destructor stub
}

