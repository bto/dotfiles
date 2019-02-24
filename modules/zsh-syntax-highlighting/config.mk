ZSH_SYNTAX_HIGHLIGHTING_DIR = $(VENDOR_DIR)/zsh-syntax-highlighting
ZSH_SYNTAX_HIGHLIGHTING_REPO = git://github.com/zsh-users/zsh-syntax-highlighting.git

DISTCLEAN_TARGETS += zsh-syntax-highlighting-distclean
INSTALL_TARGETS += zsh-syntax-highlighting-install
UPDATE_TARGETS += zsh-syntax-highlighting-update

.PHONY: zsh-syntax-highlighting-distclean
zsh-syntax-highlighting-distclean:
	rm -rf $(ZSH_SYNTAX_HIGHLIGHTING_DIR)

.PHONY: zsh-syntax-highlighting-install
zsh-syntax-highlighting-install: $(ZSH_SYNTAX_HIGHLIGHTING_DIR)

.PHONY: zsh-syntax-highlighting-update
zsh-syntax-highlighting-update:
	cd $(ZSH_SYNTAX_HIGHLIGHTING_DIR) && git fetch -p && git pull

$(ZSH_SYNTAX_HIGHLIGHTING_DIR):
	git clone $(ZSH_SYNTAX_HIGHLIGHTING_REPO) $@
