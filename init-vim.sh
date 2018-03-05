#!/bin/bash

BASEDIR=$(pwd)

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# cp vim config file
ln -s $BASEDIR/.vimrc $HOME/.vimrc


