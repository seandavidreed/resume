#!/bin/bash

pandoc docugami.md -f markdown -t html -c ../resume-stylesheet.css -s -o cover_letter.html
wkhtmltopdf --enable-local-file-access cover_letter.html cover_letter.pdf
