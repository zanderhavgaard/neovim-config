#!/bin/bash

source utils.sh

stmsg "Updating vim python integration ..."
pip install --user --upgrade pynvim neovim-remote msgpack smdv

pmsg "Upgrading vim-plug ..."
nvim +PlugUpgrade +qa

pmsg "Installing && updating plugins ..."
nvim +PlugUpdate +UpdateRemotePlugins +qa

pmsg "Cleaning unused packages ..."
nvim +PlugClean! +qa

smsg "Done updating!"
