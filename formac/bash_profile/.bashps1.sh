
# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=`parse_git_dirty`

        if [[ $STAT == *"cle"* ]]
        then
           STAT=${STAT/cle}
           echo -e  "\033[0;32m[☺  ${BRANCH}${STAT}]\033[1;31m|"
        else
           echo "[☹  ${BRANCH}${STAT}]|"
        fi
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    status=`git status 2>&1 | tee`
        ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`

    dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
    untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
    behind=`echo -n "${status}" 2> /dev/null | grep "behind" &> /dev/null; echo "$?"`
    newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
    renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
    deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
    stashed=`echo -n "${status}" 2> /dev/null | grep "stashed:" &> /dev/null; echo "$?"`
    staged=`echo -n "${status}" 2> /dev/null | grep "Changes to be committed:" &> /dev/null; echo "$?"`
    clean=`echo -n "${status}" 2> /dev/null | grep "working tree clean" &> /dev/null; echo "$?"`

    bits=''

    if [ "${ahead}" == "0" ]; then
        bits="↑${bits}"
    fi
    if [ "${renamed}" == "0" ]; then
        bits=">${bits}"
    fi
    if [ "${behind}" == "0" ]; then
        bits="↓${bits}"
    fi
    if [ "${staged}" == "0" ]; then
        bits="∯${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
        bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
        bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
        bits="x${bits}"
    fi
    if [ "${stashed}" == "0" ]; then
        bits="⚑${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
        bits="✎${bits}"
    fi
    if [ "${clean}" == "0" ]; then
        bits="cle${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
        echo " ${bits}"
    else
        echo ""
    fi
}

# export PS1="\u|||\`parse_git_branch\` "
# PS1X='$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
SMB="•"  # Possible Options   •  ○ ●● ⚫
# USMB="⚝ " # Possible Options ⚓, 
USMB="ॐ " #Possible Options ⚝⚓ ॐ,िहतेश
#USMB="िहतेश"
#USMB="⚝ " # Possible Options ⚓, 
#CondaEnviornment
#conenv=$CONDA_DEFAULT_ENV
#conenv=${CONDA_DEFAULT_ENV//[aeiou]}
conenv=${CONDA_DEFAULT_ENV:0:3}

musr=${USER//[aeiou]}@${HOSTNAME:0:4}
PS1X='$(sed "s:\([^/\.]\)[^/]*/:\1/:g" <<< ${PWD/#$HOME/\~})'
# PS1="\[\e[m\]\[\e[0;35m\]$USMB\[\e[m\]\[\e[0;34m\]\h\[\e[m\]\[\e[1;31m\]|\[\e[0;33m\]\A\[\e[1;31m\]|\[\e[m\]\[\e[0;36m\]${PS1X}\[\e[m\]\[\e[1;31m\]|\`parse_git_branch\`\[\e[0;33m\]\$SMB\[\e[0;34m\]\$SMB\[\e[0;35m\]\$SMB\[\e[0;36m\]\$SMB \[\e[m\]"
#PS1="\[\e[m\]\[\e[0;35m\]$USMB \[\e[m\]\[\e[0;34m\]$musr\[\e[m\]\[\e[1;31m\]|\[\e[0;33m\]\A\[\e[1;31m\]|\[\e[m\]\[\e[0;36m\]${PS1X}\[\e[m\]\[\e[1;31m\]|\`parse_git_branch\`\[\e[0;33m\]\$SMB\[\e[0;34m\]\$SMB\[\e[0;35m\]\$SMB\[\e[0;36m\]\$SMB \[\e[m\]"
PS1="\[\e[m\]\[\e[0;35m\]$USMB \[\e[m\]\[\e[0;34m\]$musr\[\e[m\]\[\e[1;31m\]|\[\e[0;33m\]\A\[\e[1;31m\]|\[\e[m\]\[\e[0;36m\]${PS1X}\[\e[m\]\[\e[1;31m\]|\[\e[m\]\[\e[1;2m\]<$conenv>\[\e[m\]\[\e[1;31m\]|\`parse_git_branch\`\[\e[0;33m\]\$SMB\[\e[0;34m\]\$SMB\[\e[0;35m\]\$SMB\[\e[0;36m\]\$SMB \[\e[m\]"



