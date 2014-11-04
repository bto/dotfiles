.PHONY: rc-install
rc-install: $(RC_FILES)

~/.%: $(RC_DIR)/%
	ln -sf $< $@
