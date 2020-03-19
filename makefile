# Declaration of variables

LANGS = fr en
TARGETS = $(addprefix resume_,$(LANGS))
PDF_TARGETS = $(addsuffix .pdf,$(TARGETS))

all: $(PDF_TARGETS)

%.pdf: %.tex
	pdflatex -interaction=batchmode $< $@

clean:
	-rm -f *.aux *.log *.out *.pdf
	-rm -rf .texpadtmp