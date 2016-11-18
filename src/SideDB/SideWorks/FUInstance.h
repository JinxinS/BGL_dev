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
class PhysicalFUInstance;
class FUInstance {
	typedef boost::vertex_property_tag kind;
	friend class PhysicalSideworks;
	friend class LogicalSideworks;
	friend class LogicalFUInstance;

	std::unordered_map<std::string,int> properties;
public:
	std::string name;
	std::string type;
	FUDescription* description;

	FUInstance& operator=(const FUInstance&);
	FUInstance(const FUInstance& obj);
	FUInstance(const std::string& name="no_name", const std::string& type="no_type", FUDescription* desc=0);
	virtual PhysicalFUInstance* correspondence()const{ return NULL;}
	virtual ~FUInstance();
	inline void addProperty(const std::string& prop, int val) {properties.insert(std::make_pair(prop,val));}
	inline int  getProperty(const std::string& prop)const	  { return properties.at(prop);}

	friend std::ostream& operator<<(std::ostream& os, const FUInstance& o){
		return os<<o.name;
	}
	bool operator==(const FUInstance& o){
		return (this->type == o.type);
	}
};




#endif /* FUINSTANCE_H_ */
