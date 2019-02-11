#!/bin/bash

timestamp=`date '+%Y_%m_%d__%H_%M_%S'`
LOG_FILE="./dotfiles_setup_$timestamp.txt"

install_apt () {
    sudo apt-get -y install $1
    rv=$?
    if [ "$rv" = 0 ]; then
        echo "[success] [setup.sh] $1 succesfully installed" >> $LOG_FILE
    else
        echo "[error]   [setup.sh] $1 not installed!" >> $LOG_FILE
    fi
}

#basic apt-get installations
sudo apt-get update #&& sudo apt-get full-upgrade
install_apt "vim"
install_apt "git"
install_apt "curl"
install_apt "git"
install_apt "build-essential"
install_apt "chromium-browser"
install_apt "openjdk-8*"
install_apt "python-pip"
install_apt "python3-pip"
install_apt "vlc"
install_apt "valgrind"
install_apt "gdb"
