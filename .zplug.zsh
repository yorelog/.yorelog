# check zplug instalization
if [[ $OSTYPE == *darwin* ]]; then
    export ZPLUG_HOME=/usr/local/opt/zplug
    if [[ ! -f $ZPLUG_HOME/init.zsh ]]; then
        echo "It is recommand to install zplug with homebrew on macOS! \n"
        brew install zplug # use home brew to install zplug
        export ZPLUG_HOME=/usr/local/opt/zplug
    fi
fi
if [[ $OSTYPE == *linux-gnu* ]]; then
    export ZPLUG_HOME=~/.zplug
    if [[ ! -d ~/.zplug ]]; then
        echo "Installing zplug to ~/.zplug \n"
        sh -c "$(git clone https://github.com/zplug/zplug ~/.zplug)"
    fi
fi

# init zplug 
source $ZPLUG_HOME/init.zsh 
# zplug update at the first time
if [[ ! -e $ZPLUG_HOME/log/update.log ]]; then
    echo "Update plugin for the first time"
    zplug update
fi
# update zplug plugin once a week
lastUpdateDay=$(date -r $ZPLUG_HOME/log/update.log "+%Y%m%d")
lastUpdateWeek=$(date -r $ZPLUG_HOME/log/update.log "+%A")
lastUpdateWeekNo=$(date -r $ZPLUG_HOME/log/update.log "+%V")

todayWeekNo=$(date "+%V")
echo "zplug last updated at "$lastUpdateDay " "$lastUpdateWeek
if [[ $lastUpdateWeekNo -ne $todayWeekNo ]]; then
    zplug update
fi

# zplug plug begin
zplug "zdharma/fast-syntax-highlighting"
# zplug "zsh-users/zsh-autosuggestions"
zplug "hchbaw/auto-fu.zsh"
zplug "evanthegrayt/cdc"
zplug "zsh-users/zsh-history-substring-search"
#zplug "zsh-users/zsh-completions"
zplug "zdharma/history-search-multi-word"
# 命令别名 Q 设置 q执行 U取消
zplug "cal2195/q"
# alias 提示
zplug "MichaelAquilina/zsh-you-should-use"
# 快速切换目录 z
zplug "skywind3000/z.lua"
zplug "ttttmr/sy-zsh-theme", as:theme


# deer
zplug "vifon/deer", use:deer
zle -N deer
bindkey '\ek' deer

# zplug plug end check install
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load # --verbose


# zcomp
# 忽略大小写
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# variables
# zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# skywind3000/z.lua
eval "$(lua $ZPLUG_REPOS/skywind3000/z.lua/z.lua --init zsh)"
# zdharma/fast-syntax-highlighting  
fast-theme forest -q
