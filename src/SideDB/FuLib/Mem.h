/*
 * Mem.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUNCTIONALUNITS_MEM_H_
#define FUNCTIONALUNITS_MEM_H_
#include "FUDescription.h"
class Mem :public FUDescription{
public:
	static const std::string TYPE;
	static const std::string FUNC_NAME;
	Mem(int a_width, int d_width, int /*nwords*/);
	virtual ~Mem();
};

#endif /* FUNCTIONALUNITS_MEM_H_ */
