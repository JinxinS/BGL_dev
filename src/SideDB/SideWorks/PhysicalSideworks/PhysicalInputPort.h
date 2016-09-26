/*
 * PhysicalInputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALINPUTPORT_H_
#define PHYSICALINPUTPORT_H_
#include "Port.h"
class PhysicalInputPort :public Port {
public:
	PhysicalInputPort(const std::string& name,int width,FUInstance* p);
	virtual ~PhysicalInputPort();
};

#endif /* PHYSICALINPUTPORT_H_ */
