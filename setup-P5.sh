#!/bin/bash

{
LIST_OF_PACKAGES="build-essential unzip bat python3-pygments python-is-python3 python3 python3-pip ipython3 postgresql postgresql-contrib texlive-full"
BAT_ALIAS="alias cat='batcat --paging=never'"
LOCAL_BIN_EXPORT='export PATH=$HOME/.local/bin:$PATH'

echo This script installs the recommended packages for the 5th semester at AAU: C compiler, python basics, postgresql, and LaTeX, and downloads the aipython libraries.

printf "\\n${BAT_ALIAS}\\n" >> "${HOME}/.bashrc"
printf "\\n${LOCAL_BIN_EXPORT}\\n" >> "${HOME}/.bashrc"
source ${HOME}/.bashrc

curl -fsSLO https://artint.info/AIPython/aipython.zip &

sudo apt update && sudo apt upgrade -y && sudo apt install ${LIST_OF_PACKAGES} -y
sudo apt autoremove -y
pip install -U matplotlib ipython

wait

unzip -q aipython.zip
rm -r aipython.zip
rm -r __MACOSX

}