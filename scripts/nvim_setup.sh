#!/bin/bash

# exit script if anything fails
set -e

# load utils
source "utils.sh"

stmsg "Setting up NeoVim ..."

pmsg "Checking that NeoVim is installed ..."
[ ! -f "$(command -v nvim)" ] && errmsg "Please install NeoVim and run the script again." && exit
pmsg "Cheking that git is installed ..."
[ ! -f "$(command -v git)" ] && errmsg "Please install git and run the script again." && exit

echo -e 'Checking if ~/.config/nvim exists ...'
if [ -d "/home/$USER/.config/nvim" ] ; then
    errmsg "Found ~/.config/nvim already, please remove (delete the directory!) any existing configuration!"
    exit 1
fi

pmsg "symlinking neovim-config dir with ~/.config/nvim"
ln -sv /home/$USER/neovim-config /home/$USER/.config/nvim

smsg "Done setting up NeoVim!"
