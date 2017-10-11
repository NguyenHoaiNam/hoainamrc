#!/usr/bin/env bash
dir_path=$(dirname $0)
source $dir_path/install_function.sh

# Install zsh and oh-my-zsh
install_zsh
install_oh_my_zsh

# Setup configuration
python $dir_path/install.py
