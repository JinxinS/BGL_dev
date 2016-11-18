/*
 * Constant.cpp
 *
 *  Created on: Oct 20, 2016
 *      Author: songjinxin
 */

#include "Constant.h"
#include "Function.h"
const std::string Constant::TYPE		= "GENERIC_VALUE";
const std::string Constant::FUNC_NAME 	= "F_GENERIC_VALUE";
const std::string Constant::OUT			= "out";
const std::string Constant::PARAM		= "value";

Constant::Constant()
:FUDescription(TYPE){
	addOutputPort(OUT, 32);
	addParameter(PARAM, 32);
    Function* function = new Function(Constant::FUNC_NAME,0);
	addFUFunction(function);
	function->addFunctionArg(PARAM);
}

Constant::~Constant() {
	// TODO Auto-generated destructor stub
}

LogicalFUInstance* Constant::createLogicalFUInstance(const std::string &name,const std::string &type,const std::string &func){
	return new ConstantFUInstance(name,type,func,this);
}

ConstantFUInstance::ConstantFUInstance(const std::string &name,const std::string &type,const std::string &func, FUDescription* desc)
:LogicalFUInstance(name,type,func,desc),
 value(0){}

ConstantFUInstance::~ConstantFUInstance(){}

void ConstantFUInstance::setParameter(const std::string& param, long val){
	if(Constant::PARAM == param) value = val;
	LogicalFUInstance::setParameter(param,val);
}

double ConstantFUInstance::estimateConstantPlacementDecisionCost(ConstantPhysicalFUInstance& pfu){
//	std::cout<<"estimate Cost"<<this->name<<" vs "<<pfu.name<<std::endl;
	return (this->value == pfu.value) ? 0:std::numeric_limits<double>::max() - 1;
}

PhysicalFUInstance* ConstantFUInstance::createPhysicalFUInstance(const std::string &name){
	return new ConstantPhysicalFUInstance(name,type,value,description);
}

ConstantPhysicalFUInstance::ConstantPhysicalFUInstance(const std::string &name,const std::string &type,int val,FUDescription* desc)
:PhysicalFUInstance(name,type,desc),
 value(val){}

ConstantPhysicalFUInstance::~ConstantPhysicalFUInstance(){}

