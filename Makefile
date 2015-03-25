all: constitution.pdf bylaws.pdf partial-clean

constitution.pdf: constitution/* format.cls logo.pdf
	pdflatex constitution/constitution.tex
	pdflatex constitution/constitution.tex

bylaws.pdf: bylaws/* format.cls logo.pdf
	pdflatex bylaws/bylaws.tex
	pdflatex bylaws/bylaws.tex

partial-clean:
	rm -f *.aux *.cb *.cb2 *.log *.out *.toc

clean: partial-clean
	rm -f constitution.pdf bylaws.pdf
