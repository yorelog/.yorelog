#!/bin/bash
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

# install tmux-plugin/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# cp tmux config file
ln -s $BASEDIR/.tmux.conf $HOME/.tmux.conf


