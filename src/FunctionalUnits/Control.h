#ifndef CONTROL_H_
#define CONTROL_H_

#include "FUDescription.h"
class Function;
class Control : public FUDescription
{
public:
	static const std::string TYPE;
	static const std::string FUNC_NAME;
	Control();
	virtual ~Control(){}
	Control(const Control&);
	Control& operator=(const Control&);
};

#endif /*CONTROL_H_*/
