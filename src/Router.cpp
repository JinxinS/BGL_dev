/*
 * Router.cpp
 *
 *  Created on: Oct 10, 2016
 *      Author: songjinxin
 */

#include "Router.h"
#include "PhysicalSideworks.h"
#include "LogicalSideworks.h"



Router::Router() {
	// TODO Auto-generated constructor stub

}

Router::~Router() {
	// TODO Auto-generated destructor stub
}

void Router::route(LogicalSideworks* logical_sideworks,PhysicalSideworks& physical_sideworks/*,int simid*/){
	physical_sideworks.route(*logical_sideworks);

}
