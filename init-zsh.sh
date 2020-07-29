#!/bin/bash
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

ln -s $BASEDIR/.zshrc $HOME/.zshrc
ln -s $BASEDIR/.zplug.zsh $HOME/.zplug.zsh
#
if [ ! -e $HOME/.zprofile ];then
    cp $BASEDIR/.zprofile $HOME/.zprofile
    echo "you can add some path variables in ~/.zprofile"
fi
