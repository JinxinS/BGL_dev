/*
 * PhysicalFUInstance.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include "PhysicalFUInstance.h"
#include "LogicalFUInstance.h"
#include "FUDescription.h"
#include "PhysicalInputPort.h"
#include "PhysicalOutputPort.h"
#include "SideConfException.h"
PhysicalFUInstance::PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc)
:FUInstance(name,type,desc),
 inports(),
 outports(),
 correspond_LogicalFUInstance(),
 confBitPointer(0)
{
	for(auto i: description->input_ports_width){
		addInputPort(i.first,i.second);
	}

	for(auto o: description->output_ports_width){
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

InputPort* PhysicalFUInstance::getInputPort(const std::string& i)const{
	return inports.at(i);
}

OutputPort* PhysicalFUInstance::getOutputPort(const std::string& o)const{
	return outports.at(o);
}

void PhysicalFUInstance::place(FUInstance* lfu,int simid){
	correspond_LogicalFUInstance.insert(std::make_pair(simid,lfu));
}

bool PhysicalFUInstance::isPlaced(int simid){
	return correspond_LogicalFUInstance.find(simid)!=correspond_LogicalFUInstance.end();
}

double PhysicalFUInstance::estimatePlacementDecisionCost(LogicalFUInstance* lfu){
	return lfu->estimatePlacementDecisionCost(this);
}

void PhysicalFUInstance::getReadXbarMuxCount(int* muxCount,int maxsz){
	for(auto i: inports){
		if(i.second->size() >= maxsz) throw SideConfException(i.first+"exceed maximum allowed mux size of "+std::to_string(maxsz));
		muxCount[i.second->size()] += i.second->width;
	}
}

int PhysicalFUInstance::getConfSize(){
    return description->getConfSize();
}

int PhysicalFUInstance::fanInSize(){
	int sz = 0;
	for(auto i: inports){
		sz += i.second->size();
	}
	return sz;
}
int PhysicalFUInstance::fanOutSize(){
	int sz = 0;
	for(auto o: outports){
		sz += o.second->size();
	}
	return sz;
}
