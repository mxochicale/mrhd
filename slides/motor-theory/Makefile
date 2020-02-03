#
# Author: Miguel Xochicale 
# Original Author: Jake Zimmerman <jake@zimmerman.io>
#
# ===== Usage =============================================================
#
#
#
# make                  Compile tex file to PDF
#
# make view             Compile $(TARGET).md to a PDF, then view it
# make again            Force everything to recompile
#
# make clean            Get rid of all intermediate generated files
# make veryclean        Get rid of ALL generated files:
#
#
# =========================================================================



LATEX=lualatex

## wildcard function get a list of all the 
## * source files in a given directory
TEXTARGETS=$(wildcard ./presentation*.tex)
TARGET=$(TEXTARGETS:.tex=.pdf)
#SVG=$(wildcard figs/*/*.svg)
#SVG+=$(wildcard figs/*/*/*.svg)

MODE ?= batchmode

all: paper

%.pdf: %.svg
	inkscape --export-pdf $(@) $(<)

%.aux: paper

bib: $(TARGET:.tex=.aux)
	BSTINPUTS=:./style bibtex $(TARGET:.tex=.aux)

%.pdf: %.tex
	TEXINPUTS=:style $(LATEX) --interaction=$(MODE) -shell-escape $<; if [ $$? -gt 0 ]; then echo "Error while compiling $<"; touch $<; fi;


#paper: $(SVG:.svg=.pdf) $(TARGET)
paper:	$(TARGET)

touch:
	touch $(TEXTARGETS)

force: touch paper

again: touch all

clean:
	rm -f *.vrb *.spl *.idx *.aux *.log *.snm *.out *.toc *.nav *intermediate *~ *.glo *.ist *.bbl *.blg $(SVG:.svg=.pdf)
	rm -rf _minted*

veryclean: clean
	rm -f $(TARGET:.tex=.pdf)

view: 
	evince $(TARGET:.tex=.pdf)


