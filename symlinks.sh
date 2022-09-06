#!/bin/bash

# OH-MY-ZSH
ln -sf $PWD/zsh/.zshrc ~/.zshrc
ln -sf $PWD/zsh/.p10k.zsh ~/.p10k.zsh

# Lazygit
ln -sf $PWD/lazygit ~/.config

# NeoVIM Configs
ln -sf $PWD/nvim ~/.config

# NeoVIM Theme
mkdir -p ~/.local/share/nvim/site/pack/themes/start
ln -sf $PWD/nvim/themes/** ~/.local/share/nvim/site/pack/themes/start
