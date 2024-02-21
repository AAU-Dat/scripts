#!/bin/bash
{
LIST_OF_PACKAGES="build-essential gdb unzip bat python-is-python3 texlive-full wslu pip"

echo This script installs the recommended packages for the 8th semester at AAU.

printf "\\n${BAT_ALIAS}\\n" >> "${HOME}/.bashrc"
source .bashrc
export PATH=$HOME/.local/bin:$PATH

sudo apt update && sudo apt upgrade -y && sudo apt install ${LIST_OF_PACKAGES} -y
sudo apt autoremove -y

pip install -U pip
pip install -U matplotlib notebook pandas Jinja2 pygments

}
