#!/bin/bash

sed -i 's/oceanic/white/g' ~/.config/kitty/kitty.conf
sed -i 's/dark/light/' ~/.dotfiles/nvim/styling.vim
redshift -x
