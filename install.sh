#!/bin/bash

# Setup zsh,kitty and i3

sudo pacman -Sy

sudo pacman -S --noconfirm kitty i3-gaps i3status rofi zsh # Make sure they are installed!

sudo pacman -S --noconfirm zsh-theme-powerlevel10k zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions # Zsh Themes/Plugins

# Create .config folders if they don't exist yet.
mkdir -p ~/.config/i3/
mkdir -p ~/.config/kitty/

# Config files
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.zshrc > ~/.zshrc
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/kitty/kitty.conf > ~/.config/kitty/kitty.conf
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/i3/config > ~/.config/i3/config
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/i3/lock ~/.config/i3/lock

# Create ~/Pictures folder
mkdir -p ~/Pictures/Icons/

# Download wallpaper and icons for lock screen
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/Pictures/wallpaper.png > ~/Pictures/wallpaper.png
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/Pictures/Icons/icon-manjaro.png ~/Pictures/Icons/icon-manjaro.png
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/Pictures/Icons/icon-arch.png ~/Pictures/Icons/icon-arch.png

# Time for fonts!

sudo pacman -S --noconfirm ttf-font-awesome # install a font that adds icons

# download the rest!
mkdir -p ~/.fonts/

# These 4 fonts are for powerlevel10k
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Bold%20Italic.ttf > "~/.fonts/MesloLGS NF Bold Italic.ttf"
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Bold.ttf > "~/.fonts/MesloLGS NF Bold.ttf"
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Italic.ttf > "~/.fonts/MesloLGS NF Italic.ttf"
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Regular.ttf > "~/.fonts/MesloLGS NF Regular.ttf"

# These 4 fonts are for i3 and gtk
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Bold.ttf > "~/.fonts/System San Francisco Display Bold.ttf"
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Regular.ttf > "~/.fonts/System San Francisco Display Regular.ttf"
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Thin.ttf > "~/.fonts/System San Francisco Display Thin.ttf"
curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Ultralight.ttf > "~/.fonts/System San Francisco Display Ultralight.ttf"
