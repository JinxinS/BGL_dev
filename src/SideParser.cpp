/*
 * SideParser.cpp
 *
 *  Created on: Sep 9, 2016
 *      Author: songjinxin
 */

#include "SideParser.h"
#include "Function.h"
#include "FUDescription.h"
#include "FunctionalUnitLibrary.h"
#include "LogicalSideworks.h"
const char* SideParser::tag_comment		="<xmlcomment>";
const char* SideParser::tag_attr			="<xmlattr>";

const char* SideParser::fu_tag_func		="FunctionalUnit";
const char* SideParser::fu_tag_output		="OutputPort";
const char* SideParser::fu_tag_input		="InputPort";
const char* SideParser::fu_tag_param		="Parameter";
const char* SideParser::fu_tag_function	="Function";
const char* SideParser::fu_tag_funcarg		="FunctionArg";
const char* SideParser::fu_attr_type		="<xmlattr>.type";
const char* SideParser::fu_attr_name		="<xmlattr>.name";
const char* SideParser::fu_attr_width		="<xmlattr>.width";
const char* SideParser::fu_attr_sel		="<xmlattr>.select";

const char* SideParser::tag  			= "LogicalSideWorks";
const char* SideParser::tag_fuplace	= "FUPlace";
const char* SideParser::tag_function	= "FUFunction";
const char* SideParser::tag_funcarg	= "FunctionArg";
const char* SideParser::tag_fumem		= "FUMem";
const char* SideParser::attr_siwname 	= "<xmlattr>.siw_name";
const char* SideParser::attr_name		= "<xmlattr>.name";
const char* SideParser::attr_label		= "<xmlattr>.place_label";
const char* SideParser::attr_tname		= "<xmlattr>.type_name";
const char* SideParser::attr_funame	= "<xmlattr>.fu_name";
const char* SideParser::attr_funcname	= "<xmlattr>.func_name";
const char* SideParser::attr_value		= "<xmlattr>.value";
const char* SideParser::attr_nwords	= "<xmlattr>.nwords";
const char* SideParser::attr_a_width	= "<xmlattr>.a_width";
const char* SideParser::attr_d_width	= "<xmlattr>.d_width";


SideParser::SideParser() {
	// TODO Auto-generated constructor stub

}

SideParser::~SideParser() {
	// TODO Auto-generated destructor stub
}

void SideParser::parseFunctionalUnitLibrary(FunctionalUnitLibrary* fulib,const std::string& filename){
	BOOST_LOG_TRIVIAL(debug)<<"parsing"<<filename;
	pt::ptree tree;
	pt::read_xml(filename, tree);

	std::string type(tree.get_child(fu_tag_func).get_child(fu_attr_type).data());
	BOOST_LOG_TRIVIAL(trace)<<type;
	FUDescription *fu_desc = new FUDescription(type);

	BOOST_FOREACH(pt::ptree::value_type &v, tree.get_child(fu_tag_func)) {
		if(v.first == fu_tag_output){
			std::string name(v.second.get_child(fu_attr_name).data());
			int width = boost::lexical_cast<int>(v.second.get_child(fu_attr_width).data());
			fu_desc->addOutputPort(name,width);
			BOOST_LOG_TRIVIAL(trace)<<"output:"<<name<<" "<<width;
		}else if(v.first == fu_tag_input){
			std::string name(v.second.get_child(fu_attr_name).data());
			int width = boost::lexical_cast<int>(v.second.get_child(fu_attr_width).data());
			fu_desc->addInputPort(name,width);
			BOOST_LOG_TRIVIAL(trace)<<"input:"<<name<<" "<<width;
		}else if(v.first == fu_tag_param){
			std::string name(v.second.get_child(fu_attr_name).data());
			int width = boost::lexical_cast<int>(v.second.get_child(fu_attr_width).data());
			fu_desc->addParameter(name,width);
			BOOST_LOG_TRIVIAL(trace)<<"param:"<<name<<" "<<width;
		}else if(v.first == fu_tag_function){
			std::string name(v.second.get_child(fu_attr_name).data());
			int select = boost::lexical_cast<int>(v.second.get_child(fu_attr_sel).data());
			Function *function = new Function(name,select);
			fu_desc->addFUFunction(function);
			BOOST_LOG_TRIVIAL(trace)<<"function:"<<name<<" "<<select;
			BOOST_FOREACH(pt::ptree::value_type &t, v.second){
				if(t.first == fu_tag_funcarg ){
					std::string arg(t.second.get_child(fu_attr_name).data());
					BOOST_LOG_TRIVIAL(trace)<<"argument:"<<arg;
					if(fu_desc->isInputPort(arg)){
						function->addFunctionArg(arg);
					}else if(fu_desc->isParameter(arg)){
						function->addFunctionArg(arg);
					}else{

					}
				}
			}
		}else if((v.first == tag_attr)||(v.first == tag_comment)){
			//do nothing
		}else{
			BOOST_LOG_TRIVIAL(warning)<<"unknown tag : "<<v.first;
		}
	}
	fulib->addFUDescription(type,fu_desc);
}

void SideParser::parseLogicalSideWorks(FunctionalUnitLibrary* fulib,LogicalSideworks* logical_sideworks,  const char* filename){
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
		if(v.first == tag_fumem){//FU_MEM
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			int f_nwords  = boost::lexical_cast<int>(v.second.get_child(attr_nwords).data());
			int f_a_width = boost::lexical_cast<int>(v.second.get_child(attr_a_width).data());
			int f_d_width = boost::lexical_cast<int>(v.second.get_child(attr_d_width).data());
			BOOST_LOG_TRIVIAL(debug)<<f_fu_name<<" "<<f_a_width<<" "<<f_d_width<<" "<<f_nwords;
			logical_sideworks->addLogicalFU(fulib->getLogicalMEMInstance(f_fu_name,f_a_width,f_d_width,f_nwords));
		}else if(v.first == tag_function){//FU_FUNCTION
			std::string f_type_name(v.second.get_child(attr_tname).data());
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			std::string f_func_name(v.second.get_child(attr_funcname).data());
			BOOST_LOG_TRIVIAL(debug)<<f_fu_name<<" "<<f_type_name<<" "<<f_func_name;
			logical_sideworks->addLogicalFU(fulib->getLogicalFUInstance(f_type_name,f_fu_name,f_func_name));
		}else if((v.first == tag_attr)||(v.first == tag_comment)){
			//do nothing
		}else{
			BOOST_LOG_TRIVIAL(warning)<<"unknown tag : "<<v.first;
		}
	}

	BOOST_FOREACH(pt::ptree::value_type &v, tree.get_child(tag)) {
		if(v.first == tag_fuplace){//FU_PLACE
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			std::string f_place_label(v.second.get_child(attr_funame).data());
			//LogicalFUInstance* fu = logical_sideworks->getLogicalFU(f_fu_name);
			BOOST_LOG_TRIVIAL(debug)<<"PLACE["<<f_fu_name<<"]@["<<f_place_label<<"]";
		}
		else if(v.first == tag_fumem){//FU_MEM
			std::string f_fu_name(v.second.get_child(attr_funame).data());

			BOOST_FOREACH(pt::ptree::value_type &m, v.second){
				if(m.first == tag_funcarg ){
					BOOST_LOG_TRIVIAL(trace)<<m.second.get_child(attr_name).data()<<"="<<m.second.get_child(attr_value).data();
				}
			}
		}else if(v.first == tag_function){//FU_FUNCTION
			std::string f_fu_name(v.second.get_child(attr_funame).data());

			BOOST_FOREACH(pt::ptree::value_type &m, v.second){
				if(m.first == tag_funcarg ){
					BOOST_LOG_TRIVIAL(trace)<<m.second.get_child(attr_name).data()<<"="<<m.second.get_child(attr_value).data();
				}
			}
		}
	}
}
