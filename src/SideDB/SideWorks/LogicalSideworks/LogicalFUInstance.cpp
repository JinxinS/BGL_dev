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
LogicalFUInstance::LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc)
:FUInstance(name,type,desc),
 funcname(func),
 parameters(){
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
	inports.insert(std::make_pair(name,(InputPort*) new LogicalInputPort(name,width,this)));
}

void LogicalFUInstance::addOutputPort(const std::string& name, int width){
	outports.insert(std::make_pair(name,(OutputPort*)new LogicalOutputPort(name,width,this)));
}
