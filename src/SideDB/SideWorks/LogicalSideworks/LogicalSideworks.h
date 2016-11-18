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
	friend class SideConfWriter;
	std::vector<LogicalFUInstance*> fuList;
	unsigned int* cfgWord;
public:
	LogicalSideworks();
	virtual ~LogicalSideworks();
	LogicalSideworks(const LogicalSideworks&);
	LogicalSideworks& operator=(const LogicalSideworks& );
	void addFU(LogicalFUInstance*);
	int addConection(const graph_t::vertex_descriptor&,const graph_t::vertex_descriptor&,const std::string&,const std::string&);
	int addFixedConection(const graph_t::vertex_descriptor&,const graph_t::vertex_descriptor&,const std::string&,const std::string&);
	std::list<LogicalFUInstance*> getFUWithType(const std::string& type);
	void generateCfgWord(int);
	friend bool operator<(const LogicalSideworks &lhs, const LogicalSideworks &rhs) {
	    return lhs.size() < rhs.size();
	}
};

#endif /* LOGICALSIDEWORKS_H_ */
