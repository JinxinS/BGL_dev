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
class InputPort;
class OutputPort;
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
protected:
	std::unordered_map<std::string, InputPort*>		inports;
	std::unordered_map<std::string, OutputPort*>	outports;
	std::unordered_map<std::string, long>		 	parameters;
	virtual void addInputPort(const std::string&, int)  {}
	virtual void addOutputPort(const std::string&, int) {}
	InputPort*   getInputPort(const std::string&);
	OutputPort* getOutputPort(const std::string&);
public:
	FUInstance& operator=(const FUInstance&);
	FUInstance(const FUInstance& obj);
	FUInstance(const std::string& name="no_name", const std::string& type="no_type", FUDescription* desc=0);
	virtual ~FUInstance();
	int size();


	void setParameter(const std::string&, long);
	int connect(const std::string&, FUInstance*,const std::string&);
	bool isConnected(const std::string&, FUInstance* ,const std::string&);
	virtual FUInstance* correspondence(int)const{return NULL;}
	virtual void place(FUInstance*){}
	virtual bool isPlaced(int){ return false;}
	virtual double estimatePlacementDecisionCost(FUInstance*){return 0;}
	virtual void getReadXbarMuxCount(int*,int){}

	friend std::ostream& operator<<(std::ostream& os, const FUInstance& o){
		return os<<o.name;
	}
	friend bool operator==(const FUInstance& o1, const FUInstance& o2){
		return (o1.type == o2.type);
	}
};




#endif /* FUINSTANCE_H_ */
