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

pmsg "Creating symlink for init.lua ..."
ln -sv /home/$USER/neovim-config/init.lua /home/$USER/.config/nvim/init.lua

pmsg "Creating symlink for lua directory ..."
ln -sv /home/$USER/neovim-config/lua /home/$USER/.config/nvim/lua

pmsg "Creating symlink for vimscript directory ..."
ln -sv /home/$USER/neovim-config/vimscript /home/$USER/.config/nvim/vimscript

pmsg "Installing packer package manager ..."
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

pmsg "Installing plugins using packer ... "
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

smsg "Done configuring NeoVim!"
