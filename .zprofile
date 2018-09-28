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
eval "$(fasd --init auto)"







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
