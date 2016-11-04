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
	int xbarBitPointer;
public:
	PhysicalInputPort(const std::string& name,int width,FUInstance* p);
	virtual ~PhysicalInputPort();
	double calcCost(Port* logOut);
	int getConfSize();
    inline void setXbarBitPointer(int v){ xbarBitPointer = v; }
};

#endif /* PHYSICALINPUTPORT_H_ */
