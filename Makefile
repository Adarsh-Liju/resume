DOC = resume
TEX = $(DOC).tex
PDF = $(DOC).pdf
AUXFILES = *.aux *.log *.lof *.lot *.fls *.out *.toc *.fdb_latexmk *.synctex.gz *.bbl *.blg

all: $(PDF)

$(PDF): $(TEX)
	latexmk -pdf -interaction=nonstopmode -shell-escape $(TEX)

clean:
	rm -f $(AUXFILES)

cleanall: clean
	rm -f $(PDF)

view: $(PDF)
	xdg-open $(PDF) &

.PHONY: all clean cleanall view
