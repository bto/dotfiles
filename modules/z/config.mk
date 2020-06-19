Z_DIR = $(ZSH_VENDOR_DIR)/z
Z_REPO = git://github.com/rupa/z.git

DISTCLEAN_TARGETS += z-distclean
INSTALL_TARGETS += z-install
UPDATE_TARGETS += z-update

.PHONY: z-distclean
z-distclean:
	rm -rf $(Z_DIR)

.PHONY: z-install
z-install: $(Z_DIR)

.PHONY: z-update
z-update:
	cd $(Z_DIR) && git fetch -p && git merge

$(Z_DIR):
	git clone $(Z_REPO) $@
