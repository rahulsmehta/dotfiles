#!/bin/bash

cp .bash_profile $HOME
cp .bashrc $HOME
cp .gitconfig $HOME
cp .git-completion.bash $HOME
cp .ideavimrc $HOME
cp .vimrc $HOME
cp .xccopy.bash $HOME

# Requires VSCode to be installed
# cat .vscode.extensions | xargs -L 1 code --install extension
