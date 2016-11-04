/*
 * LogicalSideworks.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "LogicalSideworks.h"
#include "InputPort.h"
#include "FUDescription.h"
#include "LogicalFUInstance.h"
LogicalSideworks::LogicalSideworks()
:Sideworks(),
 fuList(){
	// TODO Auto-generated constructor stub

}

LogicalSideworks::~LogicalSideworks() {
	// TODO Auto-generated destructor stub
}

void LogicalSideworks::addFU(LogicalFUInstance* fu){
	fuList.push_back(fu);
	graph_t::vertex_descriptor v = boost::add_vertex(vertex_properties("",*fu), siw_graph);
}

int LogicalSideworks::addConection(const graph_t::vertex_descriptor& u,const graph_t::vertex_descriptor& v,const std::string& o,const std::string& i){
	return connect(u,v,fuList[u]->getOutputPort(o),fuList[v]->getInputPort(i));
}


int LogicalSideworks::addFixedConection(const graph_t::vertex_descriptor& u,const graph_t::vertex_descriptor& v,const std::string& o,const std::string& i){
	int width = fuList[v]->getInputPort(i)->getWidth();
	std::string oname(o + std::to_string(width));
	fuList[u]->addOutputPort(oname,width);
	fuList[u]->description->addOutputPort(oname,width);
	return addConection(u,v,oname,i);
}
