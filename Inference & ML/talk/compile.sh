#!/bin/bash

MODES="${1:-handout presentation}" # available: handout notes presentation trans article

for mode in $MODES; do
	for i in `seq 1 3`; do
		pdflatex -jobname="Bayesian Inference $mode" "\\PassOptionsToClass{$mode}{beamer} \\input{Bayesian Inference.tex}"
	done
done

echo "done: Compiling for modes $MODES"
