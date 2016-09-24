DOTFILES_SOURCES = $(wildcard $(MODULE_DIR)/*/dotfiles/*)

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


INSTALL_TARGETS += dotfiles-install

.PHONY: dotfiles-install
dotfiles-install: $(DOTFILES_TARGETS)
