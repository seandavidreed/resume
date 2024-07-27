#!/bin/bash

pandoc docugami.md -f markdown -t html -c ../resume-stylesheet.css -s -o docugami_cover_letter.html
wkhtmltopdf --enable-local-file-access docugami_cover_letter.html docugami_cover_letter.pdf
