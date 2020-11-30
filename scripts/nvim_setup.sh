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

echo -e 'create ~/.config/nvim dir ...'
if [ -d "/home/$USER/.config/nvim" ] ; then
    errmsg "Found ~/.config/nvim already, please remove (delete the directory!) any existing configuration!"
    exit
else
    pmsg "Creating ~/.config/nvim directory ..."
    mkdir -pv /home/$USER/.config/nvim
fi

pmsg "Creating symlink for init.vim ..."
ln -sv /home/$USER/neovim-config/init.vim /home/$USER/.config/nvim/init.vim

pmsg "Creating symlink for ginit.vim"
ln -sv /home/$USER/neovim-config/ginit.vim /home/$USER/.config/nvim/ginit.vim

pmsg "Getting vim-plug package manager ..."
curl -fLo /home/$USER/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pmsg "Installing plugins uisng vim-plug ... (Press enter if prompted)"
nvim +PlugUpdate +UpdateRemotePlugins +qa

smsg "Done configuring NeoVim!"
