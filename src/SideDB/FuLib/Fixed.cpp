/*
 * Constant.cpp
 *
 *  Created on: Oct 14, 2016
 *      Author: songjinxin
 */

#include "Fixed.h"
#include "FUDescription.h"
#include "Function.h"
#include "SideConfException.h"

const std::string Fixed::ZERO 		= "ZERO";
const std::string Fixed::ONE 		= "ONE";
const std::string Fixed::TWO 		= "TWO";
const std::string Fixed::THREE		= "THREE";
const std::string Fixed::mONE 		= "mONE";
const std::string Fixed::mTWO 		= "mTWO";
const std::string Fixed::fIXED128 	= "fIXED128";
const std::string Fixed::fIXED31 	= "fIXED31";
const std::string Fixed::FUNC_NAME = "FIXED";
const std::string Fixed::TYPES[8] = { ZERO, ONE, TWO, mONE, mTWO,fIXED128,fIXED31,THREE /*"NINE"*/ };
const std::string Fixed::FIXED_OUT = "fixed_out_";

Fixed::Fixed(const std::string& type)
:FUDescription(type),
 fixed_value(type_to_value(type)){
	addFUFunction(new Function(FUNC_NAME,0));
}

Fixed::~Fixed() {
	// TODO Auto-generated destructor stub
}

int Fixed::type_to_value(const std::string& t){
	if(ZERO == t)  		return 0;
	if(ONE == t)  		return 1;
	if(TWO == t)  		return 2;
	if(mONE == t) 	 	return -1;
	if(mTWO == t)  		return -2;
	if(fIXED128 == t) 	return 128;
	if(fIXED31 == t) 	return 31;
	if(THREE == t) 		return 3;
    throw  SideConfException("not such type of FixedFU");
}
