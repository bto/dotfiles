include config/config.mk
include $(MAKE_DIR)/var.d/*.mk
include $(MAKE_DIR)/register.d/*.mk

.PHONY: all
all: $(ALL_TARGETS)

include $(MAKE_DIR)/task.d/*.mk
