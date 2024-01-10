#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

markdown_to_beamer () {
    pandoc $1 \
        -t beamer \
        --include-in-header "$SCRIPT_DIR/header.tex" \
        --pdf-engine=xelatex \
        -o $2
}

markdown_to_beamer $1 $2