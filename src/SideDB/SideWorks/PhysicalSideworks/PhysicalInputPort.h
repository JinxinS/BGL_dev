/*
 * PhysicalInputPort.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALINPUTPORT_H_
#define PHYSICALINPUTPORT_H_
#include "InputPort.h"
#include "PhysicalFUInstance.h"
class OutputPort;
class PhysicalInputPort :public InputPort {
	public:
		PhysicalFUInstance* owner;
	private:
		int xbarBitPointer;

	public:
		PhysicalInputPort& operator=(const PhysicalInputPort&);
		PhysicalInputPort(const PhysicalInputPort& obj);
		PhysicalInputPort(const std::string& name,int width,PhysicalFUInstance* p);
		virtual ~PhysicalInputPort();
		double calcCost(OutputPort* logOut);
		int getConfSize();
		bool isPlaced() { return owner->isPlaced(0) ; }
		//    bool match(InputPort* p);
		//    bool strictMatch(InputPort* p);
		FUInstance* getOwner()const { return owner;}

		inline void setXbarBitPointer(int v){ xbarBitPointer = v; }
		inline int  getXbarBitPointer() const{ return xbarBitPointer;}
		friend std::ostream& operator<<(std::ostream& os, const PhysicalInputPort& i);

};

#endif /* PHYSICALINPUTPORT_H_ */
