GVM_DIR = ~/.gvm
GVM_INSTALLER = https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer


INSTALL_TARGETS += gvm-install
.PHONY: gvm-install
gvm-install: $(GVM_DIR)


$(GVM_DIR):
	$(HTTP_CLIENT) $(GVM_INSTALLER) | bash
