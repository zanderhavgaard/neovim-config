#!/bin/bash

echo -e "Updating vim python integration ..."
pip install --user --upgrade pynvim msgpack smdv

echo -e "Upgrading vim-plug ..."
nvim +PlugUpgrade +qa

echo -e "Installing && updating plugins ..."
nvim +PlugUpdate +UpdateRemotePlugins +qa

echo -e "Cleaning unused packages ..."
nvim +PlugClean! +qa

echo -e "Done updating!"
