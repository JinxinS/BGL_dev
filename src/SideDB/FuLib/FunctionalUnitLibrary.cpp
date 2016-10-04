/*
 * FunctionalUnitLibrary.cpp
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#include "FunctionalUnitLibrary.h"
#include "LogicalFUInstance.h"
#include "PhysicalFUInstance.h"
#include "LogicalMemFUInstance.h"
#include "SideConfException.h"
#include "Control.h"
#include "Mem.h"
FunctionalUnitLibrary::FunctionalUnitLibrary():
fu_desc_list(){
	loadInternelFunctionalLib();
}

FunctionalUnitLibrary::~FunctionalUnitLibrary() {
	// TODO Auto-generated destructor stub
}

void FunctionalUnitLibrary::loadInternelFunctionalLib() {
	fu_desc_list.insert(std::make_pair("SIW_CTRL",new Control()));
	fu_desc_list.insert(std::make_pair("MEM",new Mem(12,12,4096)));
}

void FunctionalUnitLibrary::addFUDescription(const std::string &type,FUDescription* fu_desc){
	 bool ok =  fu_desc_list.insert(std::make_pair(type,fu_desc)).second;
	 if(!ok) BOOST_LOG_TRIVIAL(warning)<<"can't add addFUDescription:"<<type;
}

FUInstance* FunctionalUnitLibrary::getLogicalFUInstance(const std::string &type,const std::string &name,const std::string &func) const{
	FUDescription* desc;
	try{
		desc = fu_desc_list.at(type);
	}catch(std::out_of_range& e){
		throw SideConfException("can not find [" + type + "] in library");
	}
	return new LogicalFUInstance(name,type,func,desc);
}

FUInstance* FunctionalUnitLibrary::getLogicalMEMInstance(const std::string &name,int a_width,int d_width,int nwords) const{
	return new LogicalMemFUInstance(name,a_width,d_width,nwords);
}

FUInstance* FunctionalUnitLibrary::getPhysicalFUInstance(const std::string &type,const std::string &name) const{
	FUDescription* desc;
	try{
		desc = fu_desc_list.at(type);
	}catch(std::out_of_range& e){
		throw SideConfException("can not find [" + type + "] in library");
	}
	return new PhysicalFUInstance(name,type,desc);
}
