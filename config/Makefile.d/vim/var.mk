VIM_DIR = ~/.vim
VIM_PLUGIN_DIR = $(VIM_DIR)/plugin

VIM_EDITORCONFIG = $(VIM_PLUGIN_DIR)/editorconfig.vim
VIM_EDITORCONFIG_URL = https://github.com/editorconfig/editorconfig-vim/archive/v0.3.2.tar.gz
VIM_EDITORCONFIG_PKG = $(VIM_DIR)/editorconfig-vim-0.3.2.tar.gz
VIM_EDITORCONFIG_DIR = $(VIM_DIR)/editorconfig-vim-0.3.2

INSTALL_TARGETS += vim-install
