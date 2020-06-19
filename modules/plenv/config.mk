PLENV_DIR = ~/.plenv
PLENV_PLUGIN_DIR = $(PLENV_DIR)/plugins

PLENV = $(PLENV_DIR)/bin/plenv
PLENV_REPO = git://github.com/tokuhirom/plenv.git

PERL_BUILD_DIR = $(PLENV_PLUGIN_DIR)/perl-build
PERL_BUILD_REPO = git://github.com/tokuhirom/Perl-Build.git

DISTCLEAN_TARGETS += plenv-distclean
INSTALL_TARGETS += plenv-install
UPDATE_TARGETS += plenv-update

.PHONY: plenv-distclean
plenv-distclean:
	rm -rf $(PLENV_DIR)

.PHONY: plenv-install
plenv-install: $(PLENV_DIR) $(PERL_BUILD_DIR)

.PHONY: plenv-update
plenv-update:
	cd $(PLENV_DIR) && git fetch -p && git merge
	cd $(PERL_BUILD_DIR) && git fetch -p && git merge

$(PLENV_DIR):
	git clone $(PLENV_REPO) $@

$(PERL_BUILD_DIR):
	git clone $(PERL_BUILD_REPO) $@
