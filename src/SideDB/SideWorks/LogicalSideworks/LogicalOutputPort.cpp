/*
 * LogicalOutputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <LogicalOutputPort.h>
#include "LogicalInputPort.h"
LogicalOutputPort::LogicalOutputPort(const std::string& name,int width,FUInstance* p)
:OutputPort(name, width, p)
{
	// TODO Auto-generated constructor stub

}

LogicalOutputPort::~LogicalOutputPort() {
	// TODO Auto-generated destructor stub
}

double LogicalOutputPort::calcCost(Port* phyOut){
//	std::cout<<"calc logiOut"<<this->name << "----------\n";
	double cost  = 0;
	if(this->isConnected()){
		for(auto logIn:destination_inputs)
			cost += phyOut->calcCost(logIn);
	}
	return cost;
}
