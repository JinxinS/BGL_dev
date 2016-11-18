/*
 * LogicalInputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <LogicalInputPort.h>
#include "OutputPort.h"
#include "PhysicalInputPort.h"
LogicalInputPort::LogicalInputPort(const std::string& name,int width,LogicalFUInstance* p)
: InputPort(name, width),
  owner(p){
	// TODO Auto-generated constructor stub
}

LogicalInputPort::~LogicalInputPort() {
	// TODO Auto-generated destructor stub
}

double LogicalInputPort::calcCost(PhysicalInputPort* phyIn){
	//std::cout<<"calc logiin"<<this->name << "----------\n";
	if(this->isConnected()){
		return phyIn->calcCost((*source_outputs.begin()).first);
	}else{
		return 0;
	}
}

//bool LogicalInputPort::match_p(PhysicalInputPort* p){
////	bool ret = ((p->getName() == this->name) && (*p->owner == *this->owner));
////	std::cout<<"match "<<this->name<<":"<<this->owner->name<<"["<<this->owner->type<<"] <->"<<p->getName()<<":"<<p->owner->name<<"["<<p->owner->type<<"]"<<"?"<<ret<<std::endl;
//	return ((p->getName() == this->name) && (*p->owner == *this->owner));
//}
//
//bool LogicalInputPort::strictMatch_p(PhysicalInputPort* p){
////	std::cout<<"strict :? "<<(this->owner->correspondence(0) == p->owner)<<std::endl;
//	return this->match_p(p) && (this->owner->correspondence() == p->owner);
//}

void LogicalInputPort::setMuxSelect(OutputPort* out,int muxselect){
	source_outputs.at(out) = muxselect;
}
