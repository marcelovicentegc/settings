#!/bin/bash

sudo apt update

sudo apt install -y \
    git \
    curl \
    vim \
    indicator-multiload \
    gnome-clocks \
    gnome-tweaks \
    flatpak \
    cowsay

sudo apt install -y fortune-mod

curl -fsSL https://get.pnpm.io/install.sh | sh -

echo "Don't forget to install nvm: https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating"
echo "Maybe you would like to install Ollama: https://ollama.com/download"
echo "Maybe you would like to install Go: https://go.dev/doc/install"

# indicator-multiload: add CPU and RAM usage indicator to the top bar with 'CPU $(percent(cpu.inuse)) | Mem $(size(mem.user))'
# gnome-clocks: install panel-world-clock-lite extension once the installation is complete: https://extensions.gnome.org/extension/946/panel-world-clock-lite/