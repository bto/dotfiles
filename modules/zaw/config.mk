ZAW_DIR = $(ZSH_VENDOR_DIR)/zaw
ZAW_REPO = git://github.com/zsh-users/zaw.git

DISTCLEAN_TARGETS += zaw-distclean
INSTALL_TARGETS += zaw-install
UPDATE_TARGETS += zaw-update

.PHONY: zaw-distclean
zaw-distclean:
	rm -rf $(ZAW_DIR)

.PHONY: zaw-install
zaw-install: $(ZAW_DIR)

.PHONY: zaw-update
zaw-update:
	cd $(ZAW_DIR) && git fetch -p && git pull

$(ZAW_DIR):
	git clone $(ZAW_REPO) $@
