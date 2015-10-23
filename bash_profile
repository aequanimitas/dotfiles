if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
source /usr/local/opt/nvm/nvm.sh
export NVM_DIR=~/.nvm

source ~/.alias

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Add GHC 7.8.2 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="~/Applications/ghc-7.8.2.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi
export PYTHONSTARTUP=~/.pythonrc
