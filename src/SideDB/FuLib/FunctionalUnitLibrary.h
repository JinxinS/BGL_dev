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
    std::unordered_map<std::string, FUDescription*> fu_desc_list;
	void loadInternelFunctionalLib();
public:
    void addFUDescription(const std::string &type,FUDescription* fu_desc);
    inline FUDescription* getFUDescription(const std::string& type)const {return fu_desc_list.at(type);}
    FUInstance* getLogicalMEMInstance(const std::string &,int,int,int,const std::string&);
    FUInstance*   getLogicalFUInstance(const std::string &,const std::string &,const std::string &func="")const;
    FUInstance* getPhysicalFUInstance(const std::string &,const std::string &)const;
    FunctionalUnitLibrary();
	virtual ~FunctionalUnitLibrary();
};

#endif /* FUNCTIONALUNITLIBRARY_H_ */
