sudo pacman -S polybar neovim tmux rofi dunst kitty yay picom
yay -S viber ungoogled-chromium spotify spicetify-cli spicetify-themes syncthing

path=`pwd`

ln `$path/.zshrc` "~/.zshrc"
ln `$path/i3` "~/.i3"
ln `$path/kitty` "~/.config/kitty"
ln `$path/rofi` "~/.config/rofi"
ln `$path/polybar` "~/.config/polybar"
ln `$path/nvim` "~/.config/nvim"
ln `$path/dunst` "~/.config/dunst"
ln `$path/.tmux` "~/.tmux"
ln `$path/spicefify` "~/.config/spicetify"
