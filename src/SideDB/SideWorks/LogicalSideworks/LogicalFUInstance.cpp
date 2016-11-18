/*
 * LogicalFUInstance.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "LogicalFUInstance.h"
#include "FUDescription.h"
#include "Function.h"
#include "LogicalInputPort.h"
#include "LogicalOutputPort.h"
#include "SideConfException.h"
#include "PhysicalFUInstance.h"
#include "PhysicalInputPort.h"
LogicalFUInstance::LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc)
:FUInstance(name,type,desc),
 funcname(func),
 inports(),
 outports(),
 parameters(),
 correspond_physicalFUInstance(NULL)
{
	Function*  function = description->getFUFunction(funcname);
	for(auto arg: function->getArgs()){
		if(description->isInputPort(arg)){
			addInputPort(arg,description->getInputWidth(arg));
		}else if(description->isParameter(arg)){
			parameters.insert(std::make_pair(arg, 0L));
		}
	}
	for(auto o: description->output_ports_width){
		addOutputPort(o.first,o.second);
	}
}

LogicalFUInstance::~LogicalFUInstance() {
	// TODO Auto-generated destructor stub
}


void LogicalFUInstance::addInputPort(const std::string& name, int width){
	if(inports.find(name) ==inports.end()) inports.insert(std::make_pair(name, new LogicalInputPort(name,width,this)));
}

void LogicalFUInstance::addOutputPort(const std::string& name, int width){
	if(outports.find(name)==outports.end()) outports.insert(std::make_pair(name,new LogicalOutputPort(name,width,this)));
}

LogicalInputPort* LogicalFUInstance::getInputPort(const std::string& i)const{
	return inports.at(i);
}

LogicalOutputPort* LogicalFUInstance::getOutputPort(const std::string& o)const{
	return outports.at(o);
}

void LogicalFUInstance::setParameter(const std::string& param, long value){
	parameters.at(param) = value;
}

void LogicalFUInstance::place(PhysicalFUInstance* pfu){
	if(correspond_physicalFUInstance != NULL) throw SideConfException("LogicalFUInstance" + name +"already has a placement to: "+correspond_physicalFUInstance->name);
	correspond_physicalFUInstance = pfu;
}

double LogicalFUInstance::estimatePlacementDecisionCost(PhysicalFUInstance& pfu){
	double cost = 0 ;
	int l_degree = 1;
	for(auto i:inports){//logicalInput
		cost += i.second->calcCost(pfu.getInputPort(i.first));
		l_degree++;
	}
	for(auto o:outports){//logicalOutput
		cost += o.second->calcCost(pfu.getOutputPort(o.first));
		l_degree++;
	}
	double val = round(((double)cost)*pow(((double)std::max((pfu.fanInSize()+l_degree),l_degree)/(double)l_degree),0.1));
	//	std::cout<<"cost @"<<pfu->name<<":"<<cost<<" "<<val<<" "<<pfu->fanInSize()<<pfu->fanOutSize()<<" "<<l_degree<<std::endl;
	return val;
} 

PhysicalFUInstance* LogicalFUInstance::createPhysicalFUInstance(const std::string &name){ return new PhysicalFUInstance(name,type,description); }

void LogicalFUInstance::setBit(unsigned int* cfgWord, unsigned int bitval, unsigned int pos){
	std::div_t result = std::div(pos,32);
	int word_pos = result.quot;
	int bit_pos = result.rem;

	if(bitval) {
		cfgWord[word_pos] |= (0x1 << bit_pos);
	}
	else{
		cfgWord[word_pos] &= ( ~(0x1 << bit_pos) );
	}
}

void LogicalFUInstance::generateCfg(unsigned int* cfgWord,unsigned int value,unsigned int width,unsigned int startpos){
	if(width == 0)  return;
	for (unsigned int i = 0; i < width; i++){
		setBit(cfgWord, ( ( (value >> i) & 0x1 ) == 1 ),startpos + i );
	}
}

void LogicalFUInstance::generateCfgWord(unsigned int* cfgWord){
	unsigned int bit_pos   = correspond_physicalFUInstance->confBitPointer;
	unsigned int bit_width = description->getFunctionConfSize();
	generateCfg(cfgWord,getFunctionSelect(), bit_width, bit_pos);
	bit_pos += bit_width;
	
	for(auto p: this->parameters){
		bit_width = description->getParameterWidth(p.first);
		generateCfg(cfgWord,p.second,bit_width,bit_pos);
		bit_pos += bit_width;
	}

	for(auto i: this->inports){
		auto p = correspond_physicalFUInstance->getInputPort(i.first);
		bit_width = p->getConfSize();
		generateCfg(cfgWord,i.second->getMuxSelect(),bit_width,p->getXbarBitPointer());
	}
}

