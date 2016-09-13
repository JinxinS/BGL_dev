/*
 * Port.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "Port.h"

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

