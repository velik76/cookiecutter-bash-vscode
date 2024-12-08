#!/bin/sh

if [ "{{cookiecutter.dir_name}}" = "" ]; then
    echo "No dirname given, exit"
    exit 1
fi

echo "Generating in: {{cookiecutter.dir_name}}"
