CVNAME?=sample-jules-verne
CVTHEME?=sharp
LATEX=xelatex

export TEXINPUTS=.:..:

all: $(CVNAME)-$(CVTHEME).pdf

force: clean all

clean:
	rm -f $(CVNAME)-$(CVTHEME).pdf $(CVNAME)-$(CVTHEME).log $(CVNAME)-$(CVTHEME).out $(CVNAME)-$(CVTHEME).aux

$(CVNAME)-$(CVTHEME).pdf: $(CVNAME)-$(CVTHEME).tex
	@$(LATEX) $<
	#run it twice, to fix page numbers
	@$(LATEX) $<

