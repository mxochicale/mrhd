INKSCAPE?=inkscape	# Inkscape (svg support)
#
#https://scaron.info/blog/makefiles-for-latex.html

FIGURES_SVG=$(wildcard svg/*.svg)
FIGURES_PDF=$(subst svg/,pdf/,$(FIGURES_SVG:.svg=.pdf))
FIGURES_PNG=$(subst svg/,png/,$(FIGURES_SVG:.svg=.png))

all:	$(FIGURES_PDF) $(FIGURES_PNG)

# Pattern rule for converting SVG to PDF
pdf/%.pdf: svg/%.svg  ## Figures for the manuscript
	$(INKSCAPE) --export-pdf $(@) $(<)

# Pattern rule for converting SVG to PNG
png/%.png: svg/%.svg  ## Figures for the manuscript
	$(INKSCAPE) --export-png $(@) $(<)


viewpdf:
	evince $(FIGURES_PDF)

viewpng:
	eog $(FIGURES_PNG)

clean:  ## Clean LaTeX and output figure files
	rm -f $(FIGURES_PDF) $(FIGURES_PNG)

