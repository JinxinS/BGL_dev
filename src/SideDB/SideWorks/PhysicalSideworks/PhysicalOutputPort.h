/*
 * PhysicalOutputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALOUTPUTPORT_H_
#define PHYSICALOUTPUTPORT_H_
#include "OutputPort.h"
class PhysicalOutputPort :public OutputPort {
public:
	PhysicalOutputPort(const std::string& name,int width,FUInstance* p);
	virtual ~PhysicalOutputPort();
	double calcCost(Port* logIn);
};

#endif /* PHYSICALOUTPUTPORT_H_ */
