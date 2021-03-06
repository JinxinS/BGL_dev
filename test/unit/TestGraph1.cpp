/*
 * TestGraph1.cpp
 *
 *  Created on: Sep 15, 2016
 *      Author: songjinxin
 */

#define BOOST_TEST_MODULE testgraph1
#include <boost/test/unit_test.hpp>
#include <boost/config.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/graph/iteration_macros.hpp>
#include <string>
#include <iostream>
using namespace boost;

/// City structure to be attached to each vertex
struct City {
  City() {}

  City(const std::string& name, int population = -1)
    : name(name), population(population) { }

  std::string name;
  int population;
};

namespace boost {
namespace graph {

/// Use the City name as a key for indexing cities in a graph
template<>
struct internal_vertex_name<City>
{
  typedef multi_index::member<City, std::string, &City::name> type;
};

/// Allow the graph to build cities given only their names (filling in
/// the defaults for fields).
template<>
struct internal_vertex_constructor<City>
{
  typedef vertex_from_name<City> type;
};

}
} // end namespace boost::graph

// Our road map, where each of the vertices are cities
typedef adjacency_list<vecS, vecS, directedS, City> RoadMap;
typedef graph_traits<RoadMap>::vertex_descriptor Vertex;

BOOST_AUTO_TEST_CASE(test_case)
{
  RoadMap map;

  /// Create vertices for Bloomington, Indianapolis, Chicago
  Vertex bloomington = add_vertex(City("Bloomington", 69291), map);
  Vertex indianapolis = add_vertex(City("Indianapolis", 791926), map);
  Vertex chicago = add_vertex(City("Chicago", 9500000), map);

  BOOST_CHECK(add_vertex(City("Bloomington", 69291), map) == bloomington);

  BGL_FORALL_VERTICES(city, map, RoadMap)
    std::cout << map[city].name << ", population " << map[city].population
              << std::endl;

  BOOST_CHECK(*find_vertex("Bloomington", map) == bloomington);
  BOOST_CHECK(*find_vertex("Indianapolis", map) == indianapolis);
  BOOST_CHECK(*find_vertex("Chicago", map) == chicago);

  add_edge(bloomington, "Indianapolis", map);
  add_edge("Indianapolis", chicago, map);
  add_edge("Indianapolis", "Cincinnatti", map);

  BGL_FORALL_EDGES(road, map, RoadMap)
    std::cout << map[source(road, map)].name << " -> "
              << map[target(road, map)].name << std::endl;

  BOOST_CHECK(map[*find_vertex("Cincinnatti", map)].population == -1);
}
