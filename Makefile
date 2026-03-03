NAME=main
PDF=$(NAME).pdf
SRCS=$(NAME).tex simplecv.sty $(wildcard bib/*.bib)

.PHONY: clean watch

$(PDF) : $(SRCS)
	latexmk -pdf $(NAME)

watch :
	latexmk -pdf -pvc $(NAME)

clean :
	latexmk -C
