/*
 * SideConfException.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef SIDECONFEXCEPTION_H_
#define SIDECONFEXCEPTION_H_
#include <exception>
#include <string>
class SideConfException :public std::exception{
private:
    std::string reason;
public:
    SideConfException(const std::string& reason);
    ~SideConfException() throw () {}
    const char* what() const throw() { return reason.c_str(); }
};

#endif /* SIDECONFEXCEPTION_H_ */
