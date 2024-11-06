#!/bin/bash

is_osx=false
is_linux=false

if [[ $OSTYPE == 'darwin'* ]]; then
    is_osx=true
fi

if [[ $OSTYPE == 'linux'* ]]; then
    is_linux=true
fi

if [ $is_osx == true ]; then
    brew update
    brew install iterm2 fish bat tldr git curl wget httpie tree htop jq jo fd fzf
    brew install --cask flux
fi

# todo: check if ubuntu
#
#sudo add-apt-repository ppa:git-core/ppa
#sudo add-apt-repository ppa:fish-shell/release-3
#

if [ $is_linux == true ]; then
    sudo apt update
    sudo apt install -y fish bat tldr git curl wget httpie tree htop jq jo
fi

if [[ $SHELL != *'/fish' ]]; then
    echo "Remember to set default shell to fish: https://fishshell.com/docs/current/index.html#default-shell"
fi

WORKING_DIR=$(pwd)

mkdir -p ~/.config/fish

ln -sf $WORKING_DIR/vim/.vimrc ~/.vimrc
ln -sf $WORKING_DIR/fish/aliases.fish  ~/.config/fish/aliases.fish
ln -sf $WORKING_DIR/fish/config.fish  ~/.config/fish/config.fish
ln -sf $WORKING_DIR/fish/functions  ~/.config/fish/functions
if test -f "$WORKING_DIR/fish/config.local.fish"; then
    ln -sf $WORKING_DIR/fish/config.local.fish  ~/.config/fish/config.local.fish
fi
ln -sf $WORKING_DIR/tmux/.tmux.conf  ~/.tmux.conf
ln -sf $WORKING_DIR/.psqlrc  ~/.psqlrc

git config --global user.name "Joni Nevalainen"
git config --global user.email "joninevalainen@gmail.com"
git config --global pull.rebase true
git config --global pull.ff only
