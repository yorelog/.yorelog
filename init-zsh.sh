#!/bin/bash

BASEDIR=$(pwd)

# install Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cp zsh config file
ln -s $BASEDIR/.zshrc $HOME/.zshrc


