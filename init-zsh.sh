#!/bin/bash
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

# install Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &

# cp zsh config file
if [ -e $HOME/.zshrc ];then
    rm $HOME/.zshrc
    echo "remove the default .zshrc"
fi

ln -s $BASEDIR/.zshrc $HOME/.zshrc

if [ ! -e $HOME/.zprofile ];then
    cp $BASEDIR/.zprofile $HOME/.zprofile
    echo "you can add some path variables in ~/.zprofile"
fi

