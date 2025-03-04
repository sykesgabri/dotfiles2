# Gabe's new dotfiles

This repo contains my most recent set of dotfiles, specifically for i3. My previous dotfiles can be found [here](https://github.com/sykesgabri/dotfiles).

I use these dotfiles on Arch, and as such will be referencing pacman commands, the AUR, and how packages are named in Arch's repos specifically. If you're wanting to set my dotfiles up on something that isn't Arch based, keep this in mind.

## Stuff you'll need, and my preferred programs:

### Stuff you can get from pacman:
- Git
- Stow
- wget
- unzip
- i3 Window Manager
- i3lock
- arandr
- Rofi
- Polybar
- Nitrogen
- Alacritty
- zsh
- zsh-syntax-highlighting
- Starship
- Fastfetch
- Noto Fonts CJK
- lxsession
- nwg-look
- papirus-icon-theme
- Picom
- playerctl
- python-distutils-extra
- Neovim
- Flameshot
- Thunar
- Flatpak

Here's a massive pacman command to install all this stuff:
```
sudo pacman -S --needed git stow wget unzip i3-wm i3lock arandr rofi polybar nitrogen alacritty zsh zsh-syntax-highlighting starship fastfetch noto-fonts-cjk lxsession nwg-look papirus-icon-theme picom playerctl python-distutils-extra neovim flameshot thunar flatpak
```

### Stuff you can't get from pacman:

#### Yay:
```
cd ~
mkdir --parent .gitclones/AUR && cd .gitclones/AUR
git clone https://aur.archlinux.org/yay.git && cd yay
makepkg -si
```

#### zscroll:
```
yay -S zscroll-git
```

#### polybar-spotify:
```
cd ~
mkdir .gitclones && cd .gitclones
git clone https://github.com/PrayagS/polybar-spotify
```
NOTE: May require some tweaking depending on your setup. For example, in my case, I have to modify the playerctl commands in the bash scripts to look for "chromium" because I use Tidal instead of Spotify.

#### HurmitMono Nerd Font:
```
mkdir --parent ~/Downloads/Hurmit
cd ~/Downloads/Hurmit
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hermit.zip
unzip Hermit.zip
rm -rf Hermit.zip
cd ..
sudo mv Hermit/ /usr/share/fonts
```

#### Streamcontroller:
```
flatpak install flathub com.core447.StreamController
```

#### Catppuccin Mocha Mauve GTK Theme:
```
mkdir ~/.themes
cd ~/.themes
wget https://github.com/catppuccin/gtk/releases/download/v1.0.3/catppuccin-mocha-mauve-standard+default.zip
unzip catppuccin-mocha-mauve-standard+default.zip
rm -rf catppuccin-mocha-mauve-standard+default.zip
```
NOTE: Set theme with nwg-look.

#### Catppuccin Mocha Mauve Papirus Folders:
```
cd ~
mkdir --parent .gitclones/catppuccin && cd .gitclones/catppuccin
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus
curl -LO https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-folders/master/papirus-folders && chmod +x ./papirus-folders
./papirus-folders -C cat-mocha-mauve --theme Papirus-Dark
```
NOTE: Set icon theme with nwg-look.

#### Catppuccin Mocha Mauve Cursors:
```
yay -S catppuccin-cursors-mocha
```
NOTE: Set cursor theme with nwg-look.

## Installation:

1. Install the various things listed above.
2. Clone this repo into your home directory, and cd into it:
```
cd ~
git clone https://github.com/sykesgabri/dotfiles2
mv dotfiles2 .dotfiles
cd .dotfiles
```
3. Use Stow to create symlinks from the repo to your home directory:
```
stow .
```
NOTE: If you get a `Stowing . would cause conflicts` error, it is because there is a file in your home directory with the same name and location as a file in the dotfiles. Simply `rm -rf` the directories listed as conflicting, making sure you remove the ones in your home directory, not the dotfiles.

