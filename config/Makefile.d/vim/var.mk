VIM_DIR = ~/.vim
VIM_PLUGIN_DIR = $(VIM_DIR)/plugin

VIM_EDITORCONFIG = $(VIM_PLUGIN_DIR)/editorconfig.vim
VIM_EDITORCONFIG_URL = 'http://www.vim.org/scripts/download_script.php?src_id=20468'
VIM_EDITORCONFIG_PKG = $(VIM_DIR)/editorconfig-vim-0.3.2.zip

INSTALL_TARGETS += vim-install
