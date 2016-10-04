/*
 * Placer.h
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#ifndef PLACER_H_
#define PLACER_H_
#include "PhysicalSideworks.h"
class LogicalSideworks;
class FUInstance;
class Placer {
public:
	Placer();
	virtual ~Placer();
	static void place(LogicalSideworks* ,PhysicalSideworks& ,int );
};

#endif /* PLACER_H_ */
