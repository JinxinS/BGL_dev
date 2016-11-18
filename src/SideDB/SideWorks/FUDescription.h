/*
 * FUDescription.h
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#ifndef FUDESCRIPTION_H_
#define FUDESCRIPTION_H_
#include "sic_types.h"
class Function;
class LogicalFUInstance;
class FUDescription {
	friend class LogicalFUInstance;
	friend class PhysicalFUInstance;
protected:
	std::string 				type;
	std::unordered_map<std::string, int> 	input_ports_width;
	std::unordered_map<std::string, int> 	output_ports_width;
	std::unordered_map<std::string, int> 	parameters_width;
	std::unordered_map<std::string, Function*> function_descriptions;
public:
	void addInputPort(const std::string& name,int width);
	void addOutputPort(const std::string& name,int width);
	void addParameter(const std::string& name,int width);
	void addFUFunction(Function*);
	bool isInputPort(const std::string& arg);
	bool isParameter(const std::string& arg);
	inline int getInputWidth(const std::string& in) const { return input_ports_width.at(in); }
	inline int getParameterWidth(const std::string& name) const { return parameters_width.at(name); }
	virtual LogicalFUInstance* createLogicalFUInstance(const std::string &,const std::string &,const std::string &);
	Function* getFUFunction(const std::string& funcname);
	int getConfSize();
	int getFunctionConfSize();
	FUDescription(const std::string&);
	virtual ~FUDescription();
};

#endif /* FUDESCRIPTION_H_ */
