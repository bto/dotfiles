ZSH_SOURCE_DIR := $(call get-current-dir)
ZSH_DOT_DIR = ~/.zsh
ZSH_DOT_ZSHENV = ~/.zshenv

DISTCLEAN_TARGETS += zsh-distclean
INITIALIZE_TARGETS += zsh-initialize

.PHONY: zsh-distclean
zsh-distclean:
	rm -rf $(ZSH_DOT_DIR)

.PHONY: zsh-initialize
zsh-initialize: $(ZSH_DOT_DIR) $(ZSH_DOT_ZSHENV)

$(ZSH_DOT_DIR):
	mkdir -p $@
	ln -sf $(ZSH_SOURCE_DIR)/zlogin.zsh $(ZSH_DOT_DIR)/.zlogin
	ln -sf $(ZSH_SOURCE_DIR)/zlogout.zsh $(ZSH_DOT_DIR)/.zlogout
	ln -sf $(ZSH_SOURCE_DIR)/zprofile.zsh $(ZSH_DOT_DIR)/.zprofile
	ln -sf $(ZSH_SOURCE_DIR)/zshenv.zsh $(ZSH_DOT_DIR)/.zshenv
	ln -sf $(ZSH_SOURCE_DIR)/zshrc.zsh $(ZSH_DOT_DIR)/.zshrc
	echo export DOTFILES_DIR=$(TOP_DIR) > $(ZSH_DOT_DIR)/init.zsh

$(ZSH_DOT_ZSHENV):
	ln -sf $(ZSH_SOURCE_DIR)/dot.zshenv ~/.zshenv
