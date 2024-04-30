# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#Various Paths
export PATH="/opt/homebrew/bin:$PATH"
export TERM=xterm-256color
export PATH=/opt/homebrew/anaconda3/bin:/opt/homebrew/anaconda3/condabin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/CMake.app/Contents/bin:/opt/homebrew/include/
export PATH="/Library/TeX/texbin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=$PATH:/Applications/CMake.app/Contents/bin
export PATH=$PATH:/Applications/CMake.app/Contents/bin
export PATH=$PATH:~/.mybashscripts
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/qt@5/lib/pkgconfig"

# Verious Setups
set -o vi
eval `gdircolors ~/.dircolors/mydircolor`
export TERM=xterm-256color
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias colormake="./colormake.sh"

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac


#various alias

alias c='clear'
alias vi='vim'
alias py='python'
alias root='root -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='gls --color=auto'
alias la='ls -a'
alias l='ls'
alias ll='ls -1'
alias lll='ls -lah'

#Various Exports
export PATH=$PATH:~/.mybashscripts


# History
#History in bashrc
export HISTFILE=$HOME/.mybashscripts/bash_history
export HISTTIMEFORMAT="%d/%m|%T -> "
HISTSIZE=1000000
HISTFILESIZE=2000000



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source ~/.bashps1.sh