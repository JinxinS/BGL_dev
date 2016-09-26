/*
 * Port.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef PORT_H_
#define PORT_H_
#include <string>
class FUInstance;
class Port {
    std::string name;
    int width;
    FUInstance* parent;
public:
    Port(const Port&);
    Port& operator=(const Port&);
    Port(const std::string& name, int width, FUInstance* p);
	virtual ~Port();
};

#endif /* PORT_H_ */
