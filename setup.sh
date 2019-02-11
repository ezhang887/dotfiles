#!/bin/bash

LOG_FILE=./dotfiles_setup.txt

install_apt () {
    sudo apt-get -y install $1
    if type -p $1 > /dev/null; then
        echo "[setup.sh] $1 not installed!" >> $LOG_FILE
    else
        echo "[setup.sh] $1 succesfully installed" >> $LOG_FILE
    fi
}

sudo apt-get update && sudo apt-get full-upgrade
install_apt "vim"
install_apt "git"
install_apt "curl"
install_apt "git"
install_apt "build-essential"
