#!/bin/bash

cd

sudo pacman -Syyu --noconfirm

yay --answerclean a --answerdiff n

flatpak update

cd ~/.gitclones/linux-tkg
git pull
makepkg -si
