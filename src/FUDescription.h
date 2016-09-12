/*
 * FUDescription.h
 *
 *  Created on: Sep 12, 2016
 *      Author: songjinxin
 */

#ifndef FUDESCRIPTION_H_
#define FUDESCRIPTION_H_
#include "sic_types.h"
class Function;
class FUDescription {
	std::string 						  type;
	std::unordered_map<std::string, int> input_ports_width;
	std::unordered_map<std::string, int> output_ports_width;
	std::unordered_map<std::string, int> parameters;
    std::unordered_map<std::string, Function*> function_descriptions;
public:
	FUDescription(const std::string&);
	virtual ~FUDescription();
};

#endif /* FUDESCRIPTION_H_ */
