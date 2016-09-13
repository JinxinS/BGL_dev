/*
 * LogicalFUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALFUINSTANCE_H_
#define LOGICALFUINSTANCE_H_
#include "sic_types.h"
#include "FUInstance.h"
class FUDescription;
class LogicInputPort;
class LogicOutputPort;

class LogicalFUInstance:public FUInstance {
	std::string funcname;
	std::unordered_map<std::string, LogicInputPort*>  inports;
	std::unordered_map<std::string, LogicOutputPort*> outports;
	std::unordered_map<std::string, long>			  parameters;
public:
    LogicalFUInstance(const LogicalFUInstance&);
    LogicalFUInstance& operator=(const LogicalFUInstance&);
	LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc);
	virtual ~LogicalFUInstance();
};

#endif /* LOGICALFUINSTANCE_H_ */
