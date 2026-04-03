## Gerando chave ssh (github)

```ssh
ssh-keygen -t ed25519 -C "your_email@example.com"
more ~/.ssh/id_ed25519.pub
```

- Copie a chave que aparecer no seu terminal
- Acesse o link: [https://github.com/settings/keys)](https://github.com/settings/keys)
- Clique em new SSH key
- Coloque um título para sua chave, exemplo: Ubuntu 24.04
- Cole a chave no campo Key
- Clique em Add SSH Key

```ssh
git config --global user.name "<YOUR_USERNAME>"
git config --global user.email "<YOUR_EMAIL>"
```

## Instalando terminal ZSH com OH-MY-ZSH

```ssh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Instalando lazygit

```ssh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
LAZYGIT_ARCH=$(uname -m | sed -e 's/aarch64/arm64/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_${LAZYGIT_ARCH}.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
rm -rf lazygit lazygit.tar.gz
```

## Instalando Tmux
```
sudo apt install tmux
```

## Instalando configurações

```ssh
cd ~/
git clone git@github.com:danyelvarejao/dotfiles.git .dotfiles
```

```ssh
rm -rf .zshrc
```

```ssh
cd ~/.dotfiles
```

```ssh
./install.sh
```

## Removendo configurações
```ssh
./uninstall.sh
```
