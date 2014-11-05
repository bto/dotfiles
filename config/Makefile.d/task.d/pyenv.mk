.PHONY: pyenv-install
pyenv-install: $(PYENV_DIR)

.PHONY: pyenv-update
pyenv-update:
	$(PYENV) update

$(PYENV_DIR):
	$(HTTP_CLIENT) $(PYENV_INSTALLER) | bash
