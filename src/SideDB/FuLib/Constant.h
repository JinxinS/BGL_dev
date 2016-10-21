/*
 * Constant.h
 *
 *  Created on: Oct 20, 2016
 *      Author: songjinxin
 */

#ifndef CONSTANT_H_
#define CONSTANT_H_
#include "FUDescription.h"

class Constant : public FUDescription{
public:
	static const std::string TYPE;
	static const std::string FUNC_NAME;
	Constant();
	virtual ~Constant();
};

#endif /* CONSTANT_H_ */
