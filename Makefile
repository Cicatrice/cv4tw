CVNAME=sample-jules-verne
LATEX=xelatex


all: $(CVNAME).pdf

$(CVNAME).pdf: $(CVNAME).tex
	@$(LATEX) $<
	#run it twice, to fix page numbers
	@$(LATEX) $<

