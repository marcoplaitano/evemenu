#!/bin/env bash

# File:   install.sh
# Author: Marco Plaitano  https://github.com/marcoplaitano
# Date:   01 Aug 2022
# Brief:  Download and install dmenu; make the evemenu script executable.
#
# Copyright (c) 2022 Marco Plaitano


##################################################
#                    FUNCTIONS                   #
##################################################


function safe_exit {
    [[ $(pwd) == */dmenu-5.0 ]] && popd
    [[ -f dmenu.tar.gz ]] && rm dmenu.tar.gz
    [[ -d dmenu-5.0/ ]] && rm -r --interactive=never dmenu-5.0/
    exit $1
}


# Show error message and stop the execution of the script.
function raise_error {
    [[ -n $1 ]] && error_msg="ERROR: $1" || error_msg="Error in 'install.sh'."
    echo "$error_msg"
    safe_exit 1
}


##################################################
#                    MAIN BODY                   #
##################################################


echo "########## INSTALLING DEPENDENCIES"
sudo apt install -y tar wget gcc make libx11-dev libxinerama-dev libxft-dev
[[ $? -ne 0 ]] && raise_error "Could not install needed dependencies."


echo "########## DOWNLOADING DMENU'S SOURCE CODE"
wget https://dl.suckless.org/tools/dmenu-5.0.tar.gz -O ./dmenu.tar.gz
[[ $? -ne 0 ]] && raise_error "Could not download source code from website."
tar xvfz dmenu.tar.gz > /dev/null
[[ $? -ne 0 ]] && raise_error "Could not extract source code folder."

echo "########## INSTALLING DMENU"
pushd dmenu-5.0 || raise_error "Could not find folder containing source code."
sudo make install
[[ $? -ne 0 ]] && raise_error "Could not install dmenu."

echo "########## ADDING evemenu SCRIPT TO /usr/local/bin"
sudo cp ./evemenu /usr/local/bin && sudo chmod +x /usr/local/bin/evemenu

echo "Installation succeded. Run with the command 'evemenu'."
safe_exit
