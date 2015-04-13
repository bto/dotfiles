.PHONY: zaw-install
zaw-install: $(ZAW_DIR)

.PHONY: zaw-update
zaw-update: $(ZAW_DIR)
	cd $< && git fetch -p && git pull

$(ZAW_DIR):
	git clone $(ZAW_REPO) $@
