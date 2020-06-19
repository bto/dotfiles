ZSH_COMPLETIONS_DIR = $(ZSH_VENDOR_DIR)/zsh-completions
ZSH_COMPLETIONS_REPO = git://github.com/zsh-users/zsh-completions.git

DISTCLEAN_TARGETS += zsh-completions-distclean
INSTALL_TARGETS += zsh-completions-install
UPDATE_TARGETS += zsh-completions-update

.PHONY: zsh-completions-distclean
zsh-completions-distclean:
	rm -rf $(ZSH_COMPLETIONS_DIR)

.PHONY: zsh-completions-install
zsh-completions-install: $(ZSH_COMPLETIONS_DIR)

.PHONY: zsh-completions-update
zsh-completions-update:
	cd $(ZSH_COMPLETIONS_DIR) && git fetch -p && git merge

$(ZSH_COMPLETIONS_DIR):
	git clone $(ZSH_COMPLETIONS_REPO) $@
