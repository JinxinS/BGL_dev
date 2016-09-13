/*
 * LogicalMemFUInstance.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include <LogicalMemFUInstance.h>
#include "LogicalFUInstance.h"
#include "Mem.h"
LogicalMemFUInstance::LogicalMemFUInstance(const std::string& name,int a_width,int d_width,int nwords)
:LogicalFUInstance(name, Mem::TYPE,  Mem::FUNC_NAME,  new Mem(a_width,d_width,nwords)){
	// TODO Auto-generated constructor stub
}

LogicalMemFUInstance::~LogicalMemFUInstance() {
	// TODO Auto-generated destructor stub
}

