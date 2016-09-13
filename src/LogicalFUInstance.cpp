/*
 * LogicalFUInstance.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "LogicalFUInstance.h"
#include "FUDescription.h"
#include "Function.h"
#include "LogicInputPort.h"
#include "LogicOutputPort.h"
LogicalFUInstance::LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc)
:FUInstance(type,name,desc),
 funcname(func),
 inports(),
 outports(),
 parameters(){
	Function*  function = description->getFUFunction(funcname);
	for(auto arg: function->getArgs()){
		if(description->isInputPort(arg)){
			inports.insert(std::make_pair(arg, new LogicInputPort(arg,description->getInputWidth(arg),this)));
		}else if(description->isParameter(arg)){
			parameters.insert(std::make_pair(arg, 0L));
		}
	}
	for(auto o: description->getOutputPorts()){
		outports.insert(std::make_pair(o.first,new LogicOutputPort(o.first,o.second,this)));
	}
}

LogicalFUInstance::~LogicalFUInstance() {
	// TODO Auto-generated destructor stub
}


