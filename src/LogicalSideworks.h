/*
 * LogicalSideworks.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALSIDEWORKS_H_
#define LOGICALSIDEWORKS_H_
#include <sic_types.h>
class LogicalSideworks {
protected:
	GraphTypes::Graph siw_graph;
public:
	//inline GraphTypes::Graph& getGraph(){return siw_graph;}
	void addLogicalFU(const std::string& type,const std::string& name);
	void addConection(const graph_traits<GraphTypes::Graph>::vertex_descriptor& v1,const graph_traits<GraphTypes::Graph>::vertex_descriptor& v2,const std::string& c);

	LogicalSideworks();
	virtual ~LogicalSideworks();
};

#endif /* LOGICALSIDEWORKS_H_ */
