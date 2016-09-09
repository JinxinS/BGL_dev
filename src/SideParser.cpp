/*
 * SideParser.cpp
 *
 *  Created on: Sep 9, 2016
 *      Author: songjinxin
 */

#include <SideParser.h>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <boost/log/trivial.hpp>
#include <boost/foreach.hpp>
#include <string>
#include <set>
#include <exception>
#include <iostream>
namespace pt = boost::property_tree;

const char* SideParser::tag  			= "LogicalSideWorks";
const char* SideParser::attr_siwname 	= "<xmlattr>.siw_name";
const char* SideParser::attr_name		= "<xmlattr>.name";
const char* SideParser::tag_fuplace	= "FUPlace";
const char* SideParser::attr_label		= "<xmlattr>.place_label";
const char* SideParser::tag_function	= "FUFunction";
const char* SideParser::attr_tname		= "<xmlattr>.type_name";
const char* SideParser::attr_funame	= "<xmlattr>.fu_name";
const char* SideParser::attr_funcname	= "<xmlattr>.func_name";
const char* SideParser::tag_funcarg	= "FunctionArg";
const char* SideParser::attr_value		= "<xmlattr>.value";
const char* SideParser::tag_fumem		= "FUMem";
const char* SideParser::attr_nwords	= "<xmlattr>.nwords";
const char* SideParser::attr_a_width	= "<xmlattr>.a_width";
const char* SideParser::attr_d_width	= "<xmlattr>.d_width";


SideParser::SideParser() {
	// TODO Auto-generated constructor stub

}

SideParser::~SideParser() {
	// TODO Auto-generated destructor stub
}

void SideParser::parseLogicalSideWorks(LogicalSideworks* lsiw,  const char* filename){
	// Create empty property tree object
	BOOST_LOG_TRIVIAL(debug)<<"parsing"<<filename;
	pt::ptree tree;
	// Parse the XML into the property tree.
	pt::read_xml(filename, tree);
	//siw_name
	BOOST_LOG_TRIVIAL(debug)<<tree.get_child(tag).get_child(attr_siwname).data();
	//datapath name
	BOOST_LOG_TRIVIAL(debug)<<tree.get_child(tag).get_child(attr_name).data();
	//
	BOOST_FOREACH(pt::ptree::value_type &v, tree.get_child(tag)) {
		if(v.first == tag_fuplace)//FU_PLACE
			BOOST_LOG_TRIVIAL(debug)<<"PLACE["<<v.second.get_child(attr_funame).data()<<"]@["<<v.second.get_child(attr_label).data()<<"]";
		else if(v.first == tag_fumem){//FU_MEM
			BOOST_LOG_TRIVIAL(debug)<<v.second.get_child(attr_funame).data()<<v.second.get_child(attr_a_width).data()<<" "
					<<v.second.get_child(attr_d_width).data()<<" "<<v.second.get_child(attr_nwords).data();
			BOOST_FOREACH(pt::ptree::value_type &m, v.second){
				if(m.first == tag_funcarg ){
					BOOST_LOG_TRIVIAL(debug)<<m.second.get_child(attr_name).data()<<"="<<m.second.get_child(attr_value).data();
				}
			}
		}else if(v.first == tag_function){//FU_FUNCTION
			BOOST_LOG_TRIVIAL(debug)<<v.second.get_child(attr_funame).data()<<" "<<v.second.get_child(attr_tname).data()<<" "<<v.second.get_child(attr_funcname).data();
			BOOST_FOREACH(pt::ptree::value_type &m, v.second){
				if(m.first == tag_funcarg ){
					BOOST_LOG_TRIVIAL(debug)<<m.second.get_child(attr_name).data()<<"="<<m.second.get_child(attr_value).data();
				}
			}
		}
	}
}
