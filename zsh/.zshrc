if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LOCAL="$HOME/.local/bin"
export RUST="$HOME/.cargo/bin"
export PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export DART_PUB="$HOME/.pub-cache/bin"
export BUN_INSTALL="$HOME/.bun/bin"
export ANDROID_HOME="$HOME/Others/android"
export FLUTTER="$HOME/Others/flutter/bin"
export SASS="$HOME/Others/dart-sass"
export GOLANG="$HOME/Others/go/bin"
export LUA_LANGUAGE_SERVER="$HOME/Others/lua-language-server/bin"

export PATH="$PATH:$LOCAL:$FLUTTER:$RUST:$ANDROID_HOME:$PLATFORM_TOOLS:$DART_PUB:$SASS:$BUN_INSTALL:$GOLANG:$LUA_LANGUAGE_SERVER"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# My Custom Configs
alias freela="cd ~/Freelancers"
alias dev="cd ~/Development"
alias prod="cd ~/Production"
alias proj="cd ~/Projects"
alias work="cd ~/Workspace"

alias lg="lazygit"
alias v="nvim"
alias vim='nvim'
alias vimconfig="nvim ~/.dotfiles/nvim"
alias dotfiles="cd ~/.dotfiles"

export VISUAL='nvim'
export EDITOR=$VISUAL

function ms() {
  date +%s
}

# bun completions
[ -s "/home/danyel/.bun/_bun" ] && source "/home/danyel/.bun/_bun"

# bun completions
[ -s "/home/danyel/.bun/bin/_bun" ] && source "/home/danyel/.bun/bin/_bun"
