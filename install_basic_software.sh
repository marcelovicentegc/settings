sudo apt update

sudo apt install -y \
    git \
    curl \
    vim \
    indicator-multiload \
    gnome-clocks \
    gnome-tweaks

# indicator-multiload: add CPU and RAM usage indicator to the top bar with 'CPU $(percent(cpu.inuse)) | Mem $(size(mem.user))'
# gnome-clocks: install panel-world-clock-lite extension once the installation is complete: https://extensions.gnome.org/extension/946/panel-world-clock-lite/