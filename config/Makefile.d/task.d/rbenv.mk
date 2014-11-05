.PHONY: rbenv-install
rbenv-install: $(RBENV_DIR)

.PHONY: rbenv-update
rbenv-update:
	$(RBENV) update

$(RBENV_DIR):
	$(HTTP_CLIENT) $(RBENV_INSTALLER) | bash
