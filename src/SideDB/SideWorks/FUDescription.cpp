/*
 * FUDescription.cpp
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#include "FUDescription.h"
#include "Function.h"
#include "SideConfException.h"
#include "LogicalFUInstance.h"
#include <math.h>
FUDescription::FUDescription(const std::string& type)
	: type(type),
	input_ports_width(),
	output_ports_width(),
	parameters_width(),
	function_descriptions(){
		// TODO Auto-generated constructor stub

	}

FUDescription::~FUDescription() {
	// TODO Auto-generated destructor stub
}

void FUDescription::addInputPort(const std::string& name,int width){
	std::pair<std::unordered_map<std::string,int>::iterator,bool> ret;
	ret = input_ports_width.insert(make_pair(name, width) );
	if(!ret.second) throw SideConfException("can not add InputPort!");
}

void FUDescription::addOutputPort(const std::string& name,int width){
	std::pair<std::unordered_map<std::string,int>::iterator,bool> ret;
	ret = output_ports_width.insert(make_pair(name, width) );
	//  if(!ret.second) throw SideConfException("can not add OutputPort!");
}

void FUDescription::addParameter(const std::string& name,int width){
	std::pair<std::unordered_map<std::string,int>::iterator,bool> ret;
	ret = parameters_width.insert(make_pair(name, width) );
	if(!ret.second) throw SideConfException("can not add Parameter!");
}

void FUDescription::addFUFunction(Function* function){
	std::pair<std::unordered_map<std::string,Function*>::iterator,bool> ret;
	ret = function_descriptions.insert(make_pair(function->getFunctionName(), function) );
	if(!ret.second) throw SideConfException("can not add Function!");
}

bool FUDescription::isInputPort(const std::string& arg){
	return (input_ports_width.find(arg) != input_ports_width.end());
}

bool FUDescription::isParameter(const std::string& arg){
	return (parameters_width.find(arg) != parameters_width.end());
}

Function* FUDescription::getFUFunction(const std::string& funcname){
	return function_descriptions.at(funcname);
}

LogicalFUInstance* FUDescription::createLogicalFUInstance(const std::string &name,const std::string &type,const std::string &func){
	return new LogicalFUInstance(name,type,func,this);
}

int FUDescription::getConfSize(){
	int param_size = 0;
	for (auto p = parameters_width.begin();  p != parameters_width.end(); ++p){
		param_size += p->second;
	}
	return  getFunctionConfSize() + param_size;
}

int FUDescription::getFunctionConfSize(){
	return static_cast<int>(ceil(std::log( function_descriptions.size() )/std::log(2))) ;
}
