
# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=`parse_git_dirty`

        if [[ $STAT == *"cle"* ]]
        then
            STAT=${STAT/cle}
           echo -e "\e[1;36m[\u263a ${BRANCH}${STAT}]\e[1;31m|"
        else
           echo -e "[\u2639 ${BRANCH}${STAT}]|"
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
        bits="\uf22d${bits}"
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
PS1="\[\e[m\]\[\e[0;35m\]\h\[\e[m\]\[\e[1;31m\]|\[\e[0;33m\]\A\[\e[1;31m\]|\[\e[m\]\[\e[0;36m\]\W\[\e[m\]\[\e[1;31m\]|\`parse_git_branch\`\[\e[0;36m\]⇒ \[\e[m\]"