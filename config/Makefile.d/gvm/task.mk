.PHONY: gvm-install
gvm-install: $(GVM_DIR)

$(GVM_DIR):
	$(HTTP_CLIENT) $(GVM_INSTALLER) | bash
