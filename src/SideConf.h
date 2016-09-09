/*
 * SideConf.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef SIDECONF_H_
#define SIDECONF_H_
#include <vector>
class LogicalSideworks;
class SideConf {
private:
    std::vector<LogicalSideworks*> 	logical_sideworks_list;
	SideConf(const SideConf&);
	SideConf& operator=(const SideConf&);
    void parseArgs(int argc, char** argv);
    void loadLogicalSideworks();
public:
	void run(int argc,char** argv);
	SideConf();
	virtual ~SideConf();
};

#endif /* SIDECONF_H_ */
