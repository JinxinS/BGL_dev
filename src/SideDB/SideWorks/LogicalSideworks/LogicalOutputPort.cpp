/*
 * LogicalOutputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <LogicalOutputPort.h>
#include "LogicalInputPort.h"
LogicalOutputPort::LogicalOutputPort(const std::string& name,int width,FUInstance* p)
:OutputPort(name, width, p),
 destination_input()
{
	// TODO Auto-generated constructor stub

}

LogicalOutputPort::~LogicalOutputPort() {
	// TODO Auto-generated destructor stub
}

int LogicalOutputPort::calcCost(Port* phyOut){
	int cost  = 0;
	if(this->isConnected()){
		for(auto logIn:destination_input)
			cost += phyOut->calcCost(logIn);
	}
	return cost;
}
