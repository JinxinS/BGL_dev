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
	friend class PhysicalSideworks;
protected:
	graph_t siw_graph;
	int size() const;
public:
	inline graph_t& getGraph(){return siw_graph;}
	Sideworks();
	virtual ~Sideworks();
	graph_t::vertex_descriptor getFU(const std::string& kname);
};

#endif /* SIDEWORKS_H_ */
