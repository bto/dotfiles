.PHONY: rbenv-install
rbenv-install: $(RBENV_DIR) $(RUBY_BUILD_DIR)

.PHONY: rbenv-update
rbenv-update:
	cd $(RBENV_DIR) && git fetch -p && git pull
	cd $(RUBY_BUILD_DIR) && git fetch -p && git pull

$(RBENV_DIR):
	git clone $(RBENV_REPO) $@

$(RUBY_BUILD_DIR):
	git clone $(RUBY_BUILD_REPO) $@
