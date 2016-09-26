/*
 * CmdLineParser.cpp
 *
 *  Created on: Sep 8, 2016
 *      Author: songjinxin
 */

#include "CmdLineParser.h"
#include <error.h>
#include <stdlib.h>
#include <argp.h>

#define XSTR(s) STR(s)
#define STR(s) #s

/* Keys for options without short-options. */
#define OPT_ABORT  1            /* –abort */
const char *argp_program_version = XSTR(SideConf Version VERSION (compiled on __DATE__));
const char *argp_program_bug_address = "<bugs@coreworks-sa.com>";

char CmdLineParser::doc[]=
		"SideConf - SideWorks Architecture and Physical Configurations Generator\n\
\nGenerate SideWorks architecture and physical configurations from the logic configuration files.\
        \vwhen option -p is enabled, the input file should be the SideWorks Configuration file instead of the datapath description files \n"
		"when option -d,-s is enabled, SideConf will generate datapath description files with delay calculated.the output files should be fed back to SideConf to generate the configuration file ";

/* A description of the arguments we accept. */
char CmdLineParser::args_doc[] = "[files]...";

struct argp_option CmdLineParser::options[] = {

		{"arch",     'a', "FILE",  0, "Physical SideWorks Architecture file"			,0},
		{"funit",    'f', "FOLDER",0, "FOLDER of Functional Units "						,0},
		{"output",   'o', "FOLDER",0, "FOLDER of SideConf Output"						,0},
		{0,			  0 , 0,       0, "The following options should be grouped together:",0},
		{"verbose",  'v', 0,       0, "Produce verbose output" 							,0},
		{"quiet",    'q', 0,       0, "Don't produce any output"						,0},
		{"delay",    'd', 0,       0, "automatic calculate delay of the Datapath"		,0},
		{"exclude",  'e', 0,       0, "exclude unused Functional Unit in the Datapath"	,0},
		{"keep",     'k', 0,       0, "keep the order of input files"   			 	,0},
		{"report",   'r', 0,       0, "Create detailed report file"	   					,0},
		{"abort",OPT_ABORT,0,      0, "Abort before showing any output"					,0},
		{ 0,0,0,0,0,0 }
};


struct argp CmdLineParser::argp = { options, parse_opt, args_doc, doc,0,0,0 };

struct arguments CmdLineParser::arguments={0,0,0,0,0,0,0,0,0,"",".",""};

CmdLineParser::CmdLineParser()
{

}

CmdLineParser::~CmdLineParser() {
	// TODO Auto-generated destructor stub
}

error_t CmdLineParser::parse_opt (int key, char *arg, struct argp_state *state){

	/* Get the input argument from argp_parse, which we
     know is a pointer to our arguments structure. */
	struct arguments *arguments = (struct arguments *)state->input;

	switch (key)
	{
	case 'q':
		arguments->silent = 1;
		break;
	case 'v':
		arguments->verbose = 1;
		break;
	case 'd':
		arguments->delay = 1;
		break;
	case 'a':
		arguments->arch = arg;
		break;
	case 'o':
		arguments->output = arg;
		break;
	case 'f':
		arguments->fufolder = arg;
		break;
	case 'r':
		arguments->report = 1;
		break;
	case 'e':
		arguments->exclude = 1;
		break;
	case 'k':
		arguments->keep = 1;
		break;
	case OPT_ABORT:
		arguments->abort = 1;
		break;
	case ARGP_KEY_END:
		if(arguments->numofinputs < 1)		{
			printf("Input file is Missing!\n");
			argp_usage (state);
		}
		break;
	case ARGP_KEY_ARG:
		/* Here we know that state->arg_num == 0, since we
         force argument parsing to end before any more arguments can
         get here. */
		//	arguments->arg1 = arg;

		/* Now we consume all the rest of the arguments.
         state->next is the index in state->argv of the
         next argument to be parsed, which is the first string
         we’re interested in, so we can just use
         &state->argv[state->next] as the value for
         arguments->strings.

         In addition, by setting state->next to the end
         of the arguments, we can force argp to stop parsing here and
         return. */
		arguments->inputs = &state->argv[state->next-1];
		arguments->numofinputs = state->argc - (state->next-1);
		state->next = state->argc;

		break;

	default:
		return ARGP_ERR_UNKNOWN;
	}
	return 0;
}

void CmdLineParser::parse(int argc, char **argv){
	argp_parse (&argp, argc, argv, 0, 0, &arguments);
}


void CmdLineParser::pritnArg(){

	if (arguments.abort)
		error (10, 0, "ABORTED");

	printf ("FUNCTIONAL_UNIT_FOLDER = %s \n",arguments.fufolder);
	printf ("INPUTS of %lu = ",arguments.numofinputs);
	for (int j = 0; arguments.inputs[j]; j++)
		printf (j == 0 ? "%s" : ", %s", arguments.inputs[j]);
	printf ("\n");
	printf ("OUTPUT_FOLDER = %s\nVERBOSE = %s\nSILENT = %s\nREPORT = %s\n",
			arguments.output,
			arguments.verbose ? "yes" : "no",
					arguments.silent ? "yes" : "no",
							arguments.report ? "yes" : "no");

}
