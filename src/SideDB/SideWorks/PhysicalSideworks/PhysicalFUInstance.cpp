/*
 * PhysicalFUInstance.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <PhysicalFUInstance.h>
#include "FUDescription.h"
#include "PhysicalInputPort.h"
#include "PhysicalOutputPort.h"

PhysicalFUInstance::PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc)
:FUInstance(name,type,desc)
{
	for(auto i: description->getInputPorts()){
		addInputPort(i.first,i.second);
	}

	for(auto o: description->getOutputPorts()){
		addOutputPort(o.first,o.second);
	}
}

PhysicalFUInstance::~PhysicalFUInstance() {
	// TODO Auto-generated destructor stub
}

void PhysicalFUInstance::addInputPort(const std::string& name, int width){
	inports.insert(std::make_pair(name, new PhysicalInputPort(name,width,this)));
}

void PhysicalFUInstance::addOutputPort(const std::string& name, int width){
	outports.insert(std::make_pair(name,new PhysicalOutputPort(name,width,this)));
}
