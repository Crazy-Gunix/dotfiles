#!/bin/bash

# This is a simple setup script to download all of the dotfiles, and their dependencies.
# If you haven't noticed, this script only works on Arch Linux, and any other distrobutions based off of it(etc. Manjaro,Arco).

# YOU MUST RUN THIS AS ROOT, OR WITH THE SUDO/DOAS COMMAND.

# Setup zsh,kitty and i3.
pacman -Sy
pacman -S --noconfirm kitty i3-gaps i3status rofi zsh # Make sure they are installed!
pacman -S --noconfirm zsh-theme-powerlevel10k zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions # Zsh Themes/Plugins.
# Create .config folders if they don't exist yet.
mkdir -p "~/.config/i3/"
mkdir -p "~/.config/kitty/"
# Download config files...
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.zshrc" > "~/.zshrc"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/kitty/kitty.conf" > "~/.config/kitty/kitty.conf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/i3/config" > "~/.config/i3/config"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/i3/lock" > "~/.config/i3/lock"

# Time to get pictures.
mkdir -p "~/Pictures/Icons/"
# Download wallpaper and icons for lock screen.
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/Pictures/wallpaper.png" > "~/Pictures/wallpaper.png"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/Pictures/Icons/icon-manjaro.png" > "~/Pictures/Icons/icon-manjaro.png"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/Pictures/Icons/icon-arch.png" > "~/Pictures/Icons/icon-arch.png"

# Time for fonts!
pacman -S --noconfirm ttf-font-awesome # Install a font that adds icons.
# Download the rest of the fonts.
mkdir -p "~/.fonts/"
# These 4 fonts are for powerlevel10k.
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Bold%20Italic.ttf" > "~/.fonts/MesloLGS NF Bold Italic.ttf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Bold.ttf" > "~/.fonts/MesloLGS NF Bold.ttf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Italic.ttf" > "~/.fonts/MesloLGS NF Italic.ttf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/MesloLGS%20NF%20Regular.ttf" > "~/.fonts/MesloLGS NF Regular.ttf"
# These 4 fonts are for i3 and gtk.
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Bold.ttf" > "~/.fonts/System San Francisco Display Bold.ttf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Regular.ttf" > "~/.fonts/System San Francisco Display Regular.ttf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Thin.ttf" > "~/.fonts/System San Francisco Display Thin.ttf"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.fonts/System%20San%20Francisco%20Display%20Ultralight.ttf" > "~/.fonts/System San Francisco Display Ultralight.ttf"

# Now time to configure gtk-2.0 and gtk-3.0 to use some of these fonts.
mkdir -p "~/.config/gtk-3.0/"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.gtkrc-2.0" > "~/.gtkrc-2.0"
curl "https://github.com/Crazy-Gunix/dotfiles/raw/main/.config/gtk-3.0/settings.ini" > "~/.config/gtk-3.0/settings.ini"
