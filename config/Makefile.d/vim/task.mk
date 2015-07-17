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
