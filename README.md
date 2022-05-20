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

