RC_FILES = $(addprefix ~/., $(notdir $(wildcard $(RC_DIR)/*)))

INSTALL_TARGETS += rc-install
