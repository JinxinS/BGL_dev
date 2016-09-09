/*
 * SideConf.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef SIDECONF_H_
#define SIDECONF_H_
class CmdLineParser;
class SideConf {
private:
    CmdLineParser* parser;
	SideConf(const SideConf&);
	SideConf& operator=(const SideConf&);
    void parseArgs(int argc, char** argv);
public:
	void run(int argc,char** argv);
	SideConf();
	virtual ~SideConf();
};

#endif /* SIDECONF_H_ */
