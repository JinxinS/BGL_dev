/*
 * TestParser.cpp
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#define BOOST_TEST_MODULE ParserTest
#include <boost/test/unit_test.hpp>
#include <boost/log/trivial.hpp>
#include <boost/log/expressions.hpp>
#include "SideParser.h"
#include "FunctionalUnitLibrary.h"
#include "LogicalSideworks.h"
namespace logging = boost::log;

BOOST_AUTO_TEST_CASE(test_parser) {
	FunctionalUnitLibrary fulib ;
	LogicalSideworks l1,l2;
	directory_iterator it("/coreworks/sideconf-dev/sideFU/release/xml/"), eod;
	BOOST_FOREACH(path const &x, std::make_pair(it, eod))
	if(x.extension() == ".xml")SideParser::parseFunctionalUnitLibrary(fulib,x.string());
	SideParser::parseLogicalSideWorks(fulib, &l1, "./test/res/example.xml");

}
