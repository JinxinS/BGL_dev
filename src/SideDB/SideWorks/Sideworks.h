/*
 * Sideworks.h
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#ifndef SIDEWORKS_H_
#define SIDEWORKS_H_
#include "sic_types.h"
class Sideworks {
protected:
    std::map<std::string, unsigned int> resource_usage;
	graph_t siw_graph;
public:
	inline graph_t& getGraph(){return siw_graph;}
	inline const std::map<std::string, unsigned int>& getResourceUsage() const{return resource_usage; }
	Sideworks();
	virtual ~Sideworks();
	void addFU(FUInstance* fu);
	void addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& c);
	graph_t::vertex_descriptor getFU(const std::string& kname);
};

#endif /* SIDEWORKS_H_ */
