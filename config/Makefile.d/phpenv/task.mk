.PHONY: phpenv-install
phpenv-install: $(PHPENV_DIR) $(PHP_BUILD_DIR) $(PHP_BUILD_DEFINITIONS_FILES) $(PECL_BUILD_DIR)

.PHONY: phpenv-update
phpenv-update:
	cd $(PHP_BUILD_DIR) && git fetch -p && git pull

$(PHPENV_DIR):
	$(HTTP_CLIENT) $(PHPENV_INSTALL_SH) | bash

$(PHP_BUILD_DIR):
	git clone $(PHP_BUILD_REPO) $@

$(PHP_BUILD_DIR)/share/php-build/definitions/%: $(CONFIG_DIR)/php-build/definitions/%
	ln -sf $< $@

$(PECL_BUILD_DIR):
	git clone $(PECL_BUILD_REPO) $@
