#!/bin/bash

{
LIST_OF_PACKAGES="build-essential gdb unzip bat python3-pip python3-testresources python-is-python3 texlive-full"
BAT_ALIAS="alias cat='batcat --paging=never'"

echo This script installs the recommended packages for the 6th semester at AAU: C compiler, python basics, and LaTeX.

printf "\\n${BAT_ALIAS}\\n" >> "${HOME}/.bashrc"
source .bashrc
export PATH=$HOME/.local/bin:$PATH

sudo apt update && sudo apt upgrade -y && sudo apt install ${LIST_OF_PACKAGES} -y
sudo apt autoremove -y
pip install -U pip
pip install -U matplotlib jupyterlab pandas Jinja2 scikit-learn
}