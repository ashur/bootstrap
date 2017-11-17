# --
# bootstrap
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

./macos.sh
./homebrew.sh
./git.sh
./php.sh
./oh-my-zsh.sh
./cask.sh
