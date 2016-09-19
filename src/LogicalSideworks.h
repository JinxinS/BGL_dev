/*
 * LogicalSideworks.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALSIDEWORKS_H_
#define LOGICALSIDEWORKS_H_
#include "sic_types.h"
class LogicalFUInstance;
class LogicalSideworks {
protected:
	graph_t siw_graph;
public:
	inline graph_t& getGraph(){return siw_graph;}
	void addLogicalFU(LogicalFUInstance* logical_fu);
	void addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& c);
	graph_t::vertex_descriptor getLogicalFU(const std::string& kname);
	LogicalSideworks();
	virtual ~LogicalSideworks();
};

#endif /* LOGICALSIDEWORKS_H_ */
