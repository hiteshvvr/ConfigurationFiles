# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# ~/.dircolors/themefile
#eval $(gdircolors ~/.dircolors/dircolors.256dark)

source ~/.bashps1.sh
# User specific aliases and functions
set -o vi

#alias ls='gls --color=auto'
#alias ll='ls -alh'
#alias la='ls -1'

alias c='clear'
alias vi='vim'

#History in bashrc
export HISTTIMEFORMAT="%d/%m|%T -> "
HISTSIZE=10000
HISTFILESIZE=20000

export TERM=xterm-256color
#eval `dircolors ~/.dir_colors`
#eval `dircolors ~/.dircolor/.dir_colors`

#bind Space:magic-space
#bind set show-all-if-ambiguous on
#bind TAB:menu-complete
#/usr/share/bash-completion/bash_completion
#/etc/profile.d/bash_completion.sh


#. ~/.zandu/z.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH=$PATH:/Applications/CMake.app/Contents/bin
source /usr/local/bin/geant4.sh


#==================SETUP FOR MIDAS==================
#!/bin/echo You must source

#export SVN_EDITOR="vim"
#export GIT_EDITOR="vim"
#export ROOTANASYS=$HOME/packages/rootana
#export MIDAS_EXPT_NAME=neontrap
#export MIDAS_EXPT_NAME=SARAF1
#source /opt/root/bin/thisroot.sh

############OLD DAQ DEFINITIONS#################

# export MIDAS_EXPT_NAME=neatdaq
# export MIDAS_EXPTAB=$HOME/online/exptab
# export PATH=${PATH%:/home/neatdaq/packages/midas/linux/bin}
# export MIDASSYS=$HOME/packages/midas
# export PATH=$PATH:$MIDASSYS/linux/bin


#############NEW DAQ DEFINITIONS#################
export PATH=${PATH%:/Users/pinku/midas/packages/midas/bin}
export MIDASSYS=$HOME/midas/packages/midas
export PATH=$PATH:$MIDASSYS/bin
export ROOTANASYS=$HOME/midas/packages/rootana
export JSROOTSYS=$HOME/midas/packages/jsroot
#----------ChangethisAccordingly------------------------###
export MIDAS_EXPT_NAME=testdg
#export MIDAS_EXPT_NAME=testtdc
#export MIDAS_EXPTAB=$HOME/NewDaq/online/exptab
#export MIDAS_EXPTAB=$HOME/NewDaq/development/frontend/TDC/exptab
export MIDAS_EXPTAB=$HOME/midas/online/exptab
#export MIDAS_EXPTAB=$HOME/NewDaq/development/frontend/digitizer/usingdigitizerlibrary/exptab

#===============SETUP FOR MIDAS ENDS==============

# added by Anaconda3 4.4.0 installer
alias colormake="./colormake.sh"
#alias colormake="./home/lab1/bin/colormake.sh"

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -x /usr/bin/mint-fortune ]; then
     /usr/bin/mint-fortune
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


export BR="/Users/pinku/Google Drive/DropboxHiteshRonLab/Hitesh/Analysis/root/BR2019"
export DR="/mnt/c/Users/hitesh/Dropbox/"
export UD="/mnt/d/"
alias py='python'

# source /usr/local/bin/thisroot.sh
source "/usr/local/Cellar/root/6.18.04/bin/thisroot.sh"

alias root='root -l'
export PATH="/Users/pinku/anaconda3/bin:$PATH"
cd 
source .profile
cd -
