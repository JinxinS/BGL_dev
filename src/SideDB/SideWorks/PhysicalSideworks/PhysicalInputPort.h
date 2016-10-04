/*
 * PhysicalInputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALINPUTPORT_H_
#define PHYSICALINPUTPORT_H_
#include "InputPort.h"
class OutputPort;
class PhysicalInputPort :public InputPort {
public:
	PhysicalInputPort(const std::string& name,int width,FUInstance* p);
	virtual ~PhysicalInputPort();
	int calcCost(Port* logOut);

};

#endif /* PHYSICALINPUTPORT_H_ */
