# Instalação do WSL

## Instalando a distro do WSL via PowerShell

```ssh
wsl --install -d Ubuntu
```

## Gerando chave ssh (github)

```ssh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

```zsh
ssh-add ~/.ssh/id_ed25519
```

## Adicionando chave ao github
```ssh
cat ~/.ssh/id_ed25519.pub
```

- Copie a chave que aparecer no seu terminal
- Acesse o link: [https://github.com/settings/keys)](https://github.com/settings/keys)
- Clique em new SSH key
- Coloque um título para sua chave, exemplo: Danyel-Ubuntu-WSL
- Cole a chave no campo Key
- Clique em Add SSH Key

```ssh
git config --global user.name "<YOUR_USERNAME>"
```

```ssh
git config --global user.email "<YOUR_EMAIL>"
```

## Instalando terminal ZSH

```ssh
sudo apt install zsh -y
```

## Instalando OH-MY-ZSH

```ssh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Instalando tema powerlevel10k (OH-MY-ZSH)

```ssh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Instalando plugin zsh-autosuggestions (OH-MY-ZSH)

```ssh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Instalando plugin zsh-syntax-highlighting

```ssh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Instalando lazygit

```ssh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
```

```ssh
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
```

```ssh
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
```

```ssh
rm -rf lazygit.tar.gz
```

## Instalando NeoVIM

```ssh
sudo apt update
```

```ssh
sudo apt install python3-pip
```

```ssh
pip install pynvim
```

```ssh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

- Reopen terminal

```ssh
nvm install --lts
```

```ssh
sudo add-apt-repository ppa:neovim-ppa/stable
```

```ssh
sudo apt-get update
```

```ssh
sudo apt-get install neovim
```

- Instalando LSP Servers

```
npm i -g bash-language-server
pip install pyright
sudo apt-get install clangd-12
npm i -g vscode-langservers-extracted
npm install -g typescript typescript-language-server
```

- Instalando Plugins Dependencies
```
sudo apt install fd-find
sudo apt-get install ripgrep
```

## Instalando Tmux
```
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Alterando as configurações do ZSH e outros

```ssh
git clone https://github.com/danyelvarejao/dotfiles.git .dotfiles
```

```ssh
rm -rf .zshrc
```

```ssh
mkdir .config
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
