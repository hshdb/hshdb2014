.SUFFIXES: .md .html .pdf
.PHONY: clean

info:
	@echo use the sources, luke!

CURDIR := $(dir $(lastword $(MAKEFILE_LIST)))

html: $(patsubst %.md,%.html,$(wildcard *.md))
pdf: $(patsubst %.md,%.pdf,$(wildcard *.md))
bib: $(patsubst %.yaml,%.bib,$(wildcard *.yaml))

all: html pdf

clean:
	@rm -rf *.html *.pdf

# build slides or paper in local directory

BOOTSTRAP=$(CURDIR)/pandoc-bootstrap-template
ANY_FORMAT=-s
ANY_PDF=--latex-engine xelatex $(ANY_FORMAT)
SLIDES_PDF=-t beamer 
PAPER_PDF=$(ANY_PDF)
ANY_HTML=-S $(ANY_FORMAT)
SLIDES_HTML=-t dzslides $(ANY_HTML)
# DO: calcute relat path to CSS
PAPER_HTML=-t html5 $(ANY_HTML) --template $(BOOTSTRAP)/template.html --css $(BOOTSTRAP)/template.css --toc --toc-depth 2

.md.pdf: bib
	@cd `dirname $<`; \
	NAME="$(basename $(basename $<))"; \
	[ -e "$$NAME.bib" ] && BIB="--bibliography $$NAME.bib"; \
	if [ "$(suffix $(basename $<))" = ".slides" ]; then \
		pandoc $(SLIDES_PDF) $$BIB $(notdir $<) -o $(notdir $@) ;\
	else \
		pandoc $(PAPER_PDF) $$BIB $(notdir $<) -o $(notdir $@) ;\
	fi

.md.html: bib
	@cd `dirname $<`; \
	NAME="$(basename $(basename $<))"; \
	[ -e "$$NAME.bib" ] && BIB="--bibliography $$NAME.bib"; \
	if [ "$(suffix $(basename $<))" = ".slides" ]; then \
		pandoc $(SLIDES_HTML) $$BIB $(notdir $<) -o $(notdir $@) ;\
	else \
		pandoc $(PAPER_HTML) $$BIB $(notdir $<) -o $(notdir $@) ;\
	fi

include $(CURDIR)/yaml2bib/Makefile
