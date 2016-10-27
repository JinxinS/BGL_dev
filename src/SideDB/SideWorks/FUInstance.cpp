/*
 * FUInstance.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include <FUInstance.h>
#include "OutputPort.h"
#include "InputPort.h"

FUInstance::FUInstance(const FUInstance& obj)
:name(obj.name),
 type(obj.type),
 description(obj.description),
 inports(obj.inports),
 outports(obj.outports),
 parameters(obj.parameters){}

//FUInstance& FUInstance::operator=(const FUInstance& obj){
////	FUInstance tmp(obj);
////	*this = std::move(tmp);
//	return *this;
//}


FUInstance::FUInstance(const std::string& name, const std::string& type, FUDescription* desc)
:name(name),
 type(type),
 description(desc),
 inports(),
 outports(),
 parameters()
{
	// TODO Auto-generated constructor stub
}

FUInstance::~FUInstance() {
	// TODO Auto-generated destructor stub
}

void FUInstance::setParameter(const std::string& param, long value){
	parameters.at(param) = value;
}

InputPort* FUInstance::getInputPort(const std::string& i){
	return inports.at(i);
}

OutputPort* FUInstance::getOutputPort(const std::string& o){
	return outports.at(o);
}

bool FUInstance::isConnected(const std::string& o, FUInstance* dst,const std::string& i){
	return outports.at(o)->isConnected(dst->getInputPort(i)) &&
			dst->getInputPort(i)->isConnected(outports.at(o));
}

int FUInstance::connect(const std::string& o, FUInstance* dst,const std::string& i){
	return outports.at(o)->connect(dst->getInputPort(i));
}

int FUInstance::fanInSize(){
	int sz = 0;
	for(auto i: inports){
		sz += i.second->size();
	}
	return sz;
}

int FUInstance::fanOutSize(){
	int sz = 0;
	for(auto o: outports){
		sz += o.second->size();
	}
	return sz;
}
