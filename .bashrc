#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export ANDROID_HOME="/home/ntrp/.android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/current:$NPM_PACKAGES/bin:$PATH"

export HISTCONTROL=ignoredups

shopt -s autocd
shopt -s checkwinsize

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'

PS1='[\u@\h \W]\$ '

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

###-tns-completion-start-###
if [ -f /home/ntrp/.tnsrc ]; then 
    source /home/ntrp/.tnsrc 
fi
###-tns-completion-end-###

export NVM_DIR="/home/ntrp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
