# Instalação do WSL

## Instalando a distro do WSL via PowerShell
```
wsl --install -d Ubuntu
```

## Gerando chave ssh (github)
```
ssh-keygen -t ed25519 -C "<YOUR_EMAIL>"
```

## Adicionando chave ao github
```
cd ~/.ssh
```
```
cat id_ed*.pub
```

- Copie a chave que aparecer no seu terminal
- Acesse o link: https://github.com/settings/keys
- Clique em new SSH key
- Coloque um título para sua chave, exemplo: Danyel-Ubuntu-WSL
- Cole a chave no campo Key
- Clique em Add SSH Key
```
git config --global user.name "<YOUR_USERNAME>"
```
```
git config --global user.email "<YOUR_EMAIL>"
```

## Instalando terminal ZSH
```
sudo apt install zsh -y
```

## Instalando OH-MY-ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Instalando tema powerlevel10k (OH-MY-ZSH)
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Instalando plugin zsh-autosuggestions (OH-MY-ZSH)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Instalando plugin zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Instalando lazygit
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
```
```
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
```
```
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
```
```
rm -rf lazygit.tar.gz
```

## Instalando NeoVIM
```
sudo apt update
```
```
sudo apt install python3-pip
```
```
pip install pynvim
```
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
- Reopen terminal

```
nvm install --lts
```
```
sudo add-apt-repository ppa:neovim-ppa/stable
```
```
sudo apt-get update
```
```
sudo apt-get install neovim
```
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Alterando as configurações do ZSH e outros
```
git clone https://github.com/danyelvarejao/dotfiles.git .dotfiles
```
```
rm -rf .zshrc
```
```
mkdir .config
```
```
cd ~/.dotfiles
```
```
./symlinks.sh
```

## Instalação dos plugins
```
nvim +PlugInstall
```
