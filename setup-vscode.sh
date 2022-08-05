#!/bin/bash

{
declare -a StringArray=("ms-vscode.cpptools-extension-pack" "ms-python.python" "cweijan.vscode-database-client2" "eamodio.gitlens"
"ms-toolsai.jupyter" "james-yu.latex-workshop" "yzhang.markdown-all-in-one" "bierner.markdown-mermaid" "pkief.material-icon-theme")

for val in "${StringArray[@]}"; do
    code --install-extension $val --force &
  echo $val
done

wait

}