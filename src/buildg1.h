/*
 * buildg1.h
 *
 *  Created on: Apr 30, 2015
 *      Author: songjinxin
 */

#ifndef BUILDG1_H_
#define BUILDG1_H_
#include "graph.h"
class build_g1 {
public:
	build_g1();
	virtual ~build_g1();
	static void buildgraph1(GraphTypes::Graph& g);
	static void buildgraphsimple1(GraphTypes::Graph& g);


};

#endif /* BUILDG1_H_ */
