/*
 * LogicalSideworks.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "LogicalSideworks.h"
#include "LogicalInputPort.h"
#include "LogicalOutputPort.h"
#include "FUDescription.h"
#include "LogicalFUInstance.h"
LogicalSideworks::LogicalSideworks()
:Sideworks(),
 fuList(),
 cfgWord(NULL){
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

std::list<LogicalFUInstance*> LogicalSideworks::getFUWithType(const std::string& type){
	std::list<LogicalFUInstance*> ret;
	for(auto fu: fuList){
//	if(fu!=NULL) std::cout<<fu->type<<std::endl;
		if((fu !=NULL)&&(fu->type == type)) ret.push_back(fu);
	}
	std::cout<<ret.size()<<std::endl;
	return ret;
}

void LogicalSideworks::generateCfgWord(int nbits){
	cfgWord = new unsigned int[(nbits+31)/32];

	for(auto lfu : fuList){
		if(lfu != NULL ) lfu->generateCfgWord(cfgWord);
	}
	for(unsigned int i = 0; i < sizeof(cfgWord)/sizeof(int);i++){
		std::cout<<std::hex<<"0x"<<cfgWord[i]<<" ";

	}
	std::cout<<std::endl;
}

