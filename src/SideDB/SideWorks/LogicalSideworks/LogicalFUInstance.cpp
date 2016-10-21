/*
 * LogicalFUInstance.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "LogicalFUInstance.h"
#include "FUDescription.h"
#include "Function.h"
#include "LogicalInputPort.h"
#include "LogicalOutputPort.h"
#include "SideConfException.h"
LogicalFUInstance::LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc)
:FUInstance(name,type,desc),
 funcname(func),
 correspond_physicalFUInstance(NULL){
	Function*  function = description->getFUFunction(funcname);
	for(auto arg: function->getArgs()){
		if(description->isInputPort(arg)){
			addInputPort(arg,description->getInputWidth(arg));
		}else if(description->isParameter(arg)){
			parameters.insert(std::make_pair(arg, 0L));
		}
	}
	for(auto o: description->getOutputPorts()){
		addOutputPort(o.first,o.second);
	}
}

LogicalFUInstance::~LogicalFUInstance() {
	// TODO Auto-generated destructor stub
}


void LogicalFUInstance::addInputPort(const std::string& name, int width){
	if(inports.find(name) ==inports.end()) inports.insert(std::make_pair(name, new LogicalInputPort(name,width,this)));
}

void LogicalFUInstance::addOutputPort(const std::string& name, int width){
	if(outports.find(name)==outports.end()) outports.insert(std::make_pair(name,new LogicalOutputPort(name,width,this)));
}

void LogicalFUInstance::place(FUInstance* pfu){
	if(correspond_physicalFUInstance != NULL) throw SideConfException("LogicalFUInstance" + name +"already has a placement to: "+correspond_physicalFUInstance->name);
	correspond_physicalFUInstance = pfu;
}

double LogicalFUInstance::estimatePlacementDecisionCost(FUInstance* pfu){
	int cost = 0 ;
	int l_degree = 1;
	for(auto i:inports){//logicalInput
		cost += i.second->calcCost(pfu->getInputPort(i.first));
		l_degree++;
	}
	for(auto o:outports){//logicalOutput
		cost += o.second->calcCost(pfu->getOutputPort(o.first));
		l_degree++;
	}
	double val = round(((double)cost)*pow(((double)std::max((pfu->size()+l_degree),l_degree)/(double)l_degree),0.1));
	std::cout<<"cost @"<<pfu->name<<":"<<cost<<" "<<val<<" "<<pfu->size()<<" "<<l_degree<<std::endl;
	//if(this->name == "bau_j_rdA") exit(0);
	return val;
}

