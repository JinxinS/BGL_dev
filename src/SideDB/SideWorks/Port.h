/*
 * Port.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef PORT_H_
#define PORT_H_
#include <string>
#include "FUInstance.h"
class Port {
protected:
    std::string name;
    int width;
    FUInstance* parent;
public:
    Port(const Port&);
    Port& operator=(const Port&);
    Port(const std::string& name, int width, FUInstance* p);
	virtual ~Port();
	const std::string& getName()const{return name;}
	bool match(Port* p);
	bool strictMatch(Port* p);
	bool isPlaced(){ return parent->isPlaced(0); }
	virtual int calcCost(Port* ){return 0;}
};

#endif /* PORT_H_ */
