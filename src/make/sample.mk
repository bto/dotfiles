SAMPLE_FILES = $(patsubst %.sample, %, $(shell find $(TOP_DIR) -name '*.sample' ! -path '*/.git/*'))
$(SAMPLE_FILES):
	cp $@.sample $@


INITIALIZE_TARGETS += sample-initialize
.PHONY: sample-initialize
sample-initialize: $(SAMPLE_FILES)
