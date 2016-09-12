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
};

#endif /* FUNCTION_H_ */
