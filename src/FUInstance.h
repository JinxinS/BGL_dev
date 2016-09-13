/*
 * FUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUINSTANCE_H_
#define FUINSTANCE_H_
#include "sic_types.h"
class FUDescription;
class FUInstance {
protected:
	std::string type;
	std::string name;
    FUDescription* description;
	graph_traits<GraphTypes::Graph>::vertex_descriptor vit;
public:
	inline void setVertexDescriptor(const graph_traits<GraphTypes::Graph>::vertex_descriptor& v)  {  vit = v; }
	inline const std::string& getType(){return type;}
	inline const std::string& getName(){return name;}
	FUInstance(const FUInstance&);
	FUInstance& operator=(const FUInstance&);
    FUInstance(const std::string& type, const std::string& name, FUDescription* desc);
	virtual ~FUInstance();
};

#endif /* FUINSTANCE_H_ */
