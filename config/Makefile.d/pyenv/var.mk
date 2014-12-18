PYENV = $(PYENV_DIR)/bin/pyenv
PYENV_DIR = ~/.pyenv
PYENV_PLUGIN_DIR = $(PYENV_DIR)/plugins
PYENV_INSTALLER = https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer

INSTALL_TARGETS += pyenv-install
UPDATE_TARGETS += pyenv-update
