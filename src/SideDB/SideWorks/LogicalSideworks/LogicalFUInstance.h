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
class LogicalInputPort;
class LogicalOutputPort;

class LogicalFUInstance:public FUInstance {
	std::string funcname;
	std::unordered_map<std::string, LogicalInputPort*>  inports;
	std::unordered_map<std::string, LogicalOutputPort*> outports;
	std::unordered_map<std::string, long>			  parameters;
	virtual void addInputPort(const std::string&, int width);
	virtual void addOutputPort(const std::string&, int width);
public:
    LogicalFUInstance(const LogicalFUInstance&);
    LogicalFUInstance& operator=(const LogicalFUInstance&);
	LogicalFUInstance(const std::string& name,const std::string& type,const std::string& func,FUDescription* desc);
	virtual ~LogicalFUInstance();
};

#endif /* LOGICALFUINSTANCE_H_ */
