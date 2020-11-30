#!/bin/bash

source utils.sh

echo
stmsg "==============="
stmsg "Updating NeoVim"
stmsg "==============="
echo

pmsg "Updating python dependencies ..."
pip install --user --upgrade pynvim neovim-remote msgpack smdv
pmsg "Done updating python dependencies."

pmsg "Upgrading vim-plug ..."
nvim --headless +PlugUpgrade +qa
echo
pmsg "Done upgrading vim-plug."

pmsg "Installing && updating plugins ..."
nvim --headless +PlugUpdate +UpdateRemotePlugins +qa
echo
pmsg "Done installing/updading plugins."

pmsg "Cleaning unused packages ..."
nvim --headless +PlugClean! +qa
echo
pmsg "Done cleaning packages."

smsg "Done updating!"
