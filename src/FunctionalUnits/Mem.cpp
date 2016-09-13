/*
 * Mem.cpp
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#include "FunctionalUnits/Mem.h"
#include "Function.h"
const std::string Mem::TYPE = "MEM";
const std::string Mem::FUNC_NAME = "SIW_AUTO_FUNC";

Mem::Mem(int a_width, int d_width, int /*nwords*/)
:FUDescription(Mem::TYPE ){
    addInputPort("data_in_a", d_width);
    addInputPort("data_in_b", d_width);
    addInputPort("write_a", 1);
    addInputPort("write_b", 1);
    addInputPort("address_a", a_width);
    addInputPort("address_b", a_width);
    addOutputPort("data_a", d_width);
    addOutputPort("data_b", d_width);
    addParameter("dly_a", 2);
    addParameter("dly_b", 2);
    Function* function = new Function(Mem::FUNC_NAME,0);
    function->addFunctionArg("data_in_a");
    function->addFunctionArg("data_in_b");
    function->addFunctionArg("write_a");
    function->addFunctionArg("write_b");
    function->addFunctionArg("address_a");
    function->addFunctionArg("address_b");
    function->addFunctionArg("dly_a");
    function->addFunctionArg("dly_b");

    addFUFunction(function);
}

Mem::~Mem() {
	// TODO Auto-generated destructor stub
}

