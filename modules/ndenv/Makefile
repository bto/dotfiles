NDENV_DIR = ~/.ndenv
NDENV_PLUGIN_DIR = $(NDENV_DIR)/plugins

NDENV = $(NDENV_DIR)/bin/ndenv
NDENV_REPO = git://github.com/riywo/ndenv.git

NODE_BUILD_DIR = $(NDENV_PLUGIN_DIR)/node-build
NODE_BUILD_REPO = git://github.com/riywo/node-build.git

DISTCLEAN_TARGETS += ndenv-distclean
INSTALL_TARGETS += ndenv-install
UPDATE_TARGETS += ndenv-update

.PHONY: ndenv-distclean
ndenv-distclean:
	rm -rf $(NDENV_DIR)

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
