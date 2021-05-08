#!/bin/sh
sh ~/.dotfiles/polybar/grayblocks/scripts/colors-dark.sh --amber
sed -i 's/colorscheme ayu/colorscheme material/g' ~/.dotfiles/nvim/styling.vim
sed -i 's/sobole/bira/g' ~/.dotfiles/.zshrc
sed -i 's/white.conf/oceanic.conf/g' ~/.dotfiles/kitty/kitty.conf

redshift -O 3700
