/*
 * FunctionalUnitLibrary.cpp
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#include <SideDB/FuLib/Fixed.h>
#include "FunctionalUnitLibrary.h"
#include "LogicalFUInstance.h"
#include "PhysicalFUInstance.h"
#include "SideConfException.h"
#include "Control.h"
#include "Mem.h"
#include "Fixed.h"
#include "Constant.h"
FunctionalUnitLibrary::FunctionalUnitLibrary():
fu_desc_list(){
	loadInternelFunctionalLib();
}

FunctionalUnitLibrary::~FunctionalUnitLibrary() {
	// TODO Auto-generated destructor stub
}

void FunctionalUnitLibrary::loadInternelFunctionalLib() {
	for (size_t i = 0, n = sizeof(Fixed::TYPES) / sizeof(Fixed::TYPES[0]); i < n; ++i){
		fu_desc_list.insert(std::make_pair(Fixed::TYPES[i],new Fixed(Fixed::TYPES[i])));
	}
	fu_desc_list.insert(std::make_pair(Control::TYPE,new Control()));
	fu_desc_list.insert(std::make_pair(Mem::TYPE,new Mem(12,12,4096)));
	fu_desc_list.insert(std::make_pair(Constant::TYPE,new Constant()));
}

void FunctionalUnitLibrary::addFUDescription(const std::string &type,FUDescription* fu_desc){
	 bool ok =  fu_desc_list.insert(std::make_pair(type,fu_desc)).second;
	 if(!ok) {
		 BOOST_LOG_TRIVIAL(warning)<<"can't add addFUDescription:"<<type;
		 delete fu_desc;
	 }
}

FUInstance* FunctionalUnitLibrary::getLogicalFUInstance(const std::string &name,const std::string &type,const std::string &func)const{
	FUDescription* desc;
	try{
		desc = fu_desc_list.at(type);
	}catch(std::out_of_range& e){
		throw SideConfException("can not find [" + type + "] in library");
	}
	return new LogicalFUInstance(name,type,func,desc);
}

FUInstance* FunctionalUnitLibrary::getLogicalMEMInstance(const std::string &name,int a_width,int d_width,int nwords,const std::string &memid) {
	std::string mtype(Mem::TYPE + memid);
	if(fu_desc_list.find(mtype) == fu_desc_list.end())
	fu_desc_list.insert(std::make_pair(mtype,new Mem(a_width,d_width,nwords)));
	return getLogicalFUInstance(name,mtype,Mem::FUNC_NAME);
}

FUInstance* FunctionalUnitLibrary::getPhysicalFUInstance(const std::string &name,const std::string &type)const{
	FUDescription* desc;
	try{
		desc = fu_desc_list.at(type);
	}catch(std::out_of_range& e){
		throw SideConfException("can not find [" + type + "] in library");
	}
	return new PhysicalFUInstance(name,type,desc);
}
