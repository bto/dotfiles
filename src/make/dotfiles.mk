DOTFILES_SOURCES = $(wildcard $(MODULE_DIR)/*/dotfiles/*)

CLEAN_TARGETS += dotfiles-clean
INSTALL_TARGETS += dotfiles-install

define dotfiles-rule
DOTFILES_TARGETS += $1
$1: $2
	ln -sf $$< $$@
endef

$(foreach source, $(DOTFILES_SOURCES), \
  $(eval \
    $(call \
      dotfiles-rule, \
      $(addprefix ~/., $(notdir $(source))), \
      $(source) \
    ) \
  ) \
)

.PHONY: dotfiles-clean
dotfiles-clean: $(DOTFILES_TARGETS)
	rm $^

.PHONY: dotfiles-install
dotfiles-install: $(DOTFILES_TARGETS)
