#!/bin/bash

# Set your Git user
git config --global user.name "marcelovicentegc"
git config --global user.email "marcelovicentegc@gmail.com"

# Set Vim as the default commit message editor
git config --global core.editor "vim"

# Create SSH key
ssh-keygen -t rsa -b 4096 -C "marcelovicentegc@gmail.com"

# Start the SSH agent
eval "$(ssh-agent -s)"

# Add the SSH key to the SSH agent
ssh-add ~/.ssh/id_rsa