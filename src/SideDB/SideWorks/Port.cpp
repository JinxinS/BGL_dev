/*
 * Port.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "Port.h"
#include "FUInstance.h"
Port::Port(const std::string& name, int width, FUInstance* p)
: name(name),
  width(width),
  parent(p)
{
	// TODO Auto-generated constructor stub

}

Port::~Port() {
	// TODO Auto-generated destructor stub
}

bool Port::match(Port* p){
	bool ret = ((p->name == this->name) && (p->parent->type == this->parent->type));
//	std::cout<<"match "<<this->name<<":"<<this->parent->name<<"["<<this->parent->type<<"]"<<p->parent->name<<"["<<p->parent->type<<"]"<<"?"<<ret<<std::endl;
	return ((p->name == this->name) && (p->parent->type == this->parent->type));
}

bool Port::strictMatch(Port* p){
//	std::cout<<"strict";
	return this->match(p) && (this->parent == p->parent->correspondence(0));
}
