export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"

# VirtualEnv
WORKON_HOME=~/Codes/Envs
source /usr/local/bin/virtualenvwrapper.sh

# NPM
export PATH=~/usr/local/share/npm/bin:$PATH

# NVM
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh # This loads NVM

# for mysql
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# rbenv
# To enable shims and autocompletion add to your profile:
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
echo 'eval "$(rbenv init -)"'
