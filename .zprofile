#
# /etc/zprofile and ~/.zprofile are run for login shells
#

###################
#   变量配置      #
###################
export PATH=$HOME/go/bin:/usr/local/bin:$PATH
export GOPATH="$HOME/go"

###################
#   fasd          #
###################
export PATH=$HOME/.yorelog/bin:$PATH
eval "$(fasd --init auto)"

###################
#   alias         #
###################
alias phpctags='ctags -R --fields=+laimS --languages=php'






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
