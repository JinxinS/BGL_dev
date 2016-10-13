/*
 * InputPort.cpp
 *
 *  Created on: Sep 29, 2016
 *      Author: songjinxin
 */

#include <InputPort.h>
#include "OutputPort.h"
#include "sic_types.h"

InputPort::InputPort(const std::string& name, int width, FUInstance* p)
:Port(name, width, p),
 source_outputs(){
	// TODO Auto-generated constructor stub

}

InputPort::~InputPort() {
	// TODO Auto-generated destructor stub
}

void InputPort::setMuxSelect(OutputPort* out,int muxselect){
	source_outputs.at(out) = muxselect;
}

bool InputPort::isConnected(OutputPort* out){
	return (source_outputs.find(out)!=source_outputs.end());
}

int InputPort::connect(OutputPort* out){
	if(source_outputs.insert(std::make_pair(out,size())).second) return size()-1;
	else return source_outputs.at(out);
}

std::ostream& operator<<(std::ostream& os, const InputPort& i){
	for(auto o : i.source_outputs){
		os<<boost::format("[%|=10|]")%o.first->parent->name;
	}
	os<<"\n";
	for(auto o : i.source_outputs){
		os<<boost::format("%|=15|")%"\u21A7";
	}
	os<<boost::format("\n%1%")%std::string(7, '_');
	for(auto o : i.source_outputs){
		os<<boost::format("%1%")%std::string(10, '_');
	}
	os<<"\n\\ ";
	for(auto o : i.source_outputs){
		os<<boost::format("|%|=10|")%o.first->getName();
	}
	os<<"| /\n \\";
	for(auto o : i.source_outputs){
		os<<boost::format("|%|=10|")%o.second;
	}
	os<<"|/\n  ";
	for(auto o : i.source_outputs){
		//std::wstring line(10,"\u23BA");
		os<<boost::format("%|=10|")%"\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA\u23BA";
	}
	os<<std::endl;
	os<<boost::format("%|="+std::to_string(10*i.source_outputs.size()+6)+"|\n") % i.name;
	os<<boost::format("%|="+std::to_string(10*i.source_outputs.size()+6)+"|\n") %"\u21A7";
	os<<boost::format("%|="+std::to_string(10*i.source_outputs.size()+6)+"|\n") % i.parent->name;
	return os;
}
