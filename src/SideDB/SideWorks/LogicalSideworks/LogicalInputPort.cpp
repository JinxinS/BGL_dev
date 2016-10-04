/*
 * LogicalInputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <LogicalInputPort.h>
#include "OutputPort.h"

LogicalInputPort::LogicalInputPort(const std::string& name,int width,FUInstance* p)
: InputPort(name, width, p)
 {
	// TODO Auto-generated constructor stub

}

LogicalInputPort::~LogicalInputPort() {
	// TODO Auto-generated destructor stub
}

int LogicalInputPort::calcCost(Port* phyIn){
	if(this->isConnected()){
		return phyIn->calcCost((*source_outputs.begin()).first);
	}else{
		return 0;
	}
}

