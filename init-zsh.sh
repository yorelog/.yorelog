#!/bin/bash

BASEDIR=$(dirname "$0")

# install Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cp zsh config file
rm $HOME/.zshrc
ln -s $BASEDIR/.zshrc $HOME/.zshrc

if [ ! -e $HOME/.zprofile ];then
    ln -s $BASEDIR/.zprofile $HOME/.zprofile
    echo "you can add some path variables in ~/.zprofile"
fi

