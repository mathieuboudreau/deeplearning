#!/bin/bash

# Stop if encounters an error
set -e

# Make pdfs of all chapter tex files
pdflatex chapter_*/*.tex

# Clean pdflatex outputs (that aren't *.pdf)
rm -f *.aux
rm -f *.out
rm -f *.log

# Reset error checking flag
set +e
