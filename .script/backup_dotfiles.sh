#!/bin/bash

dthr="$(date '+%d/%m/%Y %H:%M')"

DESTINO=~/workspace/dotfiles/
DESTINO_CONF=~/workspace/dotfiles/.config/
DESTINO_CONF2=~/workspace/dotfiles/workspace/_conf/

Backup="Backup "$dthr

mkdir -p $DESTINO
mkdir -p $DESTINO_CONF
mkdir -p $DESTINO_CONF2

rsync -ravz ~/.zshrc $DESTINO
rsync -ravz ~/.script $DESTINO
rsync -ravz ~/.vimrc $DESTINO
rsync -ravz ~/.config/autostart $DESTINO_CONF
rsync -ravz ~/.config/bspwm $DESTINO_CONF
rsync -ravz ~/.config/kitty $DESTINO_CONF
rsync -ravz --exclude plugged ~/.config/nvim $DESTINO_CONF
rsync -ravz ~/.config/picom $DESTINO_CONF
rsync -ravz ~/.config/polybar $DESTINO_CONF
rsync -ravz ~/.config/sxhkd $DESTINO_CONF
rsync -ravz ~/workspace/_conf $DESTINO_CONF2

cd $DESTINO
git add .
git commit -m "$Backup"
git push

####