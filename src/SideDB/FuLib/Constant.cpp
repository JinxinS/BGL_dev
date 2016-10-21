/*
 * Constant.cpp
 *
 *  Created on: Oct 20, 2016
 *      Author: songjinxin
 */

#include "Constant.h"
#include "Function.h"
const std::string Constant::TYPE = "GENERIC_VALUE";
const std::string Constant::FUNC_NAME = "F_GENERIC_VALUE";

Constant::Constant()
:FUDescription(TYPE){
	addOutputPort("out", 32);
	addParameter("value", 32);
    Function* function = new Function(Constant::FUNC_NAME,0);
	addFUFunction(function);
	function->addFunctionArg("value");
}

Constant::~Constant() {
	// TODO Auto-generated destructor stub
}

