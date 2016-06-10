PHPENV_DIR = ~/.phpenv
PHPENV_INSTALL_SH = https://raw.githubusercontent.com/CHH/phpenv/master/bin/phpenv-install.sh

PHP_BUILD_DIR = $(PHPENV_DIR)/plugins/php-build
PHP_BUILD_REPO = git@github.com:CHH/php-build.git

PECL_BUILD_DIR = $(PHPENV_DIR)/plugins/pecl-build
PECL_BUILD_REPO = git@github.com:crocos/pecl-build.git
PHP_BUILD_DEFINITIONS_FILES = $(addprefix $(PHP_BUILD_DIR)/share/php-build/definitions/, $(notdir $(wildcard $(CONFIG_DIR)/php-build/definitions/*)))

INSTALL_TARGETS += phpenv-install
UPDATE_TARGETS += phpenv-update
