#!/bin/bash

echo -e "\nUpdating vim python integration ...\n"
pip install --user --upgrade pynvim msgpack

echo -e "\nUpgrading vim-plug ...\n"
nvim +PlugUpgrade +qa

echo -e "\nInstalling // updating plugins ...\n"
nvim +PlugUpdate +UpdateRemotePlugins +qa

echo -e "\nCleaning unused packages ...\n"
nvim +PlugClean! +qa

echo -e "\nDone updating."
