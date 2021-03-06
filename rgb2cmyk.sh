#! /usr/bin/env bash
#
# USAGE:
# ./rgb2cmyk.sh input.pdf
#
# OUTPUT:
# input-cmyk.pdf

gs -dNOPAUSE -sDEVICE=pdfwrite -dGraphicKPreserve=2  -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK -dNOPAUSE -dBATCH  -sOUTPUTFILE=$(basename ${1} .pdf)-cmyk.pdf ${1}
