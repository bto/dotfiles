.PHONY: sample-install
sample-install: $(SAMPLE_FILES)

$(SAMPLE_FILES):
	cp $@.sample $@
