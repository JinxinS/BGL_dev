/*
 * PhysicalInputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <PhysicalInputPort.h>
#include "OutputPort.h"

PhysicalInputPort::PhysicalInputPort(const std::string& name,int width,FUInstance* p)
:InputPort(name, width, p),
 xbarBitPointer(0)
{
	// TODO Auto-generated constructor stub
}

PhysicalInputPort::~PhysicalInputPort() {
	// TODO Auto-generated destructor stub
}

double PhysicalInputPort::calcCost(Port* logOut){
	if(logOut->isPlaced()){
		for(auto o: source_outputs){
			if(o.first->strictMatch(logOut)) return 0;
		}
		return 16*width;
	}else{
		int num_possible_ports = 0;
		for(auto o: source_outputs){
			if(o.first->match(logOut)) ++num_possible_ports;
		}
		return 16/pow(2,num_possible_ports)*width;
	}
}

int PhysicalInputPort::getConfSize(){
    return ceil(log(source_outputs.size())/log(2));
}

