/*
 * PhysicalOutputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALOUTPUTPORT_H_
#define PHYSICALOUTPUTPORT_H_
#include "OutputPort.h"
#include "PhysicalFUInstance.h"
class InputPort;
class PhysicalOutputPort :public OutputPort {
	public:
		PhysicalFUInstance* owner;
		PhysicalOutputPort& operator=(const PhysicalOutputPort&);
		PhysicalOutputPort(const PhysicalOutputPort& obj);
		PhysicalOutputPort(const std::string& name,int width,PhysicalFUInstance* p);
		virtual ~PhysicalOutputPort();
		double calcCost(InputPort* logIn);
		FUInstance* getOwner()const { return owner;}

		//    bool match(OutputPort*);
		//    bool strictMatch(OutputPort*);
		bool isPlaced() { return owner->isPlaced(0) ; }
};

#endif /* PHYSICALOUTPUTPORT_H_ */
