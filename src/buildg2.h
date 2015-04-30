/*
 * buildg2.h
 *
 *  Created on: Apr 30, 2015
 *      Author: songjinxin
 */

#ifndef BUILDG2_H_
#define BUILDG2_H_
#include "graph.h"
class build_g2 {
public:
	build_g2();
	virtual ~build_g2();
	static void buildgraph2(GraphTypes::Graph& g);
	static void buildgraphsimple2(GraphTypes::Graph& g);
};

#endif /* BUILDG2_H_ */
