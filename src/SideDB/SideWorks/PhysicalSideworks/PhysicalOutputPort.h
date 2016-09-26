/*
 * PhysicalOutputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALOUTPUTPORT_H_
#define PHYSICALOUTPUTPORT_H_
#include "Port.h"
class PhysicalOutputPort :public Port {
public:
	PhysicalOutputPort(const std::string& name,int width,FUInstance* p);
	virtual ~PhysicalOutputPort();
};

#endif /* PHYSICALOUTPUTPORT_H_ */
