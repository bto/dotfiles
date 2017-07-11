RBENV = $(RBENV_DIR)/bin/rbenv
RBENV_DIR = ~/.rbenv
RBENV_PLUGIN_DIR = $(RBENV_DIR)/plugins
RBENV_INSTALLER = https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer

DISTCLEAN_TARGETS += rbenv-distclean
INSTALL_TARGETS += rbenv-install
UPDATE_TARGETS += rbenv-update

.PHONY: rbenv-distclean
rbenv-distclean:
	rm -rf $(RBENV_DIR)

.PHONY: rbenv-install
rbenv-install: $(RBENV_DIR)

.PHONY: rbenv-update
rbenv-update:
	$(RBENV) update

$(RBENV_DIR):
	$(HTTP_CLIENT) $(RBENV_INSTALLER) | bash
