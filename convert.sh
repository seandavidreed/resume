#!/bin/bash

pandoc resume_docugami.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html
wkhtmltopdf --enable-local-file-access resume.html resume.pdf
