JADE_VIEW = $(shell find jade/view_*.jade)
JADE = $(shell find jade/*.jade)
HTML = $(addsuffix .html, $(subst view_,,$(basename $(notdir $(JADE_VIEW)))))

all: $(HTML)

%.html: jade/view_%.jade $(JADE)
	jade < $< --path $< > $@

clean:
	rm -f $(HTML)

echo:
	@echo $(JADE)
	@echo $(HTML)
