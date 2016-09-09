/*
 * SideConf.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include <SideConf.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string>
#include "CmdLineParser.h"
#include "SideParser.h"
#include "LogicalSideworks.h"


SideConf::SideConf()
: logical_sideworks_list(){

}

SideConf::~SideConf() {
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

void SideConf::loadLogicalSideworks(){
	for(size_t i = 0; i < CmdLineParser::arguments.numofinputs; ++i ){
		logical_sideworks_list.push_back(new LogicalSideworks());
		SideParser::parseLogicalSideWorks(logical_sideworks_list[i],CmdLineParser::arguments.inputs[i]);
	}
}


void SideConf::run(int argc,char** argv){
	parseArgs(argc,argv);
	loadLogicalSideworks();
}


