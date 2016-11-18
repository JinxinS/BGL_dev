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
class PhysicalOutputPort;
class OutputPort:public Port  {
	friend class PhysicalFUInstance;
	friend std::ostream& operator<<(std::ostream& os, const InputPort& i);
protected:
	std::list<InputPort*> destination_inputs;

public:
	OutputPort(const std::string& name, int width);
	virtual ~OutputPort();
    int connect(InputPort* i);
//
//    virtual bool match(OutputPort* ){ return false;}
//    virtual bool strictMatch(OutputPort* ){ return false;}
//    virtual bool match_p(PhysicalOutputPort* ){ return false;}    		 		/*override by PhysicalOutputPort*/
//    virtual bool strictMatch_p(PhysicalOutputPort* ){ return false;}    		/*override by PhysicalOutputPort*/


    bool isConnected(InputPort* i);
    bool isConnected(){ return !destination_inputs.empty();}
    int size(){return destination_inputs.size();}
};

#endif /* OUTPUTPORT_H_ */
