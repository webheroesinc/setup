# Executed for interactive non-login shells
#
# Put things in here that you want run for ever interactive shell

if [ -f ~/.bash_personal ]; then
    source ~/.bash_personal
fi

# All admin and/or staff on the *same* mac/linux host should be able
# to write directories/files created.  In particular, if this is not
# set, then installations created under /usr/local/... (ie. using
# brew) will not be able to be modified by other users on the box.
# WARNING: if you do not trust the other users on your host, change
# this!
umask 002

export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

export EDITOR=emacs

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export VAGRANT_DEFAULT_PROVIDER="virtualbox"

source ~/.git-completion.bash
if (( $? )); then
    export PROMPT_COMMAND=__git_prompt
else
    export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

__git_prompt ()
{
    txtblk='\e[0;30m' # Black - Regular
    txtred='\e[0;31m' # Red
    txtgrn='\e[0;32m' # Green
    txtylw='\e[0;33m' # Yellow
    txtblu='\e[0;34m' # Blue
    txtpur='\e[0;35m' # Purple
    txtcyn='\e[0;36m' # Cyan
    txtwht='\e[0;37m' # White
    bldblk='\e[1;30m' # Black - Bold
    bldred='\e[1;31m' # Red
    bldgrn='\e[1;32m' # Green
    bldylw='\e[1;33m' # Yellow
    bldblu='\e[1;34m' # Blue
    bldpur='\e[1;35m' # Purple
    bldcyn='\e[1;36m' # Cyan
    bldwht='\e[1;37m' # White
    txtrst='\e[0m'    # Text Reset

    CURRENT_BRANCH=`git branch 2>/dev/null | grep '*' | head -n1`
    CURRENT_BRANCH=${CURRENT_BRANCH:2}
    if [ -z "$CURRENT_BRANCH" ] ; then
        gitstatus=''
    else
        STATUS_LINES=`git status`
        if [[ "${STATUS_LINES/# Changed but not updated/}" != "${STATUS_LINES}" ]] ; then
            colour=$bldred
        elif [[ "${STATUS_LINES/# Changes to be committed/}" != "${STATUS_LINES}" ]] ; then
            colour=$bldgrn
        elif [[ "${STATUS_LINES/# Untracked files}" != "${STATUS_LINES}" ]] ; then
            colour=$bldblu
        else
            colour=$bldblk
        fi
        gitstatus=" "$colour":"${CURRENT_BRANCH}$txtrst
    fi
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w${gitstatus}$ "
}

function chrome-sudo-agent {
    agent="${1}";

    echo "================================================================"
    echo "Finding matching user agent string for:	${agent}"
    echo "..."
    echo ""
    

    if [[ "${agent}" == "firefox" ]]; then
        useragent=""
    elif [[ "${agent}" == "ie6" ]]; then
        useragent="Mozilla/5.0 (Windows; U; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)"
    elif [[ "${agent}" == "ie7" ]]; then
        useragent="Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)"
    fi

    echo ""
    echo "Starting up chrome with user agent as:	${useragent}"
    echo "================================================================"

    sudo /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -user-agent="${useragent}"
}

function count {
    folder="${1}";

    ls -la "${folder}" | wc -l
}


alias l="ls -la"
alias ll="ls -l"
alias c="clear"
alias wbrowse="lynx -emacskeys"
alias google="lynx -emacskeys http://google.ca"
alias lanner1="ssh brisebom@rtu-devel-lanner1"
alias lanner2="ssh brisebom@rtu-devel-lanner2"
alias lanner3="ssh brisebom@rtu-devel-lanner3"
alias lanner4="ssh brisebom@rtu-devel-lanner4"
alias lanner5="ssh brisebom@rtu-devel-lanner5"
alias cyctforg="ssh cyctforg@cyctf.org"
alias agfinity="ssh agfinity@agfinity.com"
alias gg="git grep -inC 3 --color"
alias gd="git diff --color"
alias emacs='emacs -nw'
alias sudoemacs='sudo emacs -nw'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
