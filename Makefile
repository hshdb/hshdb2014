.SUFFIXES: .md .html .pdf .tex
.PHONY: clean

info:
	@echo use the sources, luke!

CURDIR := $(dir $(lastword $(MAKEFILE_LIST)))

html: $(patsubst %.md,%.html,$(wildcard *.md))
pdf: $(patsubst %.md,%.pdf,$(wildcard *.md))
bib: $(patsubst %.yaml,%.bib,$(wildcard *.yaml))
tex: $(patsubst %.md,%.tex,$(wildcard *.md))

all: html pdf

clean:
	@rm -rf *.html *.pdf

total: all
	@for d in 2014-0?-??; do cd $$d; make all; cd ..; done

# build slides or paper in local directory

# TODO: relative path to includir and css/ 
#BOOTSTRAP=$(realpath $(CURDIR)css)
BOOTSTRAP=css

BEAMER=$(realpath $(CURDIR)beamer-template)


ANY_FORMAT=-s -V title-prefix=hshdb2014
ANY_PDF=--latex-engine xelatex $(ANY_FORMAT)
SLIDES_TEX=$(ANY_PDF) -t latex --template $(BEAMER)/template.tex
SLIDES_PDF=$(ANY_PDF) -t beamer --template $(BEAMER)/template.tex

PAPER_PDF=$(ANY_PDF)
ANY_HTML=-S $(ANY_FORMAT)
SLIDES_HTML=-t dzslides $(ANY_HTML)

# TODO: calculate relative path to CSS
PAPER_HTML=-t html5 $(ANY_HTML) --template $(BOOTSTRAP)/template.html --css $(BOOTSTRAP)/template.css --toc --toc-depth 2

HTML_PAPER_FILTER=sed 's/\([^()]\+\.slides\)\.md)/\1.html) ([PDF](\1.pdf))/g'
HTML_SLIDES_FILTER=cat
PDF_SLIDES_FILTER=sed 's/\.gif)/.png)/' | ppp

.md.tmp:

.md.pdf: bib
	@cd `dirname $<`; \
	FILENAME="$(basename $(basename $(notdir $<)))"; \
	[ -e "$$FILENAME.bib" ] && BIB="--bibliography $$FILENAME.bib"; \
	if [ "$(suffix $(basename $<))" = ".slides" ]; then \
		cat $(notdir $<) | $(PDF_SLIDES_FILTER) | pandoc $(SLIDES_PDF) $$BIB - -o $(notdir $@) ;\
	else \
		pandoc $(PAPER_PDF) $$BIB $(notdir $<) -o $(notdir $@) ;\
	fi

.md.tex: bib
	@cd `dirname $<`; \
	FILENAME="$(basename $(basename $(notdir $<)))"; \
	[ -e "$$FILENAME.bib" ] && BIB="--bibliography $$FILENAME.bib"; \
	if [ "$(suffix $(basename $<))" = ".slides" ]; then \
		cat $(notdir $<) | $(PDF_SLIDES_FILTER) | pandoc $(SLIDES_PDF) $$BIB - -o $(notdir $@) ;\
	else \
		pandoc $(PAPER_PDF) $$BIB $(notdir $<) -o $(notdir $@) ;\
	fi

# TODO: Infoseite zu jedem Foliensatz mit HTML und PDF-Ansicht

.md.html: bib
	@cd `dirname $<`; \
	FILENAME="$(basename $(basename $(notdir $<)))"; \
	[ -e "$$FILENAME.bib" ] && BIB="--bibliography $$FILENAME.bib"; \
	if [ "$(suffix $(basename $<))" = ".slides" ]; then \
		$(HTML_SLIDES_FILTER) $(notdir $<) | pandoc $(SLIDES_HTML) $$BIB - -o $(notdir $@) ;\
	else \
		$(HTML_PAPER_FILTER) $(notdir $<)  | pandoc $(PAPER_HTML) $$BIB - -o $(notdir $@) ;\
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

