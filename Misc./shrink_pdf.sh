#!/bin/sh

#This file compresses pdf files using GS. You can decrease quiality by setting different r (r150...). First argument is the input file, second argument is optional output file name (don't put pdf)

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
    -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages \
    -dCompressFonts=true -r300 -sOutputFile="${2:-output}".pdf "$1"
