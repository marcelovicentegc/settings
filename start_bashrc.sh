DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/install_basic_software.sh"
. "$DIR/include_bashrc.sh"
. "$DIR/config_git.sh"