((!$+ZPLUG_HOME)) && source ~/.zplug.zsh
(($TERM_PROGRAM == vscode)) && source $HOME/.zplug.zsh

# User configuration
# ===特殊系统变量在 .zprofile 中定义===
[ -f ~/.zprofile ] && source ~/.zprofile
export EDITOR='vim'
export TERM='xterm-256color'
export LANG='zh_CN.UTF-8'
export LANGUAGE='zh_CN.UTF-8'
export LC_ALL='zh_CN.UTF-8'
export LC_CTYPE='zh_CN.UTF-8'
# Config fzf
# alias preview="fzf --preview 'cat {}'"
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
