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
#include "Fixed.h"
#include "Mem.h"
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

void SideParser::parseFunctionalUnitLibrary(FunctionalUnitLibrary& fulib,const std::string& filename){
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
	fulib.addFUDescription(type,fu_desc);
}

void SideParser::parseLogicalSideWorks(FunctionalUnitLibrary& fulib,LogicalSideworks* logical_sideworks,  const char* filename){
	for (size_t i = 0, n = sizeof(Fixed::TYPES) / sizeof(Fixed::TYPES[0]); i < n; ++i){
		logical_sideworks->addFU(fulib.getLogicalFUInstance(Fixed::TYPES[i],Fixed::TYPES[i],Fixed::FUNC_NAME));
	}
	// Create empty property tree object
	BOOST_LOG_TRIVIAL(debug)<<"parsing"<<filename;
	pt::ptree tree;
	// Parse the XML into the property tree.
	pt::read_xml(filename, tree);
	//siw_name
	fulib.setName(tree.get_child(tag).get_child(attr_siwname).data());
	//datapath name
	logical_sideworks->setName(tree.get_child(tag).get_child(attr_name).data());
	BOOST_LOG_TRIVIAL(debug)<<logical_sideworks->getName();
	//
	std::map<std::string,std::string> memory_map;
	BOOST_FOREACH(pt::ptree::value_type &v, tree.get_child(tag)) {
		if(v.first == tag_fuplace){//FU_PLACE
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			std::string f_place_label(v.second.get_child(attr_label).data());
			memory_map.insert(std::make_pair(f_fu_name,f_place_label));
			BOOST_LOG_TRIVIAL(debug)<<"PLACE["<<f_fu_name<<"]@["<<f_place_label<<"]";
		}
	}

	BOOST_FOREACH(pt::ptree::value_type &v, tree.get_child(tag)) {
		if(v.first == tag_fumem){//FU_MEM
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			int f_nwords  = boost::lexical_cast<int>(v.second.get_child(attr_nwords).data());
			int f_a_width = boost::lexical_cast<int>(v.second.get_child(attr_a_width).data());
			int f_d_width = boost::lexical_cast<int>(v.second.get_child(attr_d_width).data());
			BOOST_LOG_TRIVIAL(debug)<<f_fu_name<<" "<<f_a_width<<" "<<f_d_width<<" "<<f_nwords;
			logical_sideworks->addFU(fulib.getLogicalMEMInstance(f_fu_name,f_a_width,f_d_width,f_nwords,memory_map.at(f_fu_name)));
		}else if(v.first == tag_function){//FU_FUNCTION
			std::string f_type_name(v.second.get_child(attr_tname).data());
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			std::string f_func_name(v.second.get_child(attr_funcname).data());
			BOOST_LOG_TRIVIAL(debug)<<f_fu_name<<" "<<f_type_name<<" "<<f_func_name;
			logical_sideworks->addFU(fulib.getLogicalFUInstance(f_fu_name,f_type_name,f_func_name));
		}else if((v.first == tag_attr)||(v.first == tag_comment)){
			//do nothing
		}else{
			BOOST_LOG_TRIVIAL(warning)<<"unknown tag : "<<v.first;
		}
	}

	BOOST_FOREACH(pt::ptree::value_type &v, tree.get_child(tag)) {
		if((v.first == tag_function)||(v.first == tag_fumem)){//FU_FUNCTION or FU_MEM
			std::string f_type_name;
			std::string f_fu_name(v.second.get_child(attr_funame).data());
			if(v.first == tag_function){
				f_type_name = v.second.get_child(attr_tname).data();
			}else f_type_name = Mem::TYPE;

			graph_t::vertex_descriptor dest_logicFu = logical_sideworks->getFU(f_fu_name);
			FUDescription* desc = logical_sideworks->fuList[dest_logicFu]->description;

			BOOST_FOREACH(pt::ptree::value_type &m, v.second){
				if(m.first == tag_funcarg ){
					std::string dst_in_pname(m.second.get_child(attr_name).data());
					std::string value(m.second.get_child(attr_value).data());
					BOOST_LOG_TRIVIAL(trace)<<dst_in_pname<<"="<<value;
					if(desc->isParameter(dst_in_pname)){
						logical_sideworks->fuList[dest_logicFu]->setParameter(dst_in_pname,boost::lexical_cast<long>(value));
					}else if(desc->isInputPort(dst_in_pname)){
						std::string src_funame;
						std::string src_out_pname;
						if(value == "undefined"){
							if((v.first == tag_fumem) &&(dst_in_pname == "en")){
								src_funame	  = Fixed::ZERO;
								src_out_pname = Fixed::FIXED_OUT;
								graph_t::vertex_descriptor src_logicFu = logical_sideworks->getFU(src_funame);
								logical_sideworks->addFixedConection(src_logicFu,dest_logicFu,src_out_pname,dst_in_pname);
							}
						}else{
							char_separator<char> sep(".");
							tokenizer<char_separator<char>> tokens(value, sep);
							int tokensize = std::distance(tokens.begin(),tokens.end());
							src_funame = tokens.begin().current_token();

							if(tokensize == 1){
								src_out_pname = Fixed::FIXED_OUT;
								graph_t::vertex_descriptor src_logicFu = logical_sideworks->getFU(src_funame);
								logical_sideworks->addFixedConection(src_logicFu,dest_logicFu,src_out_pname,dst_in_pname);
							}else if(tokensize == 2){
								src_out_pname = (++(tokens.begin())).current_token();
								graph_t::vertex_descriptor src_logicFu = logical_sideworks->getFU(src_funame);
								logical_sideworks->addConection(src_logicFu,dest_logicFu,src_out_pname,dst_in_pname);
							}else{
								throw SideConfException("bad input port format:["+value+"]");
							}
						}
					}
				}
			}
		}
	}

	//exclude unused Functional Unit in the Datapath, Note the siw_graph still contains the unused Functional Unit
	BGL_FORALL_VERTICES(v, logical_sideworks->siw_graph, graph_t){
		if(degree(v,logical_sideworks->siw_graph) == 0){
//			std::cout<<"delete "<<logical_sideworks->fuList[v]->name;
			delete logical_sideworks->fuList[v];
			logical_sideworks->fuList[v] = NULL;
		}
	}

}
