#include "Control.h"
#include "Function.h"

const std::string Control::TYPE = "SIW_CTRL";
const std::string Control::FUNC_NAME = "SIW_CTRL";

Control::Control()
:FUDescription(TYPE)
{
	addInputPort("done",1);
	addInputPort("next",7);
	addInputPort("is_last",1);
	addInputPort("rd_next",1);
	addInputPort("in_addr_a",8);
	addInputPort("in_addr_b",8);
	addInputPort("m0_addr_a",12);
	addInputPort("m0_addr_b",12);

	addOutputPort("en", 1);
	addOutputPort("out0", 8);
	addOutputPort("out1", 8);
	addOutputPort("out2", 8);
	addOutputPort("out3", 8);
	addOutputPort("out4", 8);
	addOutputPort("out5", 8);
	addOutputPort("out6", 8);
	addOutputPort("out7", 8);
	addOutputPort("out8", 8);
	addOutputPort("out9", 8);

	addOutputPort("data_out_A0", 32);
	addOutputPort("data_out_A1", 32);
	addOutputPort("data_out_A2", 32);
	addOutputPort("data_out_A3", 32);
	addOutputPort("data_out_B0", 32);
	addOutputPort("data_out_B1", 32);
	addOutputPort("data_out_B2", 32);
	addOutputPort("data_out_B3", 32);

	addOutputPort("m0A_out0", 8);
	addOutputPort("m0A_out1", 8);
	addOutputPort("m0A_out2", 8);
	addOutputPort("m0A_out3", 8);
	addOutputPort("m0B_out0", 8);
	addOutputPort("m0B_out1", 8);
	addOutputPort("m0B_out2", 8);
	addOutputPort("m0B_out3", 8);
	addOutputPort("pl", 2);

	addParameter("dly", 2);

	Function* function =  new Function(FUNC_NAME,0) ;
	function->addFunctionArg("done");
	function->addFunctionArg("next");
	function->addFunctionArg("is_last");
	function->addFunctionArg("rd_next");
	function->addFunctionArg("in_addr_a");
	function->addFunctionArg("in_addr_b");
	function->addFunctionArg("m0_addr_a");
	function->addFunctionArg("m0_addr_b");
	function->addFunctionArg("dly");
	addFUFunction(function);
}
