/*
 * Port.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "Port.h"
#include "FUInstance.h"
#include "PhysicalFUInstance.h"
Port::Port(const std::string& name, int width)
: name(name),
  width(width)
{
	// TODO Auto-generated constructor stub

}

Port::~Port() {
	// TODO Auto-generated destructor stub
}

bool Port::match(Port* p){
//	bool ret = ((p->name == this->name) && (p->parent->type == this->parent->type));
//	std::cout<<"match "<<this->name<<":"<<this->parent->name<<"["<<this->parent->type<<"]"<<p->parent->name<<"["<<p->parent->type<<"]"<<"?"<<ret<<std::endl;
	return ((p->name == this->name) && (*p->getOwner() == *this->getOwner()));
}

bool Port::strictMatch(Port* p){
//	std::cout<<"strict";
	return this->match(p) && (this->getOwner()->name == p->getOwner()->correspondence()->name);
}
