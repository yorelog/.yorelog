#!/bin/bash
BASEDIR=$(pwd)
BINDIR=$BASEDIR/bin

echo '[ -f '$BASEDIR'/.bashrc ] && source '$BASEDIR'/.bashrc' >> $HOME/.bashrc
echo 'export PATH='$BINDIR':$PATH' >> $HOME/.bashrc

# install fasd
cd $BINDIR
wget https://raw.githubusercontent.com/clvv/fasd/master/fasd -O fasd 
chmod +x fasd
cd $BASEDIR



source ~/.bashrc

