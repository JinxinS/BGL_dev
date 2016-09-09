/*
 * SideParser.h
 *
 *  Created on: Sep 9, 2016
 *      Author: songjinxin
 */

#ifndef SIDEPARSER_H_
#define SIDEPARSER_H_
class LogicalSideworks;
class SideParser {
	static const char* tag;
	static const char* attr_siwname;
	static const char* attr_name;
	static const char* tag_fuplace;
	static const char* attr_label;
	static const char* tag_function;
	static const char* attr_tname;
	static const char* attr_funame;
	static const char* attr_funcname;
	static const char* tag_funcarg;
	static const char* attr_value;
	static const char* tag_fumem;
	static const char* attr_nwords;
	static const char* attr_a_width;
	static const char* attr_d_width;
public:
	SideParser();
	virtual ~SideParser();
    static void parseLogicalSideWorks(LogicalSideworks* lsiw,  const char* file);
};

#endif /* SIDEPARSER_H_ */
