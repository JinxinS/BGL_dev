/*
 * LogicalMemFUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALMEMFUINSTANCE_H_
#define LOGICALMEMFUINSTANCE_H_
#include "LogicalFUInstance.h"
#include <string>
class LogicalMemFUInstance:public LogicalFUInstance{
public:
	LogicalMemFUInstance(const std::string& name,int a_width,int d_width,int nwords);
	virtual ~LogicalMemFUInstance();
};

#endif /* LOGICALMEMFUINSTANCE_H_ */
