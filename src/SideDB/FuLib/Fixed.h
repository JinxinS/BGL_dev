/*
 * Constant.h
 *
 *  Created on: Oct 14, 2016
 *      Author: songjinxin
 */

#ifndef FIXED_H_
#define FIXED_H_
#include "FUDescription.h"

class Fixed  : public FUDescription{

	int fixed_value;
	int type_to_value(const std::string& t);
public:
	static const std::string ZERO;
	static const std::string ONE;
	static const std::string TWO;
	static const std::string THREE	;
	static const std::string mONE;
	static const std::string mTWO;
	static const std::string fIXED128;
	static const std::string fIXED31;
	static const std::string TYPES[8];
	static const std::string FUNC_NAME;
	static const std::string FIXED_OUT;
	Fixed(const std::string& type);
	virtual ~Fixed();
};

#endif /* FIXED_H_ */
