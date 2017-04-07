# Makefile
JOBNAME=thesis

all: $(JOBNAME).pdf

$(JOBNAME).pdf: example.tex cumcmthesis.cls
	xelatex -jobname=$(JOBNAME) example.tex
	xelatex -jobname=$(JOBNAME) example.tex

clean:
	rm $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out $(JOBNAME).pdf
