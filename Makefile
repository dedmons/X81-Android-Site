JADE_VIEW = $(shell find jade/view_*.jade)
JADE = $(shell find jade/*.jade)
HTML = $(addprefix public/, $(addsuffix .html, $(subst view_,,$(basename $(notdir $(JADE_VIEW))))))

all: $(HTML)

public/%.html: jade/view_%.jade $(JADE)
	jade < $< --path $< > $@

clean:
	rm -f $(HTML)

echo:
	@echo $(JADE)
	@echo $(HTML)
