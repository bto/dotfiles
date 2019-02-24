ZSH_MODULE_DIR := $(call get-current-dir)
ZSH_DOT_DIR = ~/.zsh

DISTCLEAN_TARGETS += zsh-distclean
INITIALIZE_TARGETS += zsh-initialize

.PHONY: zsh-distclean
zsh-distclean:
	rm -rf $(ZSH_DOT_DIR)

.PHONY: zsh-initialize
zsh-initialize: $(ZSH_DOT_DIR)

$(ZSH_DOT_DIR):
	mkdir -p $@
	ln -sf $(ZSH_MODULE_DIR)/zlogin.zsh $(ZSH_DOT_DIR)/.zlogin
	ln -sf $(ZSH_MODULE_DIR)/zlogout.zsh $(ZSH_DOT_DIR)/.zlogout
	ln -sf $(ZSH_MODULE_DIR)/zprofile.zsh $(ZSH_DOT_DIR)/.zprofile
	ln -sf $(ZSH_MODULE_DIR)/zshenv.zsh $(ZSH_DOT_DIR)/.zshenv
	ln -sf $(ZSH_MODULE_DIR)/zshrc.zsh $(ZSH_DOT_DIR)/.zshrc
	echo export DOTFILES_DIR=$(TOP_DIR) > $(ZSH_DOT_DIR)/init.zsh
