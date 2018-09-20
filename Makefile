thesis.pdf: thesis.ps
	ps2pdf thesis.ps
thesis.ps: thesis.dvi
#	dvips -o thesis_53-62.ps -pp 53-62 thesis.dvi
#	dvips -o thesis_63-72.ps -pp 63-72 thesis.dvi
#	dvips -o thesis_73-82.ps -pp 73-82 thesis.dvi
#	dvips -o thesis_83-92.ps -pp 83-92 thesis.dvi
#	dvips -o thesis_93-102.ps -pp 93-102 thesis.dvi
#	dvips -o thesis_103-112.ps -pp 103-112 thesis.dvi
#	dvips -o thesis_113-122.ps -pp 113-122 thesis.dvi
#	dvips -o thesis_123-132.ps -pp 123-132 thesis.dvi
#	dvips -o thesis_133-142.ps -pp 133-142 thesis.dvi
	dvips -o thesis.ps thesis.dvi
thesis.dvi: thesis.tex clean
	latex thesis
	bibtex thesis
	latex thesis
	latex thesis
clean:
	rm -f *.aux *.dvi *.log *.blg *.toc *.bbl
