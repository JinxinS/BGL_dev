include config.mk
subdirs := 
src.dir :=  $(addprefix $(test.unit.src.dir)/, $(subdirs))
include $(addsuffix /subdir.mk, $(src.dir))
GTEST_DIR:= /coreworks/sideconf/googletest/googletest
GMOCK_DIR:= /coreworks/sideconf/googletest/googlemock
src.dir += $(test.unit.src.dir)

test.unit.obj.dir := $(test.unit.output.dir)/obj
test.unit.bin.dir := $(test.unit.output.dir)/bin

vpath %.cpp $(src.dir)
vpath %.h $(release.dir) $(src.dir) 
vpath %.a $(release.dir)
vpath %.o $(test.unit.obj.dir)

src.files := $(wildcard $(addsuffix /*.cpp, $(src.dir)))
obj.files := $(addprefix $(test.unit.obj.dir)/, $(notdir $(src.files:.cpp=.o)))
test.objs := $(filter $(test.unit.obj.dir)/Test%, $(obj.files))
test.bin := $(addprefix $(test.unit.bin.dir)/, $(notdir $(basename $(test.objs))))
helper.objs := $(filter-out $(test.unit.obj.dir)/Test%, $(obj.files))
dep.files := $(obj.files:.o=.d)

INCLUDES :=  $(addprefix -I,$(release.dir) $(src.dir))

all: $(test.bin)

$(test.bin): $(test.unit.bin.dir)/Test% : Test%.o $(helper.objs) $(GMOCK_DIR)/libgmock.a -lboost_unit_test_framework -lboost_log -lboost_system -lboost_thread  -lsideconf | $(test.unit.bin.dir)
	$(CXX) -pthread -o $@ $^

$(obj.files): $(test.unit.obj.dir)/%.o : %.cpp | $(test.unit.obj.dir)
	$(CXX)  $(CXXFLAGS)  -isystem $(GMOCK_DIR)/include -isystem $(GTEST_DIR)/include \
	$(INCLUDES) -c $< -o $@   

$(test.unit.bin.dir) $(test.unit.obj.dir) : | $(test.unit.output.dir)
$(test.unit.output.dir) : | $(test.output.dir)
$(test.unit.output.dir) $(test.unit.bin.dir) $(test.unit.obj.dir) :
	mkdir $@

ifneq (clean, $(MAKECMDGOALS))
-include $(dep.files)
endif

$(dep.files): $(test.unit.obj.dir)/%.d : %.cpp | $(test.unit.obj.dir)