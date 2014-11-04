.PHONY: oh-my-zsh-install
oh-my-zsh-install: $(OH_MY_ZSH_DIR)

$(OH_MY_ZSH_DIR):
	git clone git://github.com/robbyrussell/oh-my-zsh.git $@
