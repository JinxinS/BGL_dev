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

bool OutputPort::isConnected(InputPort* in){
	return (std::find(destination_inputs.begin(),destination_inputs.end(),in) != destination_inputs.end());
}

int OutputPort::connect(InputPort* in){
	if(std::find(destination_inputs.begin(),destination_inputs.end(),in) != destination_inputs.end()){}
	else destination_inputs.push_back(in);
	return in->connect(this);
}
