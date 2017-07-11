SAMPLE_FILES = $(patsubst %.sample, %, $(shell find $(TOP_DIR) -name '*.sample' ! -path '*/.git/*'))

INITIALIZE_TARGETS += sample-initialize

$(SAMPLE_FILES):
	cp $@.sample $@

.PHONY: sample-initialize
sample-initialize: $(SAMPLE_FILES)
