#!/bin/bash

install_zplug() {

}
# install Oh my zsh
if [[ $OSTYPE == *darwin* ]]; then
    export ZPLUG_HOME=/usr/local/opt/zplug
    if [[! -f $ZPLUG_HOME/init.zsh ]]; then
        brew install zplug # use home brew to install zplug
    fi
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
