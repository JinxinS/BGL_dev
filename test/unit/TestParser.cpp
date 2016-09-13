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

namespace logging = boost::log;

BOOST_AUTO_TEST_CASE(test_parser) {
    SideParser::parseLogicalSideWorks(0, 0, "./test/res/example.xml");

}
