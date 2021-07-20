dotfiles
========

Development setup guide for new MacOS computer:

1. Install Homebrew
2. Using brew, install node, yarn, golang, python, etc.
    a. To use the `yarnblitz` and `cleanbuild` commands aliased in `.bashrc`, `yarn` and `node` need to be installed. To use `rnblitz`, run it from the root of a React Native repo
    b. Install gvim if you want a decent graphical text editor that's still fast
3. Install ITerm2
4. Install IntelliJ and VSCode - for IntelliJ get the Community Edition and then install the bash, python, typescript, and whatever other plugins
    a. Alternately, install data science/python plugins for vscode
5. Install full Anaconda python 3.6 and 2.7 distributions (for compatibility sake - installing the conda3 env will allow you to generate a python2.7 env as well)
6. Install these dotfiles to the home folder with `bootstrap.sh`
