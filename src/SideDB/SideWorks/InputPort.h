/*
 * InputPort.h
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#ifndef INPUTPORT_H_
#define INPUTPORT_H_
#include "Port.h"
#include <map>
class OutputPort;
class InputPort:public Port {
protected:
    std::map < OutputPort*, int > source_outputs;
public:
	InputPort(const std::string& name, int width, FUInstance* p);
	virtual ~InputPort();
    void connect(OutputPort* out);
    bool isConnected(){ return !source_outputs.empty();}
    int size(){return source_outputs.size();}
};

#endif /* INPUTPORT_H_ */
