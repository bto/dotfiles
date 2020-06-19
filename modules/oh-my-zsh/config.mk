OH_MY_ZSH_DIR = ~/.oh-my-zsh
OH_MY_ZSH_REPO = git://github.com/robbyrussell/oh-my-zsh.git

DISTCLEAN_TARGETS += oh-my-zsh-distclean
INSTALL_TARGETS += oh-my-zsh-install
UPDATE_TARGETS += oh-my-zsh-update

.PHONY: oh-my-zsh-distclean
oh-my-zsh-distclean:
	rm -rf $(OH_MY_ZSH_DIR)

.PHONY: oh-my-zsh-install
oh-my-zsh-install: $(OH_MY_ZSH_DIR)

.PHONY: oh-my-zsh-update
oh-my-zsh-update:
	cd $(OH_MY_ZSH_DIR) && git fetch -p && git merge

$(OH_MY_ZSH_DIR):
	git clone $(OH_MY_ZSH_REPO) $@
