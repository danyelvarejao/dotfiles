if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
export PATH="$HOME/.pub-cache/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/Others/flutter/bin:$PATH"
export PATH="$HOME/Others/dart-sass:$PATH"
export PATH="$HOME/Others/go/bin:$PATH"
export PATH="$HOME/Others/lua-language-server/bin:$PATH"
export PATH="/usr/bin/firefox:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

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
alias sail="./vendor/bin/sail"
alias pnpx='pnpm dlx'

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
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
export EDITOR="code --wait"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/openssl-1.1.1q/"

# Golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
# pnpm
export PNPM_HOME="/home/danyel/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end