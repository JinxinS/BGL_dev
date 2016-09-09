sideconf.src.dir := $(filter ./src/% , $(sort $(dir $(shell /usr/bin/find . -name '*.cpp' ))))
sideconf.header.dir := $(filter ./src/%, $(sort $(dir $(shell /usr/bin/find . -name '*.h' ))))

src.files := $(filter-out %main.cpp, $(wildcard  $(addsuffix *.cpp, $(sideconf.src.dir))))
src.headers := $(wildcard $(addsuffix *.h, $(sideconf.header.dir)))
main.file :=  $(filter %main.cpp, $(wildcard  $(addsuffix *.cpp, $(sideconf.src.dir))))

output.dir := build
obj.dir := $(output.dir)/obj
bin.dir := $(output.dir)/bin
obj.files := $(addprefix $(obj.dir)/, $(notdir $(src.files:.cpp=.o)))
dep.files := $(obj.files:.o=.d)

report.dir:= $(output.dir)/report
STATIC_ANALYSIS_REPORT := $(report.dir)/cppcheck-result.xml

sideconf.bin := $(bin.dir)/sideconf
libsideconf  := $(bin.dir)/libsideconf.a

test.dir := test
test.unit.src.dir := $(test.dir)/unit

test.output.dir := $(output.dir)/$(test.dir)
test.unit.output.dir := $(test.output.dir)/unit

release.dir := release
release.bin := $(release.dir)/$(notdir $(sideconf.bin))
release.lib := $(release.dir)/$(notdir $(libsideconf))
release.headers := $(addprefix $(release.dir)/, $(notdir $(src.headers)))

CXX := g++
CXXFLAGS := -g03 -std=c++11 -Weffc++ -Wall -Wextra -Wmissing-include-dirs -Wunused -Wuninitialized \
-Woverloaded-virtual -Wredundant-decls -Winline -Wctor-dtor-privacy  
CXXDEFINES :=
INCLUDES := $(addprefix -I, $(sideconf.header.dir))
SED := sed


.LIBPATTERNS := lib%.dll.a lib%.a

.DEFAULT_GOAL := all

%.d :
	$(CXX) $(CXXFLAGS) $(INCLUDES) -MM -MP -MT $@ -MF $@ $<
	@$(SED) --in-place -e 's/^\(.*\)\.d:/\1.d \1.o:/' $@


#######################################
# Directories
#######################################
$(test.output.dir) : | $(output.dir)
$(release.dir) $(output.dir) $(report.dir) $(test.output.dir) : 
	mkdir $@

#######################################
# Clean
#######################################
clean:
	rm -rf $(output.dir) $(release.dir)

clean-test:
	rm -rf $(test.output.dir)

#######################################
# Dependencies
#######################################
sdl.dir := third_party/SDL
sld.release.dir := $(sdl.dir)/release

sideFU.dir := third_party/sideFU
sideFU.release.dir := $(sideFU.dir)/release

testworks.dir := third_party/testworks
testworks.release.dir := $(testworks.dir)/release

deps := testworks sdl sidefu
deps-clean := $(addprefix clean-, $(deps))

define MAKE_DEPS 
$(MAKE) -C $(DEP_DIR) $(TARGET)
endef

testworks clean-testworks : DEP_DIR := $(testworks.dir)
sidefu clean-sidefu : DEP_DIR:=  $(sideFU.dir)
sdl clean-sdl: DEP_DIR:=  $(sdl.dir)

$(deps) : TARGET := 
$(deps-clean) : TARGET := clean
$(deps) $(deps-clean):
	+$(MAKE_DEPS)
	
clean-all: clean $(deps-clean)

.PHONY: all clean clean-all clean-test $(deps) $(deps-clean)