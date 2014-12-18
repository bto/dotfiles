.PHONY: plenv-install
plenv-install: $(PLENV_DIR) $(PERL_BUILD_DIR)

.PHONY: plenv-update
plenv-update:
	cd $(PLENV_DIR) && git fetch -p && git pull
	cd $(PERL_BUILD_DIR) && git fetch -p && git pull

$(PLENV_DIR):
	git clone $(PLENV_REPO) $@

$(PERL_BUILD_DIR):
	git clone $(PERL_BUILD_REPO) $@
