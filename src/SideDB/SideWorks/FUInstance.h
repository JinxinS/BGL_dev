/*
 * FUInstance.h
 *
 *  Created on: Sep 13, 2016
 *      Author: songjinxin
 */

#ifndef FUINSTANCE_H_
#define FUINSTANCE_H_
#include <string>
#include <boost/graph/properties.hpp>

class FUDescription;
class FUInstance {
	typedef boost::vertex_property_tag kind;
	virtual void addInputPort(const std::string&, int)  {}
	virtual void addOutputPort(const std::string&, int) {}
public:
	std::string name;
	std::string type;
	FUDescription* description;

	FUInstance(const FUInstance& obj)
	:name(obj.name),
	 type(obj.type),
	 description(obj.description){}
	FUInstance& operator=(const FUInstance&);

	FUInstance(const std::string& name="no_name", const std::string& type="no_type", FUDescription* desc=0);
	virtual ~FUInstance();

	friend std::ostream& operator<<(std::ostream& os, const FUInstance& o){
		return os<<o.name;
	}
	friend bool operator==(const FUInstance& o1, const FUInstance& o2){
		return (o1.type == o2.type);
	}
};




#endif /* FUINSTANCE_H_ */
