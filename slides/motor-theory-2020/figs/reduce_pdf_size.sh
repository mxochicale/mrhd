#!/bin/sh

# PhD Working Path
WP=$HOME/phd 

##########################
#### REDUCTIONS OF SIZE
#Quality=50 #(50/70/100) 
#Density=100

FIGNAME=thesis-structure
FIGPATH=thesis-structure
DENSITY=100
QUALITY=100

inkscape --export-pdf $WP/slides/pdf/figs/$FIGPATH/$FIGNAME.pdf $WP/slides/pdf/figs/$FIGPATH/$FIGNAME.svg  

convert -density $DENSITYx$DENSITY -quality $QUALITY -compress jpeg $WP/slides/pdf/figs/$FIGPATH/$FIGNAME.pdf $WP/slides/pdf/figs/$FIGPATH/output.pdf  

mv $WP/slides/pdf/figs/$FIGPATH/output.pdf $WP/slides/pdf/figs/$FIGPATH/$FIGNAME.pdf


FIGNAME=fig_6_14
FIGPATH=ch6-3drqa-participants
DENSITY=50
QUALITY=50

inkscape --export-pdf $WP/slides/pdf/figs/results/$FIGPATH/$FIGNAME.pdf $WP/slides/pdf/figs/results/$FIGPATH/$FIGNAME.svg  

convert -density $DENSITYx$DENSITY -quality $QUALITY -compress jpeg $WP/slides/pdf/figs/results/$FIGPATH/$FIGNAME.pdf $WP/slides/pdf/figs/results/$FIGPATH/output.pdf  

mv $WP/slides/pdf/figs/results/$FIGPATH/output.pdf $WP/slides/pdf/figs/results/$FIGPATH/$FIGNAME.pdf



