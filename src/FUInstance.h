/*
 * FUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUINSTANCE_H_
#define FUINSTANCE_H_
#include "sic_types.h"
class FUDescription;
class FUInstance {
protected:
	std::string type;
	std::string name;
    FUDescription* description;
public:
	inline const std::string& getType(){return type;}
	inline const std::string& getName(){return name;}
	FUInstance(const FUInstance&);
	FUInstance& operator=(const FUInstance&);
    FUInstance(const std::string& type, const std::string& name, FUDescription* desc);
	virtual ~FUInstance();
};

#endif /* FUINSTANCE_H_ */
