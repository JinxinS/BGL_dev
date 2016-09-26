/*
 * LogicalOutputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <LogicalOutputPort.h>

LogicalOutputPort::LogicalOutputPort(const std::string& name,int width,FUInstance* p)
:Port(name, width, p),
 destination_input()
{
	// TODO Auto-generated constructor stub

}

LogicalOutputPort::~LogicalOutputPort() {
	// TODO Auto-generated destructor stub
}

