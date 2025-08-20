#!/bin/bash

# Define name of primary input file
name_in="main.tex"

# Define output file name and configuration
format_out="markdown"
name_out="result.md"
path_out="./results/${name_out}"
rm -rf "./results/*"

# Call PanDoc to convert the file
pandoc \
  --standalone \
  --to=${format_out} \
  --output=${path_out} \
  "./${name_in}"
