#!/bin/bash

# OH-MY-ZSH
ln -sf $PWD/zsh/.zshrc ~/.zshrc
ln -sf $PWD/zsh/.p10k.zsh ~/.p10k.zsh

# Lazygit
ln -sf $PWD/lazygit ~/.config/lazygit

# NeoVIM Configs
ln -sf $PWD/nvim ~/.config/nvim

# IdeaVIM Configs
ln -sf $PWD/.ideavimrc ~/.ideavimrc
ln -sf $PWD/.vimrc ~/.vimrc

# Tmux
ln -s -f $PWD/tmux/.tmux.conf ~/.tmux.conf
cp $PWD/tmux/.tmux.conf.local ~/.tmux.conf.local

