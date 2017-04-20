#!/bin/bash

# This script installs/updates my configuration scripts
#
#

ln -s ~/.dotfiles/config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/config/fish/config.fish.after ~/.config/fish/config.fish.after

ln -s ~/.dotfiles/fonts ~/.fonts
ln -s ~/.dotfiles/fonts.conf.d ~/.fonts.conf.d
sudo fc-cache -vf ~/.fonts

ln -s ~/.dotfiles/dir_colors ~/.dir_colors

mkdir -p ~/.local/share/nvim/site/autoload/
ln -s ~/.dotfiles/local/share/nvim/site/autoload/plug.vim ~/.local/share/nvim/site/autoload/plug.vim

mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim

ln -s ~/.dotfiles/spacemacs ~/.spacemacs

