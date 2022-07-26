#!/bin/bash

set -e

source utils.sh

echo
stmsg "==============="
stmsg "Updating NeoVim"
stmsg "==============="
echo

pmsg "Updating npm packages ..."
sudo npm install -g --upgrade lua-fmt@latest
smsg "Done updating npm packages."

pmsg "Updating markdown live preview ..."
pip install --user --upgrade --use-deprecated=legacy-resolver markdown_live_preview
smsg "Done updating markdown live preview."

pmsg "Updating python dependencies ..."
pip install --user --upgrade --use-deprecated=legacy-resolver pynvim neovim-remote msgpack smdv
smsg "Done updating python dependencies."

pmsg "Updating misc python packages ..."
pip install --user --upgrade --use-deprecated=legacy-resolver yamlfix
smsg "Done updating python dependencies."

pmsg "Updating python linters/stylers/utils ..."
pip install --user --upgrade --use-deprecated=legacy-resolver pylint flake8 autopep8 black jedi
smsg "Done updating python stuff."

pmsg "Running packer sync ..."
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
echo
smsg "Done running packer."

# pmsg "Running coq and chadtree dependency updates ..."
# nvim --headless -c 'COQdeps'
# nvim --headless +CHADdeps 
# smsg "Done running coq and chadtree dependency updates."

pmsg "Update remote plugins ..."
nvim --headless +UpdateRemotePlugins +qa
echo
smsg "Done updating remote plugins."

smsg "Done updating!"
