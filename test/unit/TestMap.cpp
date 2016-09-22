/*
 * TestMap.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include <gmock/gmock.h>
#include <string>
#include "SampleGraph.h"
#define BOOST_TEST_MODULE Map example
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_CASE(test_case1) {
	Mapper m;
	Sample_graph1 g1;
	Sample_graph2 g2;
	print_graph(g1.getGraph());
	print_graph(g2.getGraph());
	print_graph(g1.getGraph(),get(boost::vertex_bundle,g1.getGraph()));

	BOOST_CHECK_EQUAL(m.map_func(g1.getGraph(),g2.getGraph()),true);
}

