all: intro-simulation-0.0.pdf

simulation_0.0.pdf: intro-simulation-0.0.tex preface.tex ch1_random_numbers.tex  ch2_probability.tex ch3_simulations.tex  ch4_queueing.tex front-matter/front-matter.tex
	pdflatex simulation_0.0; bibtex simulation_0.0; pdflatex simulation_0.0; pdflatex simulation_0.0

clean:
	rm -f *.log *.dvi *.aux *.toc *.lot *.bbl *.blg
