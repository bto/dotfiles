.PHONY: ndenv-install
ndenv-install: $(NDENV_DIR) $(NODE_BUILD_DIR)

.PHONY: ndenv-update
ndenv-update:
	cd $(NDENV_DIR) && git fetch -p && git pull
	cd $(NODE_BUILD_DIR) && git fetch -p && git pull

$(NDENV_DIR):
	git clone $(NDENV_REPO) $@

$(NODE_BUILD_DIR):
	git clone $(NODE_BUILD_REPO) $@
