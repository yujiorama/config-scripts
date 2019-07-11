# vi: ai et ts=4 sw=4 sts=4 expandtab fs=shell

unset GIT_LFS_PATH

export GIT_SSH
GIT_SSH=ssh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_DESCRIBE_STYLE=branch
export GIT_PS1_SHOWCOLORHINTS=true

if [[ -e ${HOME}/git-prompt.sh ]]; then
    source ${HOME}/git-prompt.sh
elif [[ -e /mingw64/share/git/completion/git-prompt.sh ]]; then
    source /mingw64/share/git/completion/git-prompt.sh
elif [[ -e /etc/bash_completion.d ]] && [[ -e /etc/bash_completion.d/git-prompt ]]; then
    source /etc/bash_completion.d/git-prompt
fi