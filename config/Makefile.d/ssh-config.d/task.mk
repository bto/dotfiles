.PHONY: ssh-config.d-install
ssh-config.d-install: $(SSH_CONFIG_D_DIR)

.PHONY: ssh-config.d-update
ssh-config.d-update: $(SSH_CONFIG_D_DIR)
	cd $< && git fetch -p && git pull

$(SSH_CONFIG_D_DIR):
	git clone -b $(SSH_CONFIG_D_BRANCH) $(SSH_CONFIG_D_REPO) $@
