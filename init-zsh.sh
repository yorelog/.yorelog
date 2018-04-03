#!/bin/bash

BASEDIR=$(pwd)

# install Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cp zsh config file
ln -s $BASEDIR/.zshrc $HOME/.zshrc

if [ ! -e $HOME/.user_path ];then
    touch $HOME/.user_path
    echo "you can add some path variables in ~/.user_path"
fi

