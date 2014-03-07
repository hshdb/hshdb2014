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

total: all
	@for d in 2014-0?-??; do cd $$d; make all; cd ..; done

# build slides or paper in local directory

# TODO: relative path to includir and css/ 
BOOTSTRAP=$(realpath $(CURDIR)css)

BEAMER=$(realpath $(CURDIR)beamer-template)


ANY_FORMAT=-s -V title-prefix=hshdb2014
ANY_PDF=--latex-engine xelatex $(ANY_FORMAT)
# TODO: xelatex
SLIDES_PDF=$(ANY_PDF) -t beamer --template $(BEAMER)/template.tex

PAPER_PDF=$(ANY_PDF)
ANY_HTML=-S $(ANY_FORMAT)
SLIDES_HTML=-t dzslides $(ANY_HTML)

# TODO: calculate relative path to CSS
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

# TODO: Infoseite zu jedem Foliensatz mit HTML und PDF-Ansicht

.md.html: bib
	@cd `dirname $<`; \
	NAME="$(basename $(basename $<))"; \
	[ -e "$$NAME.bib" ] && BIB="--bibliography $$NAME.bib"; \
	if [ "$(suffix $(basename $<))" = ".slides" ]; then \
		pandoc $(SLIDES_HTML) $$BIB $(notdir $<) -o $(notdir $@) ;\
	else \
		sed 's/\.slides\.md)/.slides.html)/g' $(notdir $<) \
		| pandoc $(PAPER_HTML) $$BIB -  -o $(notdir $@) ;\
	fi

include $(CURDIR)/yaml2bib/Makefile

## Make website
.PHONY: website clean-repo

clean-repo:
	@git diff-index --quiet HEAD --

website: clean-repo
	@git checkout gh-pages && \
	echo "Not implemented yet" && \
	git checkout master && git submodule foreach git checkout .

