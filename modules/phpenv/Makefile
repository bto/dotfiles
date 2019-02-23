PHPENV_DIR = ~/.phpenv
PHPENV_INSTALL_SH = https://raw.githubusercontent.com/phpenv/phpenv-installer/master/bin/phpenv-installer

DISTCLEAN_TARGETS += phpenv-distclean
INSTALL_TARGETS += phpenv-install

.PHONY: phpenv-distclean
phpenv-distclean:
	rm -rf $(PHPENV_DIR)

.PHONY: phpenv-install
phpenv-install: $(PHPENV_DIR)

$(PHPENV_DIR):
	$(HTTP_CLIENT) $(PHPENV_INSTALL_SH) | bash
