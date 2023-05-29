#!/bin/bash

is_osx=false

if [[ $OSTYPE == 'darwin'* ]]; then
    is_osx=true
fi

if [ $is_osx == true ]; then
    brew update
    brew install iterm2 fish bat tldr git curl wget httpie tree htop jq jo
    brew install --cask flux
fi

WORKING_DIR=$(pwd)

ln -sf $WORKING_DIR/vim/.vimrc ~/.vimrc
ln -sf $WORKING_DIR/fish/aliases.fish  ~/.config/fish/aliases.fish
ln -sf $WORKING_DIR/fish/config.fish  ~/.config/fish/config.fish
ln -sf $WORKING_DIR/tmux/.tmux.conf  ~/.tmux.conf
ln -sf $WORKING_DIR/.psqlrc  ~/.psqlrc

git config --global user.name "Joni Nevalainen"
git config --global user.email "joninevalainen@gmail.com"
