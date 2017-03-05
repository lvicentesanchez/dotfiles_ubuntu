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
