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
	graph_t siw_graph;
	std::vector<FUInstance*> fuList;
	int size() const;
public:
	inline graph_t& getGraph(){return siw_graph;}
	Sideworks();
	virtual ~Sideworks();
	virtual void addFU(FUInstance* fu);
	virtual int addConection(const graph_t::vertex_descriptor& v1,const graph_t::vertex_descriptor& v2,const std::string& o,const std::string& i);
	graph_t::vertex_descriptor getFU(const std::string& kname);
};

#endif /* SIDEWORKS_H_ */
