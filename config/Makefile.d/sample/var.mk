SAMPLE_FILES = $(patsubst %.sample, %, $(shell find $(TOP_DIR) -name '*.sample' ! -path '*/.git/*'))

INSTALL_TARGETS += sample-install
