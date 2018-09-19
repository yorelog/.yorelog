#
# /etc/zprofile and ~/.zprofile are run for login shells
#

###################
#   变量配置      #
###################
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:/usr/local/bin:$PATH
export GOPATH="$HOME/go"
export GOROOT="$HOME/.src/go"
export GOTOOLDIR="$HOME/.src/go/pkg/tool/linux_amd64"

export PATH=~/bin:~/.src/bin:$PATH

alias goversion162="switchgoversion 1.6.2"
alias goversion187="switchgoversion 1.8.7"








_src_etc_profile()
{
    #  Make /etc/profile happier, and have possible ~/.zshenv options like
    # NOMATCH ignored.
    #
    emulate -L ksh

    # source profile
    if [ -f /etc/profile ]; then
	    source /etc/profile
    fi
}
_src_etc_profile

unset -f _src_etc_profile