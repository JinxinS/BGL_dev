/*
 * Function.h
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#ifndef FUNCTION_H_
#define FUNCTION_H_
#include "sic_types.h"
class Function {
	std::list<std::string> args;
	std::string function_name;
	uint function_select;
public:
	Function(const std::string& name,uint sel);
	virtual ~Function();
    inline void addFunctionArg(std::string name) { args.push_back(name); }
    inline const std::string& getFunctionName(){return function_name;}
    inline const std::list<std::string>& getArgs(){return args;}

};

#endif /* FUNCTION_H_ */
