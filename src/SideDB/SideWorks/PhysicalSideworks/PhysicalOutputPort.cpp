/*
 * PhysicalOutputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <PhysicalOutputPort.h>
#include "InputPort.h"

PhysicalOutputPort::PhysicalOutputPort(const std::string& name,int width,FUInstance* p)
:OutputPort(name, width, p){
	// TODO Auto-generated constructor stub

}

PhysicalOutputPort::~PhysicalOutputPort() {
	// TODO Auto-generated destructor stub
}

double PhysicalOutputPort::calcCost(Port* logIn){
	if(logIn->isPlaced()){
		for(auto i: destination_inputs){
			if(i->strictMatch(logIn)) return 0;
		}
		return 16*width;
	}else{
		int num_possible_ports = 0;
		for(auto i: destination_inputs){
			if(i->match(logIn)) ++num_possible_ports;
		}
		return 16/pow(2,num_possible_ports)*width;
	}
}
