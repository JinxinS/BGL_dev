/*
 * FUInstance.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include <FUInstance.h>

FUInstance::FUInstance(const FUInstance& obj)
:name(obj.name),
 type(obj.type),
 description(obj.description),
 inports(obj.inports),
 outports(obj.outports){}

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
 outports()
{
	// TODO Auto-generated constructor stub
}

FUInstance::~FUInstance() {
	// TODO Auto-generated destructor stub
}

