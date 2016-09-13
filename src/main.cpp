#include "SideConf.h"
#include "sic_types.h"
#include "SideConfException.h"
#include "time.h"

int main (int argc, char *argv[]) {
    clock_t start,finish;
    double totaltime;
    start = clock();
	try{
		SideConf SideConfigurator;
		SideConfigurator.run(argc,argv);
	}catch(const SideConfException& e){
		std::cerr<<"custom"<<std::endl;
		std::cerr<<e.what()<<std::endl;
	}
    finish = clock();
    totaltime = (double) (finish - start) / CLOCKS_PER_SEC;
    std::cout << "total time:" << totaltime << "second" << std::endl;
	return 0;
}
