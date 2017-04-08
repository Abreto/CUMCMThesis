# Makefile
JOBNAME=thesis
TPLFIL=cumcmthesis.cls
TEXSRC=$(JOBNAME).tex

all: $(JOBNAME).pdf

$(JOBNAME).pdf: $(TPLFIL) $(TEXSRC)
	xelatex -jobname=$(JOBNAME) $(TEXSRC)
	bibtex $(JOBNAME)
	xelatex -jobname=$(JOBNAME) $(TEXSRC)
	xelatex -jobname=$(JOBNAME) $(TEXSRC)

clean:
	rm $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out $(JOBNAME).bbl $(JOBNAME).blg $(JOBNAME).pdf
