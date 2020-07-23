#!/bin/bash

echo -e "Updating vim python integration ..."
pip install --user --upgrade pynvim neovim-remote msgpack smdv

echo -e "Updating vim node integration ..."
echo -e "Command to be run: sudo npm install -g neovim"
sudo npm install -g neovim

echo -e "Upgrading vim-plug ..."
nvim +PlugUpgrade +qa

echo -e "Installing && updating plugins ..."
nvim +PlugUpdate +UpdateRemotePlugins +qa

echo -e "Cleaning unused packages ..."
# TODO figure out why this freezes..
# nvim +PlugClean! +qa

echo -e "Done updating!"
