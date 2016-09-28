alias ls='ls -G'
alias ll='ls -hla'
alias be='bundle exec'
alias cof='clear;ls -lrt'

# git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\w:\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# tmux
alias tmux="TERM=screen-256color-bce tmux"

# ENV
export HISTSIZE=10000
export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'
export PGDATA=/usr/local/var/postgres
