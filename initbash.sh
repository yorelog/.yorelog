#!/bin/bash
BASEDIR=$(pwd)
BINDIR=$HOME/bin
[ ! -d $BINDIR ] && mkdir $BINDIR

echo '[ -f '$BASEDIR'/.bashrc ] && source '$BASEDIR'/.bashrc' >> $HOME/.bashrc
#echo 'export PATH='$BINDIR':$PATH' >> $HOME/.bashrc

# install fasd
cd $BINDIR
wget --no-check-certificate https://raw.githubusercontent.com/clvv/fasd/master/fasd -O fasd 
chmod +x fasd
cd $BASEDIR



source ~/.bashrc

