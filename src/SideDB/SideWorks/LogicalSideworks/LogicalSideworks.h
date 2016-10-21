/*
 * LogicalSideworks.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef LOGICALSIDEWORKS_H_
#define LOGICALSIDEWORKS_H_
#include "Sideworks.h"
#include "PhysicalSideworks.h"
class LogicalSideworks:public Sideworks {
	friend class PhysicalSideworks;
	friend class SideParser;
	friend class Placer;
public:
	LogicalSideworks();
	virtual ~LogicalSideworks();
	int addFixedConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& o,const std::string& i);
	friend bool operator<(const LogicalSideworks &lhs, const LogicalSideworks &rhs) {
	    return lhs.size() < rhs.size();
	}
};

#endif /* LOGICALSIDEWORKS_H_ */
