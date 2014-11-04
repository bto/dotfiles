.PHONY: vim-install
vim-install: $(VIM_EDITORCONFIG)

$(VIM_EDITORCONFIG): $(VIM_EDITORCONFIG_PKG)
	unzip -d $(VIM_DIR) -u $<
	touch $@

$(VIM_EDITORCONFIG_PKG):
	mkdir -p $(@D)
	curl -sS $(VIM_EDITORCONFIG_URL) > $@
