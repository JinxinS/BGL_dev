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
class FUInstance;
class FUDescription {
	std::string 						  type;
	std::unordered_map<std::string, int> input_ports_width;
	std::unordered_map<std::string, int> output_ports_width;
	std::unordered_map<std::string, int> parameters;
    std::unordered_map<std::string, Function*> function_descriptions;
public:
    void addInputPort(const std::string& name,int width);
    void addOutputPort(const std::string& name,int width);
    void addParameter(const std::string& name,int width);
    void addFUFunction(Function*);
    bool isInputPort(const std::string& arg);
    bool isParameter(const std::string& arg);
    int  getInputWidth(const std::string& in);
	virtual FUInstance* createLogicalFUInstance(const std::string &,const std::string &,const std::string &);
    inline const std::unordered_map<std::string, int>& getOutputPorts() const { return output_ports_width; }
    inline const std::unordered_map<std::string, int>&  getInputPorts() const { return input_ports_width; }
    Function* getFUFunction(const std::string& funcname);
	FUDescription(const std::string&);
	virtual ~FUDescription();
};

#endif /* FUDESCRIPTION_H_ */
