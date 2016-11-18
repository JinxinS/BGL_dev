/*
 * LogicalOutputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <LogicalOutputPort.h>
#include "PhysicalOutputPort.h"
#include "InputPort.h"
LogicalOutputPort::LogicalOutputPort(const std::string& name,int width,LogicalFUInstance* p)
:OutputPort(name, width),
 owner(p)
{
	// TODO Auto-generated constructor stub

}

LogicalOutputPort::~LogicalOutputPort() {
	// TODO Auto-generated destructor stub
}

double LogicalOutputPort::calcCost(PhysicalOutputPort* phyOut){
	//std::cout<<"calc logiOut"<<this->name << "----------\n";
	double cost  = 0;
	if(this->isConnected()){
		for(auto logIn:destination_inputs)
			cost += phyOut->calcCost(logIn);
	}
	return cost;
}

//bool LogicalOutputPort::match_p(PhysicalOutputPort* p){
////	bool ret = ((p->getName() == this->name) && (*p->owner == *this->owner));
////	std::cout<<"match "<<this->name<<":"<<this->owner->name<<"["<<this->owner->type<<"] <->"<<p->getName()<<":"<<p->owner->name<<"["<<p->owner->type<<"]"<<"?"<<ret<<std::endl;
//	return ((p->getName() == this->name) && (*p->owner == *this->owner));
//}
//
//bool LogicalOutputPort::strictMatch_p(PhysicalOutputPort* p){
////	std::cout<<"strict :? "<<(this->owner->correspondence(0) == p->owner)<<std::endl;
//	return this->match_p(p) && (this->owner->correspondence() == p->owner);
//}
