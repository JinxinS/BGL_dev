/*
 * PhysicalFUInstance.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALFUINSTANCE_H_
#define PHYSICALFUINSTANCE_H_
#include "sic_types.h"
#include "FUInstance.h"
class FUDescription;
class PhysicalFUInstance:public FUInstance {
	virtual void addInputPort(const std::string&, int width);
	virtual void addOutputPort(const std::string&, int width);
public:
	PhysicalFUInstance(const std::string& name,const std::string& type,FUDescription* desc);
	virtual ~PhysicalFUInstance();
	PhysicalFUInstance(const PhysicalFUInstance&);
	PhysicalFUInstance& operator=(const PhysicalFUInstance&);
};

#endif /* PHYSICALFUINSTANCE_H_ */
