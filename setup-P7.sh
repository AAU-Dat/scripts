#!/bin/bash
{
LIST_OF_PACKAGES = "build-essential curl libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5 bat"

echo This script installs the recommended packages for the 7th semester at AAU: C compiler and Haskell.

printf "\\n${BAT_ALIAS}\\n" >> "${HOME}/.bashrc"
source .bashrc
export PATH=$HOME/.local/bin:$PATH

sudo apt update && sudo apt upgrade -y && sudo apt install ${LIST_OF_PACKAGES} -y
sudo apt autoremove -y

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

}
