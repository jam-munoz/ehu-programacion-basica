
MAIN := main.adb
BUILD_DIR := build
TARGET := a.out

ADA_FILES := $(shell find . -type f \( -name '*.adb' -o -name '*.ads' \))
ADA_DIRS := $(sort $(patsubst %/,%,$(dir $(ADA_FILES))))
ADA_INCLUDES := $(addprefix -I,$(ADA_DIRS))

.PHONY: all clean list

all: $(TARGET)

$(TARGET): $(ADA_FILES)
	mkdir -p $(BUILD_DIR)
	gnatmake $(ADA_INCLUDES) -D $(BUILD_DIR) -o $(TARGET) $(MAIN)

clean:
	rm -rf $(BUILD_DIR) $(TARGET)
	find . -type f \( -name '*.ali' -o -name '*.o' \) -delete

list:
	@printf '%s\n' $(ADA_FILES)
