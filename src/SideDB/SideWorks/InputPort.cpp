/*
 * InputPort.cpp
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#include <InputPort.h>
#include "OutputPort.h"
#include "sic_types.h"

InputPort::InputPort(const std::string& name, int width)
:Port(name, width),
 source_outputs(){
	// TODO Auto-generated constructor stub

}

InputPort::~InputPort() {
	// TODO Auto-generated destructor stub
}

bool InputPort::isConnected(OutputPort* out){
	return (source_outputs.find(out)!=source_outputs.end());
}

int InputPort::connect(OutputPort* out){
	if(source_outputs.insert(std::make_pair(out,size())).second) return size()-1;
	else return source_outputs.at(out);
}
