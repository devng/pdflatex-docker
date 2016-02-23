#!/bin/sh

# Runs the pdflatex container and mounts the current working dir as a vloueme of
# the container

# abort the script if the compiled folder is not present or another error occurs
set -e

exec docker run --name pdflatex --rm -i --user="$(id -u):$(id -g)" --net=none -v $PWD:/data devng/pdflatex pdflatex -interaction=nonstopmode -output-dir=/data "$@"
