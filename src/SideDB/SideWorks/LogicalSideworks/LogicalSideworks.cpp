/*
 * LogicalSideworks.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "LogicalSideworks.h"
#include "InputPort.h"
#include "FUDescription.h"
LogicalSideworks::LogicalSideworks()
:Sideworks(){
	// TODO Auto-generated constructor stub

}

LogicalSideworks::~LogicalSideworks() {
	// TODO Auto-generated destructor stub
}

int LogicalSideworks::addFixedConection(const graph_t::vertex_descriptor& u,const graph_t::vertex_descriptor& v,const std::string& o,const std::string& i){
	int width = fuList[v]->getInputPort(i)->getWidth();
	std::string oname(o + std::to_string(width));
	//std::cout<<"\x1b[31m"<<*fuList[u]<<" add output "<<oname<<width<<"\x1b[32m"<<std::endl;
	fuList[u]->addOutputPort(oname,width);
	fuList[u]->description->addOutputPort(oname,width);
	Sideworks::addConection(u,v,oname,i);
}
