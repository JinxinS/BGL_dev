/*
 * OutputPort.cpp
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#include <OutputPort.h>
#include "InputPort.h"
OutputPort::OutputPort(const std::string& name, int width, FUInstance* p)
:Port(name, width, p),
 destination_inputs()
{
	// TODO Auto-generated constructor stub

}

OutputPort::~OutputPort() {
	// TODO Auto-generated destructor stub
}


void OutputPort::connect(InputPort* in){
	destination_inputs.push_back(in);
	in->connect(this);
}
