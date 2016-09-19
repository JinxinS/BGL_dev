/*
 * SideConf.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "SideConf.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include "sic_types.h"
#include "CmdLineParser.h"
#include "SideParser.h"
#include "LogicalSideworks.h"
#include "FunctionalUnitLibrary.h"

SideConf::SideConf()
: fu_library(new FunctionalUnitLibrary()),
  logical_sideworks_list(){
    logging::core::get()->set_filter(logging::trivial::severity >= logging::trivial::trace);
}

SideConf::~SideConf() {
	delete fu_library;
	for(size_t i = 0; i < logical_sideworks_list.size(); ++i){
		delete logical_sideworks_list[i];
	}
}

void SideConf::parseArgs(int argc, char** argv){
	CmdLineParser::parse(argc, argv);

    std::string fu_folder(CmdLineParser::arguments.fufolder);
    std::string target_folder(CmdLineParser::arguments.output);
    std::string target_xml_folder(target_folder + "/xmlfiles/");
    std::string target_verilog_folder(target_folder + "/verilog/");
	std::string reportfile(target_folder + "/sideconf_generation.log");

	mkdir(target_folder.c_str(),ACCESSPERMS);
	if(CmdLineParser::arguments.delay){
		mkdir(target_xml_folder.c_str(),ACCESSPERMS);
		//rmdir(target_verilog_folder.c_str());
	}else{
		mkdir(target_verilog_folder.c_str(),ACCESSPERMS);
		//rmdir(target_xml_folder.c_str());
	}
	if(CmdLineParser::arguments.report){

	}
}

void SideConf::loadDataBase(){
	path fu_folder(CmdLineParser::arguments.fufolder);
	if(exists(fu_folder)){
		if (is_directory(fu_folder))
			BOOST_LOG_TRIVIAL(info)<<"Load XML Custom FU Library from \"" << fu_folder << "\" ...";
		else
			BOOST_LOG_TRIVIAL(error)<<fu_folder<<"is not a valid directory";
		directory_iterator it(fu_folder), eod;
		BOOST_FOREACH(path const &x, std::make_pair(it, eod))
			if(x.extension() == ".xml") SideParser::parseFunctionalUnitLibrary(fu_library,x.string());
	}else{
		BOOST_LOG_TRIVIAL(warning)<<"XML Custom FU Library doesn't exsit ...";
	}
}


void SideConf::loadLogicalSideworks(){
	for(size_t i = 0; i < CmdLineParser::arguments.numofinputs; ++i ){
		logical_sideworks_list.push_back(new LogicalSideworks());
		SideParser::parseLogicalSideWorks(fu_library,logical_sideworks_list[i],CmdLineParser::arguments.inputs[i]);
		print_graph(logical_sideworks_list[i]->getGraph(),get(boost::vertex_funame,logical_sideworks_list[i]->getGraph()));
	}
}

void SideConf::run(int argc,char** argv){
	parseArgs(argc,argv);
	loadDataBase();
	loadLogicalSideworks();
}


