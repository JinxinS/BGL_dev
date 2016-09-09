/*
 * SideConf.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include <SideConf.h>
#include "CmdLineParser.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string>

SideConf::SideConf()
:parser(new CmdLineParser()){
	// TODO Auto-generated constructor stub
}

SideConf::~SideConf() {
	delete parser;
}

void SideConf::parseArgs(int argc, char** argv){
	parser->parse(argc, argv);

    std::string fu_folder(parser->arguments.fufolder);
    std::string target_folder(parser->arguments.output);
    std::string target_xml_folder(target_folder + "xmlfiles/");
    std::string target_verilog_folder(target_folder + "verilog/");
	std::string reportfile(target_folder + "/sideconf_generation.log");

	mkdir(target_folder.c_str(),ACCESSPERMS);
	if(parser->arguments.delay){
		mkdir(target_xml_folder.c_str(),ACCESSPERMS);
		//rmdir(target_verilog_folder.c_str());
	}else{
		mkdir(target_verilog_folder.c_str(),ACCESSPERMS);
		//rmdir(target_xml_folder.c_str());
	}
	if(parser->arguments.report){

	}
}

void SideConf::run(int argc,char** argv){
	parseArgs(argc,argv);

}


