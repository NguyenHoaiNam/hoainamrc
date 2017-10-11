#!/usr/bin/env bash

function install_zsh()
{
    echo "Checking your system whether zsh or not"
    brew list zsh &> /dev/null
    if [ $? = 1]
    then
    echo "Starting install Zsh"
    brew install zsh
    sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
    else
    echo "Your Mac already have Zsh"
    fi
}

function install_oh_my_zsh()
{
    echo "Checking oh-my-zsh in your mac"
    if [ -d $HOME/.oh-my-zsh ]
    then
    echo "Your Mac already have Oh-my-zsh"
    else
    echo "Your Mac does not have Oh-my-zsh"
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    fi
}

