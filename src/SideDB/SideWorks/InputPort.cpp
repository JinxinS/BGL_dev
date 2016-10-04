/*
 * InputPort.cpp
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#include <InputPort.h>
#include "OutputPort.h"
InputPort::InputPort(const std::string& name, int width, FUInstance* p)
:Port(name, width, p),
 source_outputs(){
	// TODO Auto-generated constructor stub

}

InputPort::~InputPort() {
	// TODO Auto-generated destructor stub
}

void InputPort::connect(OutputPort* out){
	source_outputs.insert(std::make_pair(out,0));
}

