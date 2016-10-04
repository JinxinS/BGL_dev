/*
 * OutputPort.h
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#ifndef OUTPUTPORT_H_
#define OUTPUTPORT_H_
#include "Port.h"
#include <list>
class InputPort;
class OutputPort:public Port  {
protected:
	std::list<InputPort*> destination_inputs;
public:
	OutputPort(const std::string& name, int width, FUInstance* p);
	virtual ~OutputPort();
    void connect(InputPort* i);
    bool isConnected(){ return !destination_inputs.empty();}
    int size(){return destination_inputs.size();}
};

#endif /* OUTPUTPORT_H_ */
