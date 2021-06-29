#!/bin/bash

set -e

source utils.sh

echo
stmsg "==============="
stmsg "Updating NeoVim"
stmsg "==============="
echo

pmsg "Updating npm packages ..."
sudo npm install -g --upgrade instant-markdown-d@latest lua-fmt@latest
smsg "Done updating npm packages."

pmsg "Updating python dependencies ..."
pip install --user --upgrade --use-deprecated=legacy-resolver pynvim neovim-remote msgpack smdv
smsg "Done updating python dependencies."

pmsg "Updating misc python packages ..."
pip install --user --upgrade --use-deprecated=legacy-resolver yamlfix
smsg "Done updating python dependencies."

pmsg "Updating python linters/stylers/utils ..."
pip install --user --upgrade --use-deprecated=legacy-resolver pylint flake8 autopep8 black jedi
smsg "Done updating python stuff."

pmsg "Installing/Updating/Cleaning packer plugings ..."
# TODO figure out how to run packer headless
nvim +PackerCompile +PackerClean +PackerInstall +PackerUpdate
echo
smsg "Done running packer."

pmsg "Update remote plugins ..."
nvim --headless +UpdateRemotePlugins +qa
echo
smsg "Done updating remote plugins."

smsg "Done updating!"
