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
#include "SideConfException.h"
PhysicalFUInstance::PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc)
:FUInstance(name,type,desc),
 correspond_LogicalFUInstance()
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
	inports.insert(std::make_pair(name, (InputPort*)new PhysicalInputPort(name,width,this)));
}

void PhysicalFUInstance::addOutputPort(const std::string& name, int width){
	outports.insert(std::make_pair(name,(OutputPort*)new PhysicalOutputPort(name,width,this)));
}

void PhysicalFUInstance::place(FUInstance* lfu,int simid){
	correspond_LogicalFUInstance.insert(std::make_pair(simid,lfu));
}

bool PhysicalFUInstance::isPlaced(int simid){
	return correspond_LogicalFUInstance.find(simid)!=correspond_LogicalFUInstance.end();
}

void PhysicalFUInstance::getReadXbarMuxCount(int* muxCount,int maxsz){
	for(auto i: inports){
		if(i.second->size() >= maxsz) throw SideConfException(i.first+"exceed maximum allowed mux size of "+std::to_string(maxsz));
		muxCount[i.second->size()] += i.second->width;
	}
}

