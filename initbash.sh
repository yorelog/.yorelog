#!/bin/bash
BASEDIR=$(pwd)
CONFIGDIR=$HOME/.yorelog
BINDIR=$CONFIGDIR/bin
[ ! -d $BINDIR ] && mkdir $BINDIR

echo '[ -f '$CONFIGDIR'/.bashrc ] && source '$CONFIGDIR'/.bashrc' >> $HOME/.bashrc
echo 'PATH='$CONFIGDIR'/bin:$PATH' >> $HOME/.bashrc
#echo 'export PATH='$BINDIR':$PATH' >> $HOME/.bashrc

# install fasd
#cd $BINDIR
#wget --no-check-certificate https://raw.githubusercontent.com/clvv/fasd/master/fasd -O fasd 
#chmod +x fasd
#cd $BASEDIR



source ~/.bashrc

