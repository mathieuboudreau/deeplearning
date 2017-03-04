#!/bin/bash

# Stop if encounters an error
set -e

# Make pdfs of all chapter tex files
pdflatex -output-directory=pdfs chapter_*/*.tex

# Clean pdflatex outputs (that aren't *.pdf)
rm -f pdfs/*.aux
rm -f pdfs/*.out
rm -f pdfs/*.log

# Reset error checking flag
set +e
