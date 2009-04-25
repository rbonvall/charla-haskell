DOC = charla-haskell

pdf: $(DOC).pdf

$(DOC).pdf: $(DOC).tex programas/*
	pdflatex $<

clean:
	@rm -vf *.{log,aux,dvi,pdf,nav,out,snm,toc,vrb}

.PHONY: clean pdf

