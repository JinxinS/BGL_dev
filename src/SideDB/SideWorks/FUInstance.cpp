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
 description(obj.description){}

FUInstance& FUInstance::operator=(const FUInstance& obj){
	FUInstance tmp(obj);
	*this = std::move(tmp);
	return *this;
}


FUInstance::FUInstance(const std::string& name, const std::string& type, FUDescription* desc)
:name(name),
 type(type),
 description(desc){
	// TODO Auto-generated constructor stub
}

FUInstance::~FUInstance() {
	// TODO Auto-generated destructor stub
}

