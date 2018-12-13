all: main_v2

pdf: main_v2 bib
	

main_v2:
	pdflatex main_v2

bib:
	pdflatex main_v2
	bibtex main_v2
	pdflatex main_v2
	pdflatex main_v2

push:
	git add *.tex
	git commit
	git push


clean:
	rm -f *~ *.dvi *.aux *.log *.toc *.lof *.blg *.lot *.inx 
	rm -f main_v2.bbl
	rm -f main_v2.pdf main_v2.ps
