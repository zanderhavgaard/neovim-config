#!/bin/bash
set -e

echo -e 'Make sure that NeoVim and git is installed ... \n'

nvim --version | grep 'NVIM v'
git --version

echo -e 'create ~/.config/nvim dir ...'
mkdir ~/.config/nvim

echo -e 'symlink init.vim'
ln -sv ~/neovim-config/init.vim ~/.config/nvim/init.vim

echo -e '\nCloning Vundle Package Manager ...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo -e '\nInstalling plugins using vundle ... (Press enter if primpted)'
nvim +PluginInstall +UpdateRemotePlugins +qa

echo -e '\nDone setting up NeoVim.'


