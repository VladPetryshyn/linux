#!/bin/sh
sh ~/.dotfiles/polybar/grayblocks/scripts/colors-light.sh --orange
sed -i 's/colorscheme material/colorscheme ayu/g' ~/.dotfiles/nvim/styling.vim
sed -i 's/bira/sobole/g' ~/.dotfiles/.zshrc
sed -i 's/oceanic.conf/white.conf/g' ~/.dotfiles/kitty/kitty.conf
redshift -x
