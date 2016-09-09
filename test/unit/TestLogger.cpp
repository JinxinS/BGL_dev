/*
 * TestLogger.cpp
 *
 *  Created on: Sep 9, 2016
 *      Author: songjinxin
 */


/*
 * TestMap.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

//#include <sic_types.h>
#define BOOST_TEST_MODULE boost_logger
#include <boost/test/unit_test.hpp>
#include <boost/log/trivial.hpp>
#include <boost/log/expressions.hpp>
namespace logging = boost::log;

BOOST_AUTO_TEST_CASE(test_case2) {
    logging::core::get()->set_filter
    (
        logging::trivial::severity == logging::trivial::info
    );

    BOOST_LOG_TRIVIAL(trace) << "A trace severity message";
    BOOST_LOG_TRIVIAL(debug) << "A debug severity message";
    BOOST_LOG_TRIVIAL(info) << "An informational severity message";
    BOOST_LOG_TRIVIAL(warning) << "A warning severity message";
    BOOST_LOG_TRIVIAL(error) << "An error severity message";
    BOOST_LOG_TRIVIAL(fatal) << "A fatal severity message";
}

