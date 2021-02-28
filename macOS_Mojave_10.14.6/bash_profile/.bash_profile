# change to USTC Source
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# set alias
alias ll='ls -al'
alias la='ls -a'
#alias uedit='uedit.sh'
alias uedit='open $1 -a /applications/UltraEdit.app'
alias subl='open -a /Applications/Sublime\ Text.app'

#to change clang to gcc
#alias gcc='gcc-4.9'
#alias cc='gcc-4.9'
#alias g++='g++-4.9'
#alias c++='c++-4.9'

alias gcc='gcc-9'
alias cc='gcc-9'
alias g++='g++-9'
alias c++='c++-9'

# powerline
export TERM="screen-256color"
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

#export LS_OPTIONS='--color=auto'           # 如果没有指定，则自动选择颜色
export CLICOLOR='Yes'                       # 是否输出颜色
export LSCOLORS='ExGxFxdaCxDaDahbadacec'    # 指定颜色

#brew install bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# autojumt set
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# to get git-completion
source ~/.git_completion.bash


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/csy/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/csy/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/csy/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/csy/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# 使用curl命令验证终端是否代理：curl cip.cc
alias goproxy='export http_proxy=http://127.0.0.1:8889 https_proxy=http://127.0.0.1:8889'
alias disproxy='unset http_proxy https_proxy'
#alias goproxy="export ALL_PROXY=socks5://127.0.0.1:1089"
#alias disprocy="unset ALL_PROXY"
alias checkproxy="curl cip.cc"

export LC_ALL=en_US.UTF-8





