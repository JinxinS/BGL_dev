SHELL = /bin/bash

include config.mk

vpath %.cpp $(sideconf.src.dir)
vpath %.h $(sideconf.header.dir)

.PHONY: all 

CXXFLAGS += 

all: release-make  unit-test

release-make : $(release.lib) $(release.headers) $(release.bin) #$(STATIC_ANALYSIS_REPORT)

define SUB_MAKE
	@$(MAKE) --no-print-directory -f $(SUB_MAKEFILE)
endef

unit-test: SUB_MAKEFILE := $(test.unit.src.dir)/unit.mk

unit-test: release-make | $(test.output.dir) 
	$(SUB_MAKE)

$(release.headers): $(release.dir)/%.h : %.h
$(release.lib): $(libsideconf)		
$(release.headers) $(release.lib) : | $(release.dir)
	cp $^ -t $(release.dir)

$(libsideconf): $(obj.files) | $(bin.dir)
	ar -rc $@ $^

$(release.bin):$(sideconf.bin) | $(release.dir)
	cp $< $@

$(sideconf.bin):$(obj.files)  -lboost_log -lboost_system -lboost_thread -lboost_filesystem| $(bin.dir)
	$(CXX) -pthread  $(CXXFLAGS) $(CXXDEFINES) $(INCLUDES)   -o $@  $(main.file) $^ 

$(obj.files): $(obj.dir)/%.o : %.cpp | $(obj.dir)
	$(CXX) $(CXXFLAGS) $(CXXDEFINES)  $(INCLUDES) -c $< -o $@

$(obj.dir) $(bin.dir) : | $(output.dir)
	mkdir $@

ifeq (,$(filter clean clean-all, $(MAKECMDGOALS)))
-include $(dep.files)
endif

$(STATIC_ANALYSIS_REPORT): | $(report.dir)
	cppcheck --enable=all  $(INCLUDES) --xml $(src.files) 2> $@

$(dep.files): $(obj.dir)/%.d : %.cpp | $(obj.dir)
