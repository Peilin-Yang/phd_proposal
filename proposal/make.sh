#!/bin/bash

main=dissertation-main
latex $main
if [ $# -eq 1 ]
then
  bibtex $main
  latex $main
  latex $main
fi

dvips -P cmz -t letter -o $main.ps  $main.dvi
ps2pdf $main.ps $main.pdf
