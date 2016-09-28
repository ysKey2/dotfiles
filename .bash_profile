export PATH=/usr/local:$PATH
export RBENV_ROOT=/usr/local/var/rbenv

eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.bashrc
