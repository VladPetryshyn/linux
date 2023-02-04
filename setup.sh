#! /bin/bash

folder=$PWD

sudo pacman -S polybar neovim tmux rofi dunst kitty firefox brave thunar alacritty libreoffice mpv nitrogen base-devel

git clone https://aur.archlinux.org/yay.git /tmp/aurYay
cd /tmp/aurYay
makepkg -si 
yay -S syncthing compton-tryone-git zoxide bat lsd obsidian-appimage librewolf-bin anki-bin megasync-bin

ln -s $currentPath/alacritty /home/vlad/.config/alacritty
ln -s $currrentPath/zathura /home/vlad/.config/zathura
ln -s $currrentPath/ranger /home/vlad/.config/ranger
ln -s $currrentPath/rofi /home/vlad/.config/rofi
ln -s $currrentPath/i3 /home/vlad/.config/i3
ln -s $currrentPath/kitty /home/vlad/.config/kitty
ln -s $currrentPath/rofi /home/vlad/.config/rofi
ln -s $currrentPath/polybar /home/vlad/.config/polybar
ln -s $currrentPath/nvim /home/vlad/.config/nvim
ln -s $currrentPath/dunst /home/vlad/.config/dunst
ln -s $currrentPath/.tmux /home/vlad/.tmux
ln -s $currrentPath/.tmux.conf /home/vlad/.tmux.conf
ln -s $currentPath/.zshrc /home/vlad/.zshrc
