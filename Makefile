TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
DATA_DIR = $(TOP_DIR)/data
RC_DIR = $(TOP_DIR)/rc
TEST_DIR = $(TOP_DIR)/test
VAR_DIR = $(TOP_DIR)/var

ALL_TARGETS += build
BUILD_TARGETS += initialize
CHECK_TARGETS +=
CLEAN_TARGETS +=
DISTCLEAN_TARGETS += clean
INITIALIZE_TARGETS += install
INSTALL_TARGETS +=
TEST_TARGETS +=
UPDATE_TARGETS +=

include config/Makefile.d/*/var.mk
-include config/var.mk


.PHONY: all
all: $(ALL_TARGETS)

.PHONY: build
build: $(BUILD_TARGETS)

.PHONY: check
check: $(CHECK_TARGETS)

.PHONY: clean
clean: $(CLEAN_TARGETS)

.PHONY: distclean
distclean: $(DISTCLEAN_TARGETS)
	rm -rf $(VAR_DIR)/*

.PHONY: initialize
initialize: $(INITIALIZE_TARGETS)

.PHONY: install
install: $(INSTALL_TARGETS)

.PHONY: test
test: $(TEST_TARGETS)

.PHONY: update
update: $(UPDATE_TARGETS)

include config/Makefile.d/*/task.mk
-include config/task.mk
