/*
 * CmdLineParser.h
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#ifndef CMDLINEPARSER_H_
#define CMDLINEPARSER_H_
#include <errno.h>
#include <stddef.h>

/* Used by main to communicate with parse_opt. */
struct arguments
{
	//char *arg1;                   									  /* arg1 */
	char **inputs;                										  /* [inputs…] */
	int silent, verbose, abort,report,delay,exclude ,keep;    /* ‘-s’, ‘-v’, ‘--abort’ */
	size_t numofinputs;
	char const* arch;
	char const* output;           										  /* file arg to ‘--output’ */
	char const* fufolder;
};

class CmdLineParser {
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
	static struct arguments arguments;
	CmdLineParser();
	virtual ~CmdLineParser();
	static void parse(int argc, char **argv);
	static void pritnArg();
};

#endif /* CMDLINEPARSER_H_ */
