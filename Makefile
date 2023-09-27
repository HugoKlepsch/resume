all: resume.pdf

resume.pdf: resume.tex
	mkdir -p out
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out resume.tex || true
	mv out/resume.pdf .
	rm -rf out
