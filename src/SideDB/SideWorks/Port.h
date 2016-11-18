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
public:
    Port(const Port&);
    Port& operator=(const Port&);
    Port(const std::string& name, int width);
	virtual ~Port();
	const std::string& getName()const{return name;}
    int getWidth() const { return width;}
    virtual FUInstance* getOwner()const = 0;
    virtual bool isPlaced() = 0 ;
	bool match(Port* p);
	bool strictMatch(Port* p);
};

#endif /* PORT_H_ */
