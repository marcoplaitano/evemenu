#!/bin/env bash

# File:   install.sh
# Author: Marco Plaitano
# Github: https://github.com/marcoplaitano/evemenu
# Date:   01 Aug 2022
# Brief:  Download and install dmenu; make the evemenu script executable.
#
# Copyright (c) 2023 Marco Plaitano


_die() {
    [[ -n $1 ]] && error_msg="ERROR: $1" || error_msg="Error in 'install.sh'."
    echo "$error_msg"
    exit 1
}


echo "########## INSTALLING DMENU"
dmenu_repo="https://github.com/marcoplaitano/dmenu"
dmenu_dir="/tmp/dmenu-dir"
if git clone "$dmenu_repo" "$dmenu_dir" ; then
    pushd dmenu &>/dev/null
    ./install.sh || _die "Could not install dmenu."
    popd &>/dev/null
    [[ -d "$dmenu_dir" ]] && rm -rf "$dmenu_dir"
else
    _die "Could not download dmenu from $dmenu_repo'."
fi

echo "########## INSTALLING EVEMENU"
chmod +x ./evemenu
mkdir -p "$HOME/.local/bin"
cp ./evemenu "$HOME/.local/bin"

if [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
    echo "evemenu is installed."
else
    echo "WARNING: Add \$HOME/.local/bin to \$PATH to execute evemenu."
fi
