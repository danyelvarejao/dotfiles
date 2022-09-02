# Installing

## Install dependencies
### Install python3
```
sudo apt update
sudo apt install python3-pip
pip install pynvim
```

### Install nvm (Node version manager)
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

nvm install --lts
```

### Install neovim
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

## Install configs
- Clone this repository somewhere on your PC
- Run `./symlinks.sh`

# Install vim-plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
