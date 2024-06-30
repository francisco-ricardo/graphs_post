# ABSTRACT: Latex Makefile
#

.PHONY: all clean generate build help

LATEX=latex
PDFLATEX=latex
BIBTEX=bibtex
SED=/bin/sed
SHELL=/bin/bash

ifndef $(OUT)
OUT=./out
endif


# target: all - Build all *.tex files
all:
	@for i in *.tex ; do echo Making $$i ; make DOC=$$( echo $$i | $(SED) -e 's/\.tex$$//' ) $$i build ;  done ;


# target: clean - Clean auxiliary files
clean: guard-doc
	rm -f $(doc).aux 
	rm -f $(doc).bbl 
	rm -f $(doc).blg
	rm -f $(doc).log 
	rm -f $(doc).spl
	rm -f $(doc).bcf
	rm -f $(doc).run.xml


# target: generate - Generates the pdf files from latex sources
generate: guard-doc
	$(PDFLATEX) -jobname $(doc) -output-format=pdf $(doc).tex
	@if [ -f $(doc).bib ] ; then $(BIBTEX) $(doc) ; fi ;
	$(PDFLATEX) -jobname $(doc) -output-format=pdf $(doc).tex
	$(PDFLATEX) -jobname $(doc) -output-format=pdf $(doc).tex


build: guard-doc generate clean
	@mv $(doc).pdf $(OUT)/


guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi


# target: help - Mostra os targets que sao executaveis
help:
	@egrep "^# target:" [Mm]akefile
	@echo "Examples:"
	@echo "make build doc=FILENAME  build -> Builds only the specified tex file"
	@echo "make clean doc=FILENAME-> Cleans the output directory"

# EOF


