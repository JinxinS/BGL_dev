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
class LogicalFUInstance;
class FunctionalUnitLibrary {
    std::unordered_map<std::string, FUDescription*> fu_desc_list;
	void loadInternelFunctionalLib();
public:
    void addFUDescription(const std::string &type,FUDescription* fu_desc);
    LogicalFUInstance* getLogicalFUInstance(const std::string &type,const std::string &name,const std::string &func);
    LogicalFUInstance* getLogicalMEMInstance(const std::string &name,int a_width,int d_width,int nwords);
    FunctionalUnitLibrary();
	virtual ~FunctionalUnitLibrary();
};

#endif /* FUNCTIONALUNITLIBRARY_H_ */
