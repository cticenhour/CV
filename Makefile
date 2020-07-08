NAME=cticenhour_cv
AUX=$(NAME).aux $(NAME).out
INTERMEDIATES=$(NAME).log
PDF=$(NAME).pdf

$(NAME).pdf : $(NAME).tex
	pdflatex $(NAME)

clean :
	rm $(AUX) $(INTERMEDIATES) $(PDF)
