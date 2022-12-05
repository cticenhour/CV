NAME=cticenhour_cv
AUX=$(NAME).aux $(NAME).out
INTERMEDIATES=$(NAME).log
BIB=$(NAME).bbl $(NAME).bcf $(NAME).blg $(NAME).run.xml
PDF=$(NAME).pdf

$(NAME).pdf : $(NAME).tex
	pdflatex $(NAME)
	biber $(NAME)
	pdflatex $(NAME)

clean :
	rm $(AUX) $(INTERMEDIATES) $(BIB) $(PDF)
