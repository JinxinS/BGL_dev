/*
 * FunctionalUnitLibrary.h
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#ifndef FUNCTIONALUNITLIBRARY_H_
#define FUNCTIONALUNITLIBRARY_H_
#include "sic_types.h"
class FUDescription;
class FunctionalUnitLibrary {
    std::unordered_map<std::string, FUDescription*> custom_fu_list;
public:
	FunctionalUnitLibrary();
	virtual ~FunctionalUnitLibrary();
};

#endif /* FUNCTIONALUNITLIBRARY_H_ */
