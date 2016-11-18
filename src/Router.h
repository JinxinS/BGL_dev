/*
 * Router.h
 *
 *  Created on: Oct 10, 2016
 *      Author: songjinxin
 */

#ifndef ROUTER_H_
#define ROUTER_H_
class LogicalSideworks;
class PhysicalSideworks;
class Router {
public:
	Router();
	virtual ~Router();
	static void route(LogicalSideworks* ,PhysicalSideworks& /*,int*/ );
};

#endif /* ROUTER_H_ */
