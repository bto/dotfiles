.PHONY: z-install
z-install: $(Z_DIR)

.PHONY: z-update
z-update: $(Z_DIR)
	cd $< && git fetch -p && git pull

$(Z_DIR):
	git clone git@github.com:rupa/z.git $@
