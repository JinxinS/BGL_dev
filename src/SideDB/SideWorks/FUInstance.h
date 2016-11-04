/*
 * FUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUINSTANCE_H_
#define FUINSTANCE_H_
#include <unordered_map>
#include <boost/graph/properties.hpp>
#include <string>
#include <list>
class FUDescription;
class FUInstance {
	typedef boost::vertex_property_tag kind;
	friend class PhysicalSideworks;
	friend class LogicalSideworks;
	friend class LogicalFUInstance;
public:
	std::string name;
	std::string type;
	FUDescription* description;

public:
	FUInstance& operator=(const FUInstance&);
	FUInstance(const FUInstance& obj);
	FUInstance(const std::string& name="no_name", const std::string& type="no_type", FUDescription* desc=0);
	virtual ~FUInstance();
	virtual FUInstance* correspondence(int)const{return NULL;}
	virtual bool isPlaced(int){ return false;}
	friend std::ostream& operator<<(std::ostream& os, const FUInstance& o){
		return os<<o.name;
	}
	friend bool operator==(const FUInstance& o1, const FUInstance& o2){
		return (o1.type == o2.type);
	}
};




#endif /* FUINSTANCE_H_ */
