#!/bin/bash
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

vimversionneeded=8

function version_lt() { test "$(echo "$@" | tr " " "\n" | sort -rV | head -n 1)" != "$1"; }

echo  "install vim-plug"
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://codechina.csdn.net/mirrors/junegunn/vim-plug/-/raw/master/plug.vim


echo  "check the version of vim (plugin vim-go who gt than 1.4 need vim8)"

VIMVERSION=$(vim --version|sed -n 's/^VIM - Vi IMproved \([0-9.]*\).*/\1/p');


# if  version_lt $VIMVERSION $vimversionneeded; then
    # echo "your vim version is ${VIMVERSION} prior than ${vimversionneeded}"
    # echo "switch vim-go to version v1.4"
    # sed -i "s;^Plug 'fatih/vim-go', { 'tag': '\*';Plug 'fatih/vim-go', { 'tag': 'v1.4';1" .vimrc
# fi

# cp vim config file
ln -s $BASEDIR/.vimrc $HOME/.vimrc
