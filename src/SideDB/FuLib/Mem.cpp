/*
 * Mem.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "Mem.h"
#include "Function.h"
#include "FUInstance.h"

const std::string Mem::TYPE 	 = "MEM";
const std::string Mem::FUNC_NAME = "SIW_AUTO_FUNC";
const std::string Mem::PROP_ID   = "id";
const std::string Mem::PROP_BASEADDRESS = "base_address";
const std::string Mem::PROP_AWIDTH      = "a_width";

Mem::Mem(int a_width, int d_width, int id)
:FUDescription(Mem::TYPE ),
 memid(id){
	addInputPort("data_in_a", d_width);
	addInputPort("data_in_b", d_width);
	addInputPort("write_a", 1);
	addInputPort("write_b", 1);
	addInputPort("address_a", a_width);
	addInputPort("address_b", a_width);
	addOutputPort("data_a", d_width);
	addOutputPort("data_b", d_width);
	addParameter("dly_a", 2);
	addParameter("dly_b", 2);
	Function* function = new Function(Mem::FUNC_NAME,0);
	function->addFunctionArg("data_in_a");
	function->addFunctionArg("data_in_b");
	function->addFunctionArg("write_a");
	function->addFunctionArg("write_b");
	function->addFunctionArg("address_a");
	function->addFunctionArg("address_b");
	function->addFunctionArg("dly_a");
	function->addFunctionArg("dly_b");

	addFUFunction(function);
}

Mem::~Mem() {
	// TODO Auto-generated destructor stub
}

LogicalFUInstance* Mem::createLogicalFUInstance(const std::string &name,const std::string &type,const std::string &func){
	return new MemFUInstance(name,type,func,this,this->memid);
}

MemFUInstance::MemFUInstance(const std::string &name,const std::string &type,const std::string &func, FUDescription* desc, int memid)
:LogicalFUInstance(name,type,func,desc)
{	
	this->addProperty(Mem::PROP_ID,memid);
	this->addProperty(Mem::PROP_AWIDTH,desc->getInputWidth("address_a"));
}

MemFUInstance::~MemFUInstance(){}

double MemFUInstance::estimateMemPlacementDecisionCost(MemPhysicalFUInstance& pfu){
	//	std::cout<<"estimate Cost"<<this->name<<" vs "<<pfu.name<<std::endl;
	return (this->getProperty(Mem::PROP_ID) == pfu.getProperty(Mem::PROP_ID)) ? 0:std::numeric_limits<double>::max() - 1;
}

PhysicalFUInstance* MemFUInstance::createPhysicalFUInstance(const std::string & name){
	return new MemPhysicalFUInstance(name,type,description, this->getProperty(Mem::PROP_ID));
}

MemPhysicalFUInstance::MemPhysicalFUInstance(const std::string &name,const std::string &type,FUDescription* desc,int memid)
:PhysicalFUInstance(name,type,desc)
{
	this->addProperty(Mem::PROP_ID,memid);
	this->addProperty(Mem::PROP_AWIDTH,desc->getInputWidth("address_a"));
}

MemPhysicalFUInstance::~MemPhysicalFUInstance(){}

