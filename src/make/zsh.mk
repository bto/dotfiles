VAR_ZSH_DIR=$(VAR_DIR)/zsh
VAR_ZSH_FUNCTIONS_DIR=$(VAR_ZSH_DIR)/functions

CLEAN_TARGETS += var-zsh-clean
INITIALIZE_TARGETS += var-zsh-initialize

.PHONY: var-zsh-clean
var-zsh-clean:
	rm -rf $(VAR_ZSH_DIR)

.PHONY: var-zsh-initialize
var-zsh-initialize: $(VAR_ZSH_FUNCTIONS_DIR)

$(VAR_ZSH_FUNCTIONS_DIR):
	mkdir -p $@
