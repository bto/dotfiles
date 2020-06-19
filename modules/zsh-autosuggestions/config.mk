ZSH_AUTOSUGGESTIONS_DIR = $(ZSH_VENDOR_DIR)/zsh-autosuggestions
ZSH_AUTOSUGGESTIONS_REPO = git://github.com/zsh-users/zsh-autosuggestions.git

DISTCLEAN_TARGETS += zsh-autosuggestions-distclean
INSTALL_TARGETS += zsh-autosuggestions-install
UPDATE_TARGETS += zsh-autosuggestions-update

.PHONY: zsh-autosuggestions-distclean
zsh-autosuggestions-distclean:
	rm -rf $(ZSH_AUTOSUGGESTIONS_DIR)

.PHONY: zsh-autosuggestions-install
zsh-autosuggestions-install: $(ZSH_AUTOSUGGESTIONS_DIR)

.PHONY: zsh-autosuggestions-update
zsh-autosuggestions-update:
	cd $(ZSH_AUTOSUGGESTIONS_DIR) && git fetch -p && git merge

$(ZSH_AUTOSUGGESTIONS_DIR):
	git clone $(ZSH_AUTOSUGGESTIONS_REPO) $@
