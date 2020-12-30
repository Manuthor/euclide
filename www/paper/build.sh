#!/bin/bash
set -exu

bash clean.sh
##htlatex DOC2_test.tex "htm,2"
htlatex DOC2.tex foo.cfg
#htlatex DOC2.tex myconf.cfg

# PDF
#latexmk -pdf DOC2.tex
