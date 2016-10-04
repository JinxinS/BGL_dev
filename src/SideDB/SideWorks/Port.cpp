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
	return ((p->name == this->name) && (p->parent->type == this->parent->type));
}

bool Port::strictMatch(Port* p){
	return this->match(p) && (this->parent == p->parent);
}
