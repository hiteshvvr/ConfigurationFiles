# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
set -o vi
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;31m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\]'

#PS1='\[\e[0;32m\]\A|\[\e[m\]\[\e[1;31m\]\W\[\e[m\]\[\e[0;32m\]|\[\e[m\]'
#PROMPT_DIRTRIM=2
#PS1='%{$fg[yellow]%}%T%{$reset_color%}%{$fg[red]%}|%{$reset_color%}%{$fg[cyan]%}%1~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}%{$fg[cyan]%}⇒%{$reset_color%} '

alias l='ls -1X'
alias ll='ls -lahX'
alias lls='ls -lahS'
alias ld='du -sh ./*'
alias la='ls -aX'
alias lx='ls -lX'
alias c='clear'
alias vi='vim'
alias root='root -l'

alias cd..="cd .." 
alias cd...="cd ../.." 
alias cd....="cd ../../.." 
alias cd.....="cd ../../../.." 
alias cd......="cd ../../../../.." 

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

# added by Miniconda3 4.3.11 installer
#export PATH="/home/seeker/miniconda3/bin:$PATH"

#. ~/.zandu/z.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


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
export PATH=${PATH%:/home/neatdaq/NewDaq/packages/midas/linux/bin}
export MIDASSYS=$HOME/NewDaq/packages/midas
export PATH=$PATH:$MIDASSYS/linux/bin
export ROOTANASYS=$HOME/NewDaq/packages/rootana
export JSROOTSYS=$HOME/NewDaq/packages/jsroot
#----------ChangethisAccordingly------------------------###
#export MIDAS_EXPT_NAME=NeatVMI
#export MIDAS_EXPT_NAME=testdg
export MIDAS_EXPT_NAME=testtdc
#export MIDAS_EXPTAB=$HOME/NewDaq/online/exptab
#export MIDAS_EXPTAB=$HOME/NewDaq/development/frontend/TDC/exptab
#export MIDAS_EXPTAB=$HOME/NewDaq/development/frontend/digitizer/1720/exptab
#export MIDAS_EXPTAB=$HOME/aaa/exptab
#export MIDAS_EXPTAB=$HOME/NewDaq/development/frontend/both/exptab
export MIDAS_EXPTAB=$HOME/NewDaq/development/ongithub/neatdaq/exptab
# export MIDAS_EXPTAB=$HOME/NewDaq/development/ongithub/NeatFrequencyMeter/frontend/exptab
#export MIDAS_EXPTAB=$HOME/NewDaq/development/frontend/digitizer/usingdigitizerlibrary/exptab




# export MIDAS_EXPTAB=$HOME/conline/exptab
# export PATH=${PATH%:/home/neatdaq/packages/midas/linux/bin}
#
# select 64-bit or 32-bit MIDAS and ROOT
#
#case `uname -i` in
#i386)
#   source /daq/daqshare/olchansk/root/root_v5.34.01_SL62_32/bin/thisroot.sh
#   export PATH=.:$MIDASSYS/linux-m32/bin:$PATH
#   ;;
#*)
#   #source /daq/daqshare/olchansk/root/root_v5.34.34_SL67_64/bin/thisroot.sh
#   source /opt/root/bin/thisroot.sh
#   # source $HOME/packages/root/bin/thisroot.sh
#   export PATH=.:$MIDASSYS/linux/bin:$PATH
#   ;;
#esac
#
#export PATH=.:$HOME/online/bin:$HOME/packages/roody/bin:$PATH
#
#end

#Setting I don't understand now.
# setup the MIDAS mserver
#
#case `hostname` in
#daq07*)
#   unset MIDAS_SERVER_HOST
#   ;;
#*)
#   export MIDAS_SERVER_HOST=daq07.triumf.ca:7070
#   ;;
#esac


#===============SETUP FOR MIDAS ENDS==============

# added by Anaconda3 4.4.0 installer
alias colormake="./colormake.sh"
#alias colormake="./home/lab1/bin/colormake.sh"

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dir/mydircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     #alias dir='dir --color=auto'
#     #alias vdir='vdir --color=auto'

#     alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi

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
cd ~/.dir
eval `dircolors mydircolor`
cd -
alias ls='ls -X --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


export TR="/home/neatdaq/Analysis/root/mcodes/"
export DGF="/home/neatdaq/NewDaq/development/frontend/digitizer/1720/"
export DGR="/home/neatdaq/NewDaq/development/rootana/digitizer/1720/"
export BF="/home/neatdaq/NewDaq/development/frontend/both/"
export BR="/home/neatdaq/NewDaq/development/rootana/both/"

alias py='python'


# added by Anaconda3 installer
export PATH="/home/neatdaq/anaconda3/bin:$PATH"


source ~/.bashps1.sh
source /usr/local/bin/geant4.sh
source /opt/root/bin/thisroot.sh
