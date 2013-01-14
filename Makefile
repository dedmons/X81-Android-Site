JADE_VIEW = $(shell find jade/view_*.jade)
JADE = $(filter-out $(JADE_VIEW).jade,$(shell find jade/*.jade))
HTML = $(addprefix public/, $(addsuffix .html, $(subst view_,,$(basename $(notdir $(JADE_VIEW))))))

all: $(HTML)

public/%.html: jade/view_%.jade $(JADE)
	jade < $< --path $< > $@

clean:
	rm -f $(HTML)

echo:
	@echo $(JADE_VIEW)
	@echo $(JADE)
	@echo $(HTML)
