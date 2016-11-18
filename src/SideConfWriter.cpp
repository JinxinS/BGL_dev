/*
 * SideConfWriter.cpp
 *
 *  Created on: Nov 11, 2016
 *      Author: songjinxin
 */

#include <SideConfWriter.h>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include "sic_types.h"
#include "LogicalFUInstance.h"
#include "LogicalSideworks.h"
#include "Mem.h"
#define STRINGIFY(identifier) #identifier 
SideConfWriter::SideConfWriter() {
	// TODO Auto-generated constructor stub

}

SideConfWriter::~SideConfWriter() {
	// TODO Auto-generated destructor stub
}

std::string SideConfWriter::setArray(const std::string& type,const std::string& varname, unsigned int len){
	return "\t" + type + "\t" + varname + "[" + std::to_string(len) + "];\n";
}

std::string SideConfWriter::setArray2D(const std::string&,const std::string&){
 return "";
}

//std::string SideConfWriter::setStructInUnion(const std::string&,const std::string&){
//
//}
//
//std::string SideConfWriter::setUnion(const std::string&,const std::string&){
//
//}

std::string SideConfWriter::setVar(const std::string& type,const std::string& varname){
	return "\t" + type +"\t" + varname + ";\n";
}

std::string SideConfWriter::setPointer(const std::string& type,const std::string& varname){
	return "\t" + type + "\t*" + varname + ";\n";
}

std::string SideConfWriter::setStruct(const std::string& structname,const std::string& content){
	return "struct { //" + structname + "\n" + content + "\n\t} " + structname +";\n";
}

std::string SideConfWriter::setTypeDef(const std::string& structname,const std::string& content){
	return "typedef\tstruct { // "+ structname + "\n" + content + "\n} " + structname + ";\n";
}

std::string SideConfWriter::setExtern(const std::string& type,const std::string& varname){
	return "\nextern " + type + " " + varname + ";\n" ;
}

std::string SideConfWriter::setDef(const std::string& identifier,const std::string& content){
	std::string id(identifier + "_H");
	boost::to_upper(id);
	return  "#ifndef " + id +"\n" + "#define " + id +"\n" + content + "\n#endif/*" + id +"*/\n";
}

void SideConfWriter::protoTypeHConf(const PhysicalSideworks& physical_sideworks,const std::vector<LogicalSideworks*>& slist, std::ofstream& hstream){
	std::stringstream content;
	std::string structContentList ;
	std::string classifiedName = boost::to_upper_copy(physical_sideworks.getName());
	for(unsigned int i = 0 ; i < slist.size(); ++i){
		unsigned nwords = sizeof(slist[i]->cfgWord)/sizeof(int) + 1; 
		std::string structContent = setVar(STRINGIFY(int),"base_address")+ setVar(STRINGIFY(int),"confsize")+ setArray(STRINGIFY(long),"kde",nwords);
		for(auto mem : slist[i]->getFUWithType(Mem::TYPE)){
			structContent += setPointer(STRINGIFY(long),mem->name);
		}
		structContentList  +=  setStruct(slist[i]->getName(),structContent);
	}
	content<<setTypeDef(classifiedName,structContentList)<<setExtern(classifiedName ,boost::to_lower_copy(classifiedName) );
	hstream<<setDef(classifiedName,content.str());
}

void SideConfWriter::protoTypeCConf(const PhysicalSideworks&/* physical_sideworks*/,const std::vector<LogicalSideworks*>& /*slist*/, std::ofstream& /*hstream*/){

}

void SideConfWriter::saveConf(const std::string& basename,const PhysicalSideworks& physical_sideworks, const std::vector<LogicalSideworks*>& slist){
	std::ofstream cfile;
	std::ofstream hfile;
	std::string cfilename(basename+".c");
	std::string hfilename(basename+".h");
	BOOST_LOG_TRIVIAL(info)<<" Saving Configuration File: "<<cfilename<<","<<hfilename;

	cfile.open(cfilename.c_str());
	hfile.open(hfilename.c_str());

	SideConfWriter::protoTypeHConf(physical_sideworks,slist,hfile);
	SideConfWriter::protoTypeCConf(physical_sideworks,slist,hfile);

	cfile.close();
	hfile.close();

}
