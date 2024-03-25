#!/bin/bash

# Path to the .bashrc file in the repository
repo_bashrc="./.bashrc"

# Path to the .bashrc file on the user's PC
user_bashrc="$HOME/.bashrc"

# Check if the repository .bashrc file exists
if [ -f "$repo_bashrc" ]; then
    # Check if the user's .bashrc file exists
    if [ -f "$user_bashrc" ]; then
        # Append the content of the repository .bashrc to the user's .bashrc
        cat "$repo_bashrc" >> "$user_bashrc"
        source "$user_bashrc"
        echo "Content from .bashrc in the repository has been appended to $user_bashrc"
    else
        echo "User's .bashrc file not found"
    fi
else
    echo "Repository .bashrc file not found"
fi
