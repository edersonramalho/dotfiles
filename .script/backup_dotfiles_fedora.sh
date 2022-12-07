#!/bin/bash

dthr="$(date '+%d/%m/%Y %H:%M')"

DESTINO=~/workspace/dotfiles_fedora/
DESTINO_CONF=~/workspace/dotfiles_fedora/.config/
DESTINO_CONF2=~/workspace/dotfiles_fedora/workspace/_conf/
DESTINO_GRUB=~/workspace/dotfiles_fedora/grub/

Backup="Backup "$dthr

mkdir -p $DESTINO
mkdir -p $DESTINO_CONF
mkdir -p $DESTINO_CONF2
mkdir -p $DESTINO_GRUB

rsync -ravz ~/.zshrc $DESTINO
rsync -ravz ~/.script $DESTINO
rsync -ravz ~/.vimrc $DESTINO
rsync -ravz ~/.gitconfig $DESTINO
rsync -ravz ~/.config/autostart $DESTINO_CONF
#rsync -ravz ~/.config/bspwm $DESTINO_CONF
rsync -ravz ~/.config/htop $DESTINO_CONF
rsync -ravz ~/.config/tilix $DESTINO_CONF
rsync -ravz ~/.config/neofetch $DESTINO_CONF
rsync -ravz --exclude plugged ~/.config/nvim $DESTINO_CONF
#rsync -ravz ~/.config/picom $DESTINO_CONF
#rsync -ravz ~/.config/polybar $DESTINO_CONF
rsync -ravz ~/.config/ranger $DESTINO_CONF
#rsync -ravz ~/.config/rofi $DESTINO_CONF
#rsync -ravz ~/.config/sxhkd $DESTINO_CONF
#rsync -ravz ~/.config/betterlockscreenrc $DESTINO_CONF
rsync -ravz ~/workspace/_conf $DESTINO_CONF2
rsync -ravz /boot/grub/grub* $DESTINO_GRUB
rsync -ravz /etc/default $DESTINO_GRUB

dnf repolist >> $DESTINO/dnf_repolist.txt
dnf list installed >> $DESTINO/dnf_instalados.txt
neofetch >> $DESTINO/fedora.txt

cd $DESTINO
git add .
git commit -m "$Backup"
git push

####
