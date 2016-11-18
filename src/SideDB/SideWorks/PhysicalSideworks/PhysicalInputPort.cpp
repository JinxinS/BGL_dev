/*
 * PhysicalInputPort.cpp
 *
 *  Created on: Sep 26, 2016
 *      Author: songjinxin
 */

#include <PhysicalInputPort.h>
#include "OutputPort.h"
#include "PhysicalFUInstance.h"
#include <cmath>
PhysicalInputPort::PhysicalInputPort(const std::string& name,int width,PhysicalFUInstance* p)
:InputPort(name, width),
 owner(p),
 xbarBitPointer(0)
{
	// TODO Auto-generated constructor stub
}

PhysicalInputPort::~PhysicalInputPort() {
	// TODO Auto-generated destructor stub
}

double PhysicalInputPort::calcCost(OutputPort* logOut){
	if(logOut->isPlaced()){
		for(auto o: source_outputs){
			if(o.first->strictMatch(logOut)) return 0;
		}
		return 16*width;
	}else{
		int num_possible_ports = 0;
		for(auto o: source_outputs){
			if(o.first->match(logOut)) ++num_possible_ports;
		}
		return 16/pow(2,num_possible_ports)*width;
	}
}

int PhysicalInputPort::getConfSize(){
    return ceil(std::log(source_outputs.size())/std::log(2));
}

//bool PhysicalInputPort::match(InputPort* logIn){
//	return logIn->match_p(this);
//}
//
//bool PhysicalInputPort::strictMatch(InputPort* logIn){
//	return logIn->strictMatch_p(this);
//}


std::ostream& operator<<(std::ostream& os, const PhysicalInputPort& i){
//	for(auto o : i.source_outputs){
////		os<<boost::format("[%|=10|]")%o.first->owner->name;
//	}
//	os<<"\n";
//	for(auto o : i.source_outputs){
//		os<<boost::format("%|=15|")%"\u21A7";
//	}
//	os<<boost::format("\n%1%")%std::string(7, '_');
//	for(auto o : i.source_outputs){
//		os<<boost::format("%1%")%std::string(10, '_');
//	}
//	os<<"\n\\ ";
//	for(auto o : i.source_outputs){
//		os<<boost::format("|%|=10|")%o.first->getName();
//	}
//	os<<"| /\n \\";
//	for(auto o : i.source_outputs){
//		os<<boost::format("|%|=10|")%o.second;
//	}
//	os<<"|/\n  ";
//	for(auto o : i.source_outputs){
//		//std::wstring line(10,"\u23BA");
//		os<<boost::format("%|=10|")%"\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA";
//	}
//	os<<std::endl;
//	os<<boost::format("%|="+std::to_string(10*i.source_outputs.size()+6)+"|\n") % i.name;
//	os<<boost::format("%|="+std::to_string(10*i.source_outputs.size()+6)+"|\n") %"\u21A7";
//	os<<boost::format("%|="+std::to_string(10*i.source_outputs.size()+6)+"|\n") % i.owner->name;
	return os;
}

