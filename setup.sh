#!/bin/bash

timestamp=`date '+%Y_%m_%d__%H_%M_%S'`
LOG_FILE="./dotfiles_setup_$timestamp.txt"

# argument: package name
install_apt () {
    echo "Starting $1 installation........"
    echo "[$1]" >> $LOG_FILE
    sudo apt-get -y install $1 &> /dev/null
    rv=$?
    if [ "$rv" = 0 ]; then
        echo "[success] [setup.sh] $1 succesfully installed" >> $LOG_FILE
    else
        echo "[error]   [setup.sh] $1 not installed!" >> $LOG_FILE
    fi
    echo "Finished $1 installation........"
}

# argument: URL of .deb file to download and install
install_deb () {
    path="./tmp.deb"
    echo "Starting $1 installation........"
    echo "[$1]" >> $LOG_FILE
    wget -O $path "$1" &> /dev/null
    rv=$?
    if [ "$rv" = 0 ]; then
        echo "[success] [setup.sh] hyper succesfully downloaded" >> $LOG_FILE
    else
        echo "[error]   [setup.sh] hyper not downloaded!" >> $LOG_FILE
    fi
    sudo dpkg -i $path &> /dev/null
    sudo apt-get install -f &> /dev/null
    rv=$?
    if [ "$rv" = 0 ]; then
        echo "[success] [setup.sh] hyper succesfully installed" >> $LOG_FILE
    else
        echo "[error]   [setup.sh] hyper not installed!" >> $LOG_FILE
    fi
    rm $path
    echo "Finished $1 installation........"
}

sudo apt-get update &> /dev/null
#sudo apt-get update && sudo apt-get full-upgrade
install_apt "vim"
install_apt "git"
install_apt "curl"
install_apt "build-essential"
install_apt "chromium-browser"
install_apt "openjdk-8*"
install_apt "python-pip"
install_apt "python3-pip"
install_apt "vlc"
install_apt "valgrind"
install_apt "gdb"

install_deb "https://releases.hyper.is/download/deb"
