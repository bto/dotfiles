.PHONY: phpenv-install
phpenv-install: $(PHPENV_DIR) $(PHP_BUILD_DIR)

.PHONY: phpenv-update
phpenv-update: $(PHP_BUILD_DIR)
	cd $< && git fetch -p && git pull

$(PHPENV_DIR):
	$(HTTP_CLIENT) https://raw.githubusercontent.com/CHH/phpenv/master/bin/phpenv-install.sh | bash

$(PHP_BUILD_DIR): $(PHPENV_DIR)
	git clone $(PHP_BUILD_REPO) $@
