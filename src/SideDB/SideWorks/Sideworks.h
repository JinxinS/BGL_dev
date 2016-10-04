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
	std::vector<FUInstance*> fuList;
	int size() const;
public:
	inline graph_t& getGraph(){return siw_graph;}
	inline const std::map<std::string, unsigned int>& getResourceUsage() const{return resource_usage; }
	inline const std::vector<FUInstance*>& getAllFU()const {return fuList;}
	Sideworks();
	virtual ~Sideworks();
	virtual void addFU(FUInstance* fu);
	void addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& o,const std::string& i);
	graph_t::vertex_descriptor getFU(const std::string& kname);
};

#endif /* SIDEWORKS_H_ */
