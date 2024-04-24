! /bin/bash
echo "Installing dependencies with pacman"
sudo pacman -S neovim tmux dunst firefox thunar mpv feh base-devel picom

echo "Installing yay"
git clone https://aur.archlinux.org/yay.git /tmp/aurYay
cd /tmp/aurYay
makepkg -si 

echo "Installing dependencies with yay"
yay -S syncthing zoxide bat lsd obsidian-appimage librewolf-bin anki-bin warpd

echo "Installing suckless software"
echo "Installing dwm"
cd $PWD/dwm; sudo make clean install

echo "Installing dmenu"
cd $PWD/dmenu; sudo make clean install

echo "Installing slstatus"
cd $PWD/slstatus; sudo make clean install

echo "creating symlinks"
ln -s $PWD/tmux /home/$USER/.config/tmux
ln -s $PWD/zathura /home/$USER/.config/zathura
ln -s $PWD/nvim /home/$USER/.config/nvim
ln -s $PWD/.zshrc /home/$USER/

echo "All done!"
