#!/bin/bash

file_name=${1%.*}

if [$file_name = ""]; then
    echo "No filename provided!";
    exit 1;
fi

pandoc ${file_name}.md -f markdown -t html -c ../resume-stylesheet.css -s -o ${file_name}.html
wkhtmltopdf --enable-local-file-access --page-size Letter ${file_name}.html ../pdf/${file_name}.pdf

rm ${file_name}.html
