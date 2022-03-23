#!/bin/sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./.zshrc ~/.zshrc
mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim/
mkdir ~/alacritty
cp ./alacritty.yml ~/alacritty/alacritty.yml
