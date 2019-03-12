OPENSSH_SOURCE_DIR := $(call get-current-dir)

INITIALIZE_TARGETS += openssh-initialize

.PHONY: openssh-initialize
openssh-initialize: ~/.ssh/authorized_keys

~/.ssh:
	mkdir -p $@
	chmod 700 $@

~/.ssh/authorized_keys: ~/.ssh
	cp $(OPENSSH_SOURCE_DIR)/authorized_keys $@
	chmod 600 $@
