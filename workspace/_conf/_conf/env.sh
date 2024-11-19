#!/bin/zsh

#Ederson
#23/03/2019
#Criado no Fedora 29 / Arch Linux

# Owner
export USER_NAME="Ederson Santos"

# Specify default editor.
export EDITOR=nvim

#workspace
export PROJECT_HOME=~/workspace

#Config
export XDG_CONFIG_HOME="$HOME/.config"

#
export MYVIMRC="$HOME/.config/nvim/init.vim"

#bat
export BAT_THEME="Nord"

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '

#del
alias del="rm -rf"

#tar
alias untar="tar -zxvf"

### Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias fm='ranger'

# Limpar a tela
alias c='clear'

# ls com saída longa
alias ll='ls -la'

# Atalhos para o comando cd
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# mkdir mais inteligente
alias mkdir='mkdir -pv'

# ver a hora
alias now='date +"%T'

# Definir o editor padrão
alias vi=nvim
alias vim=nvim
alias nv=nvim

# Uso do vim com privilégios
alias svi='sudo nvim'

#Config
alias zshrc="nvim ~/.zshrc"
alias envrc="nvim ~/workspace/_conf/env.sh"
alias bspwmrc="nvim ~/.config/bspwm/bspwmrc"

#bat
#instalar
#Manjaro: pacman -S bat
alias cat='bat'

##PHP
#alias phpenv='~/.phpenv/bin/rbenv'

alias h="history"
alias hg="history | grep "
alias ports="netstat -nlp"

### Git
alias gac="git add . && git commit -a -m "
#alias rs="rails s"
alias py="./manage.py runserver"

### Devices -- testar
alias wf="iwgetid -r"
alias wfc="nmcli dev wifi con"
alias wfl="nmcli dev wifi "
alias wfp="sudo grep psk= /etc/NetworkManager/system-connections/*"
alias devd="nmcli dev disconnect"
alias devc="nmcli dev connect"
alias wfoff='nmcli dev disconnect wlp3s0'
alias wfon='nmcli dev connect wlp3s0'
alias screen3='xrandr --output DP-1 --right-of eDP-1 --auto'
alias screen2='xrandr --output HDMI-1 --right-of eDP-1 --auto'
alias screen1='xrandr --auto'
alias ttl='sudo sysctl net.ipv4.ip_default_ttl=65;echo "TTL successfully changed to 65"'

###
alias update="sudo dnf upgrade -y && sudo dnf autoremove -y && dnf clean all && flatpak update -y && flatpak uninstall --unused -y;"
alias backup="sh ~/.scripts/backup_dotfiles.sh >> ~/.script/backup_dotfiles.log"
alias atalhos="cat ~/.script/_atalhos"

alias install="dnfi"
alias df="df -h"

### Rofi
#alias rofi_line="rofi -show run -theme nord-oneline"
#alias rofi_menu="rofi -show drun -theme squared-nord -icon-theme "Tela-circle" -show-icons"

#alias corrigir_update="sudo pacman-mirrors -g;sudo pacman -Syy;sudo pacman-key --refresh-keys;sudo pacman-key
#sudo pacman -Scc
#sudo pacman -Syyu"

#sh /home/essantos/.script/backup_dotfiles_fedora.sh >> /home/essantos/.script/backup_dotfiles_fedora.log
