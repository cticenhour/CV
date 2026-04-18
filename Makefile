NAME=main
PDF=$(NAME).pdf
SRCS=$(wildcard *.tex) simplecv.sty $(wildcard bib/*.bib)

.PHONY: clean watch

$(PDF) : $(SRCS)
	latexmk -pdf $(NAME)

watch :
	latexmk -pdf -pvc $(NAME)

clean :
	latexmk -C
	$(RM) $(NAME).bbl
