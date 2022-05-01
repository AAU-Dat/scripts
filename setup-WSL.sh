#!/bin/bash

{
LIST_OF_PACKAGES="build-essential texlive-full python3-pygments python-is-python3 openjdk-11-jdk bat gh"
BAT_ALIAS="alias cat='batcat --paging=never'"

echo Welcome to the unofficial AAU department of computer science setup script. 
echo The script installs a set of useful and necessary tools for development in WSL.

sudo apt update && sudo apt upgrade -y

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt install LIST_OF_PACKAGES -y

printf "\\n${BAT_ALIAS}\\n" >> "${HOME}/.bashrc"

}