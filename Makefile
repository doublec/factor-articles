ARTICLES = \
	cells.tex \
	channels.tex \
	compilers.tex \
	contresponder.tex \
	distributed_channels.tex \
	distributedconcurrency.tex \
	factor-articles.tex \
	fjsc.tex \
	git.tex \
	lazy.tex \
	ogg.tex \
	parsers.tex \
	partialcontinuations.tex \
	patternmatching.tex \
	pegs.tex \
	searchreplace.tex \
	serialization.tex \
	webapps.tex 

all: factor-articles.pdf
	
factor-articles.pdf: $(ARTICLES)
	echo X | pdflatex factor-articles
	makeindex factor-articles
	pdflatex factor-articles
	pdflatex factor-articles
	pdflatex factor-articles

clean:
	rm *.aux
	rm *.ind
	rm *.ilg
	rm *.out
	rm *.pdf
	rm *.glo
	rm *.idx
	rm *.*~
	rm *.log
	rm *.toc
