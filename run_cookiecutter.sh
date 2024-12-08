#!/bin/bash

CD=$(readlink -f "$(dirname "$0")")
VENV_DIR="$CD/venv"

# INstall cookiecutter in python venv
[ -d "$VENV_DIR" ] || python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"
pip3 install -U cookiecutter || exit 1


# Calling for github repo
cookiecutter https://github.com/velik76/cookiecutter-bash-vscode

# Calling for local dir
# cookiecutter ../cookiecutter-bash-vscode
