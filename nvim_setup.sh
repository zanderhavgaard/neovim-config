#!/bin/bash
set -e

echo -e 'Make sure that NeoVim and git is installed ... \n'

nvim --version | grep 'NVIM v'
git --version

echo -e 'create ~/.config/nvim dir ...'
mkdir /home/$USER/.config/nvim

echo -e 'symlink init.vim'
ln -sv /home/$USER/neovim-config/init.vim /home/$USER/.config/nvim/init.vim

echo -e 'symlink ginit.vim'
ln -sv /home/$USER/neovim-config/ginit.vim /home/$USER/.config/nvim/ginit.vim

echo -e '\nGetting vim-plug package manager ...'
curl -fLo /home/$USER/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e '\nInstalling plugins uisng vim-plug ... (Press enter if prompted)'
nvim +PlugUpdate +UpdateRemotePlugins +qa

echo -e '\nDone setting up NeoVim.'
