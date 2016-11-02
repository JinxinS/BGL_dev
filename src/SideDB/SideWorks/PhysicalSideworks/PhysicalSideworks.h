/*
 * PhysicalSideworks.h
 *
 *  Created on: Sep 30, 2016
 *      Author: songjinxin
 */

#ifndef PHYSICALSIDEWORKS_H_
#define PHYSICALSIDEWORKS_H_
#include "Sideworks.h"
class LogicalFUInstance;
class PhysicalFUInstance;
class LogicalSideworks;
class PhysicalSideworks:public Sideworks {
	std::map<std::string,std::vector<PhysicalFUInstance*>> fus_by_type;
	std::vector<PhysicalFUInstance*> fuList;
	int muxCount[33];
public:
	PhysicalSideworks();
	virtual ~PhysicalSideworks();

	void addFU(PhysicalFUInstance*);
	int addConection(const graph_t::vertex_descriptor&,const graph_t::vertex_descriptor&,const std::string&,const std::string&);
	void place(LogicalFUInstance*,int);
	void route(LogicalSideworks &logical_sideWorks);
    int  getReadXbarLuts(const int lut_per_mux_size[]);
};

#endif /* PHYSICALSIDEWORKS_H_ */
