/*
 * SideParser.h
 *
 *  Created on: Sep 9, 2016
 *      Author: songjinxin
 */

#ifndef SIDEPARSER_H_
#define SIDEPARSER_H_
#include "sic_types.h"
#include "SideConfException.h"
#include "FunctionalUnitLibrary.h"
class LogicalSideworks;
class SideParser {

	static const char* tag_comment;
	static const char* tag_attr;

	static const char* fu_tag_func;
	static const char* fu_tag_output;
	static const char* fu_tag_input;
	static const char* fu_tag_param;
	static const char* fu_tag_function;
	static const char* fu_tag_funcarg;
	static const char* fu_attr_type;
	static const char* fu_attr_name;
	static const char* fu_attr_width;
	static const char* fu_attr_sel;

	static const char* tag;
	static const char* tag_fuplace;
	static const char* tag_function;
	static const char* tag_funcarg;
	static const char* tag_fumem;
	static const char* attr_siwname;
	static const char* attr_name;
	static const char* attr_label;
	static const char* attr_tname;
	static const char* attr_funame;
	static const char* attr_funcname;
	static const char* attr_value;
	static const char* attr_nwords;
	static const char* attr_a_width;
	static const char* attr_d_width;

public:
	SideParser();
	virtual ~SideParser();
    static void parseFunctionalUnitLibrary(FunctionalUnitLibrary& fulib,const std::string& folder);
    static void parseLogicalSideWorks(const FunctionalUnitLibrary& fulib,LogicalSideworks* logical_sideworks,  const char* filename);
};

#endif /* SIDEPARSER_H_ */
