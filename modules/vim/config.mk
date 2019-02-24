VIM_DIR = ~/.vim
VIM_PLUGIN_DIR = $(VIM_DIR)/plugin

VIM_EDITORCONFIG = $(VIM_PLUGIN_DIR)/editorconfig.vim
VIM_EDITORCONFIG_VERSION = 0.3.3
VIM_EDITORCONFIG_URL = https://github.com/editorconfig/editorconfig-vim/archive/v$(VIM_EDITORCONFIG_VERSION).tar.gz
VIM_EDITORCONFIG_PKG = $(VIM_DIR)/editorconfig-vim-$(VIM_EDITORCONFIG_VERSION).tar.gz
VIM_EDITORCONFIG_DIR = $(VIM_DIR)/editorconfig-vim-$(VIM_EDITORCONFIG_VERSION)

DISTCLEAN_TARGETS += vim-distclean
INSTALL_TARGETS += vim-install

.PHONY: vim-distclean
vim-distclean:
	rm -rf $(VIM_DIR)

.PHONY: vim-install
vim-install: $(VIM_EDITORCONFIG)

$(VIM_EDITORCONFIG): $(VIM_EDITORCONFIG_PKG)
	tar xvf $< -C $(VIM_DIR)
	cp -r $(VIM_EDITORCONFIG_DIR)/autoload $(VIM_DIR)
	cp -r $(VIM_EDITORCONFIG_DIR)/plugin   $(VIM_DIR)
	touch $@

$(VIM_EDITORCONFIG_PKG):
	mkdir -p $(@D)
	$(HTTP_CLIENT) $(VIM_EDITORCONFIG_URL) > $@
