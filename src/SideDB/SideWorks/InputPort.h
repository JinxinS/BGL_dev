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
	friend class PhysicalFUInstance;
protected:
    std::map < OutputPort*, int > source_outputs;
public:
	InputPort(const std::string& name, int width, FUInstance* p);
	virtual ~InputPort();
    int connect(OutputPort* out);
    void setMuxSelect(OutputPort*,int);
    bool isConnected(OutputPort* out);
    bool isConnected(){ return !source_outputs.empty();}
    int size(){return source_outputs.size();}
	friend std::ostream& operator<<(std::ostream& os, const InputPort& i);
};

#endif /* INPUTPORT_H_ */
