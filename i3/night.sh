#!/bin/bash

sed -i 's/white/oceanic/g' ~/.config/kitty/kitty.conf
sed -i 's/light/dark/' ~/.dotfiles/nvim/styling.vim
redshift -O 3500
