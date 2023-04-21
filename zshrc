autoload -Uz vcs_info
precmd() {
    vcs_info
}

zstyle ':vcs_info:git*' formats "(%b) %m%u%c"

setopt PROMPT_SUBST
PROMPT='%F{11}%~ %f${vcs_info_msg_0_}$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.nvm/versions/node/v12.16.1/bin:/Users/aj250062/Library/Python/3.9/bin:$PATH

# Load NVM
export NVM_DIR=~/.nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use

#aliases
alias c='clear'
alias pull='git pull'
alias dev='git checkout develop'
alias console='cd ~/dev/vantage/console'
alias reload='source ~/.zshrc'
alias movmp4='~/dev/scripts/movmp4.sh'
alias janus='cd ~/dev/janus'

if [ -f ~/.git-completion.zsh ]; then
  . ~/.git-completion.zsh
fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

alias air='$(go env GOPATH)/bin/air'
