NAME=main
AUX=$(NAME).aux $(NAME).out
INTERMEDIATES=$(NAME).log
BIB=$(NAME).bbl $(NAME).bcf $(NAME).blg $(NAME).run.xml
PDF=$(NAME).pdf
SRCS=$(NAME).tex simplecv.sty $(wildcard bib/*.bib)

.PHONY: clean

$(PDF) : $(SRCS)
	pdflatex $(NAME)
	pdflatex $(NAME)
	biber $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean :
	$(RM) $(AUX) $(INTERMEDIATES) $(BIB) $(PDF)
