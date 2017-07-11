PYENV = $(PYENV_DIR)/bin/pyenv
PYENV_DIR = ~/.pyenv
PYENV_PLUGIN_DIR = $(PYENV_DIR)/plugins
PYENV_INSTALLER = https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer

DISTCLEAN_TARGETS += pyenv-distclean
INSTALL_TARGETS += pyenv-install
UPDATE_TARGETS += pyenv-update

.PHONY: pyenv-distclean
pyenv-distclean:
	rm -rf $(PYENV_DIR)

.PHONY: pyenv-install
pyenv-install: $(PYENV_DIR)

.PHONY: pyenv-update
pyenv-update:
	$(PYENV) update

$(PYENV_DIR):
	$(HTTP_CLIENT) $(PYENV_INSTALLER) | bash
