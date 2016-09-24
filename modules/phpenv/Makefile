PHPENV_DIR = ~/.phpenv
PHPENV_INSTALL_SH = https://raw.githubusercontent.com/CHH/phpenv/master/bin/phpenv-install.sh

PHP_BUILD_DIR = $(PHPENV_DIR)/plugins/php-build
PHP_BUILD_REPO = git://github.com/CHH/php-build.git

PECL_BUILD_DIR = $(PHPENV_DIR)/plugins/pecl-build
PECL_BUILD_REPO = git://github.com/crocos/pecl-build.git
PHP_BUILD_DEFINITIONS_FILES = $(addprefix $(PHP_BUILD_DIR)/share/php-build/definitions/, $(notdir $(wildcard $(CONFIG_DIR)/php-build/definitions/*)))

INSTALL_TARGETS += phpenv-install
UPDATE_TARGETS += phpenv-update

.PHONY: phpenv-install
phpenv-install: $(PHPENV_DIR) $(PHP_BUILD_DIR) $(PHP_BUILD_DEFINITIONS_FILES) $(PECL_BUILD_DIR)

.PHONY: phpenv-update
phpenv-update:
	cd $(PHP_BUILD_DIR) && git fetch -p && git pull

$(PHPENV_DIR):
	$(HTTP_CLIENT) $(PHPENV_INSTALL_SH) | bash

$(PHP_BUILD_DIR): $(PHPENV_DIR)
	git clone $(PHP_BUILD_REPO) $@

$(PHP_BUILD_DIR)/share/php-build/definitions/%: $(CONFIG_DIR)/php-build/definitions/%
	ln -sf $< $@

$(PECL_BUILD_DIR): $(PHPENV_DIR)
	git clone $(PECL_BUILD_REPO) $@
