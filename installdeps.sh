#!/bin/sh

if [ -x ~/.local/share/nvim/site/autoload/plug.vim ]; then 
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
sudo pacman -Sy npm
