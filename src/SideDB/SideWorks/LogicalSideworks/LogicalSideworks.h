/*
 * LogicalSideworks.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALSIDEWORKS_H_
#define LOGICALSIDEWORKS_H_
#include "Sideworks.h"
class LogicalFUInstance;
class LogicalSideworks:public Sideworks {
	friend class PhysicalSideworks;
	friend class SideParser;
	friend class Placer;
	std::vector<LogicalFUInstance*> fuList;
public:
	LogicalSideworks();
	virtual ~LogicalSideworks();
	void addFU(LogicalFUInstance*);
	int addConection(const graph_t::vertex_descriptor&,const graph_t::vertex_descriptor&,const std::string&,const std::string&);
	int addFixedConection(const graph_t::vertex_descriptor&,const graph_t::vertex_descriptor&,const std::string&,const std::string&);
	friend bool operator<(const LogicalSideworks &lhs, const LogicalSideworks &rhs) {
	    return lhs.size() < rhs.size();
	}
};

#endif /* LOGICALSIDEWORKS_H_ */
