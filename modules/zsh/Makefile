ZSH_MODULE_DIR := $(call get-current-dir)
ZSH_VAR_DIR = $(ZSH_MODULE_DIR)/dot.zsh/var
ZSH_INIT_SCRIPT = $(ZSH_VAR_DIR)/init.zsh

CLEAN_TARGETS += zsh-clean
INITIALIZE_TARGETS += zsh-initialize

zsh-clean:
	rm -f $(ZSH_INIT_SCRIPT)

zsh-initialize: $(ZSH_INIT_SCRIPT)

$(ZSH_INIT_SCRIPT):
	echo export DOTFILES_DIR=$(TOP_DIR) > $@
