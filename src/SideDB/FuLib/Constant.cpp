/*
 * Constant.cpp
 *
 *  Created on: Oct 20, 2016
 *      Author: songjinxin
 */

#include "Constant.h"
#include "Function.h"
const std::string Constant::TYPE = "GENERIC_VALUE";
const std::string Constant::FUNC_NAME = "F_GENERIC_VALUE";

Constant::Constant()
:FUDescription(TYPE){
	addOutputPort("out", 32);
	addParameter("value", 32);
    Function* function = new Function(Constant::FUNC_NAME,0);
	addFUFunction(function);
	function->addFunctionArg("value");
}

Constant::~Constant() {
	// TODO Auto-generated destructor stub
}

FUInstance* Constant::createLogicalFUInstance(const std::string &name,const std::string &type,const std::string &func){
	return new ConstantFUInstance(name,type,func,this);
}

ConstantFUInstance::ConstantFUInstance(const std::string &name,const std::string &type,const std::string &func, FUDescription* desc)
:LogicalFUInstance(name,type,func,desc),
 value(0){}

ConstantFUInstance::~ConstantFUInstance(){}

void ConstantFUInstance::setParameter(const std::string& param, long val){
	value = val;
	FUInstance::setParameter(param,val);
}

double ConstantFUInstance::estimatePlacementDecisionCost(FUInstance* pfu){
	if(this->value == dynamic_cast<ConstantPhysicalFUInstance*>(pfu)->value){
		return 0;
	}else return std::numeric_limits<double>::max() - 1;
}

FUInstance* ConstantFUInstance::createPhysicalFUInstance(const std::string &name){
	return new ConstantPhysicalFUInstance(name,type,value,description);
}



ConstantPhysicalFUInstance::ConstantPhysicalFUInstance(const std::string &name,const std::string &type,int val,FUDescription* desc)
:PhysicalFUInstance(name,type,desc),
 value(val){}

ConstantPhysicalFUInstance::~ConstantPhysicalFUInstance(){}

