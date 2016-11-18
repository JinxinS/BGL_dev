/*
 * SideConfWriter.h
 *
 *  Created on: Nov 11, 2016
 *      Author: songjinxin
 */

#ifndef SIDECONFWRITER_H_
#define SIDECONFWRITER_H_
#include <string>
#include <vector>
#include "PhysicalSideworks.h"
class LogicalSideworks;
class SideConfWriter {

	static std::string setVar(const std::string&,const std::string&);  
	static std::string setArray(const std::string& type,const std::string& varname, unsigned int len);
	static std::string setArray2D(const std::string&,const std::string&);
	static std::string setDef(const std::string&,const std::string&);    
	static std::string setStruct(const std::string&,const std::string&); 
	static std::string setStructInUnion(const std::string&,const std::string&);
	static std::string setUnion(const std::string&,const std::string&);  
	static std::string setPointer(const std::string&,const std::string&);
	static std::string setIfDef(const std::string&,const std::string&);  
	static std::string setIfNdef(const std::string&,const std::string&); 
	static std::string setTypeDef(const std::string&,const std::string&);
	static std::string setExtern(const std::string&,const std::string&);

	static void protoTypeHConf(const PhysicalSideworks& ,const std::vector<LogicalSideworks*>& ,std::ofstream& );
	static void protoTypeCConf(const PhysicalSideworks& ,const std::vector<LogicalSideworks*>& ,std::ofstream& );
	public:
	SideConfWriter();
	virtual ~SideConfWriter();
	static void saveConf(const std::string&,const PhysicalSideworks& ,const std::vector<LogicalSideworks*>&);
};

#endif /* SIDECONFWRITER_H_ */
