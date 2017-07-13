#!/bin/sh

document=thesis

./latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $document
./makeglossaries $document
./latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $document
./makeglossaries $document
./latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $document
./latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf $document
