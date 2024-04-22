#!/bin/bash

# Remove OH-MY-ZSH
rm -rf ~/.zshrc
rm -rf ~/.p10k.zsh

# Remove Lazygit
rm -rf ~/.config/lazygit

# Remove NeoVIM Configs and Caches
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
rm -rf $PWD/nvim/plugin
rm -rf $PWD/nvim/undos

# Remove LunarVim Configs
rm -rf ~/.config/lvim

# Remove IdeaVIM Configs
rm -rf ~/.ideavimrc
rm -rf ~/.vimrc

# Remove Tmux
rm -rf ~/.tmux.conf
rm -rf ~/.tmux.conf.local

# Remove Alacritty
rm -rf ~/.config/alacritty/alacritty.yml
