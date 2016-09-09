/*
 * CmdLineParser.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef CMDLINEPARSER_H_
#define CMDLINEPARSER_H_
#include <errno.h>

class CmdLineParser {
	/* Used by main to communicate with parse_opt. */
	struct arguments
	{
		//char *arg1;                   									  /* arg1 */
		char **inputs;                										  /* [inputs…] */
		int silent, verbose, abort,report,numofinputs,delay,exclude ,keep;    /* ‘-s’, ‘-v’, ‘--abort’ */
		char const* arch;
		char const* output;           										  /* file arg to ‘--output’ */
		char const* fufolder;
	};


	enum mode{
		DEFAULT,
		SET_PARAM,
		CALC_DELAY,
		MAP
	};

	static char doc[];
	static char args_doc[];
	static struct argp_option options[];
	/* Our argp parser. */
	static struct argp argp;
	static error_t parse_opt (int key, char *arg, struct argp_state *state);
	CmdLineParser(const CmdLineParser&);
	CmdLineParser& operator=(const CmdLineParser&);
public:
	struct arguments arguments;
	CmdLineParser();
	virtual ~CmdLineParser();
	void parse(int argc, char **argv);
	void pritnArg();
};

#endif /* CMDLINEPARSER_H_ */
