CVNAME=sample-jules-verne-compact
LATEX=xelatex
export TEXINPUTS=.:..:

all: $(CVNAME).pdf

force: clean all

clean:
	rm -f $(CVNAME).pdf

$(CVNAME).pdf: $(CVNAME).tex
	@$(LATEX) $<
	#run it twice, to fix page numbers
	@$(LATEX) $<

