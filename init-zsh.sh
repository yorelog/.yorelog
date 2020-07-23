#!/bin/bash
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

# install Oh my zsh
if [[ $OSTYPE == *darwin* ]]; then
    brew install zplug lua # use home brew to install zplug
    export ZPLUG_HOME=/usr/local/opt/zplug
fi
#
## cp zsh config file
#if [ -e $HOME/.zshrc ];then
#    rm $HOME/.zshrc
#    echo "remove the default .zshrc"
#fi
#
#ln -s $BASEDIR/.zshrc $HOME/.zshrc
#
#if [ ! -e $HOME/.zprofile ];then
#    cp $BASEDIR/.zprofile $HOME/.zprofile
#    echo "you can add some path variables in ~/.zprofile"
#fi
#
