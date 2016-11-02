/*
 * Mem.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUNCTIONALUNITS_MEM_H_
#define FUNCTIONALUNITS_MEM_H_
#include "FUDescription.h"
#include "LogicalFUInstance.h"
class Mem :public FUDescription{
public:
	static const std::string TYPE;
	static const std::string FUNC_NAME;
	Mem(int a_width, int d_width, int /*nwords*/);
	virtual ~Mem();
	LogicalFUInstance* createLogicalFUInstance(const std::string &,const std::string &,const std::string &) ;
};

class MemFUInstance:public LogicalFUInstance{
public:
	MemFUInstance(const std::string &name,const std::string &type,const std::string &func,FUDescription* desc);
	virtual ~MemFUInstance();
	//void setParameter(const std::string&, long);
};

#endif /* FUNCTIONALUNITS_MEM_H_ */
