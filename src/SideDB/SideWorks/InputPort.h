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
class PhysicalInputPort;
class InputPort:public Port {
	friend class PhysicalFUInstance;
	protected:
	std::map < OutputPort*, int > source_outputs;

	public:
	InputPort(const std::string& name, int width);
	virtual ~InputPort();
	int connect(OutputPort* out);
	//    virtual bool match(InputPort*){return false;} 				  		/*override by PhysicalInputPort*/
	//    virtual bool strictMatch(InputPort*){return false;} 			 	/*override by PhysicalInputPort*/
	//    virtual bool match_p(PhysicalInputPort*){return false;}    		 	/*override by LogicalInputPort*/
	//    virtual bool strictMatch_p(PhysicalInputPort*){return false;}    		/*override by LogicalInputPort*/

	bool isConnected(OutputPort* out);
	bool isConnected(){ return !source_outputs.empty();}
	int size()const{return source_outputs.size();}
};

#endif /* INPUTPORT_H_ */
