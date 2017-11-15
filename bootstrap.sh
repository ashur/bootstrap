# cd to this directory to work relatively
BOOTSTRAP=$(realpath $(dirname $0))
cd $BOOTSTRAP

./macos.sh
./git.sh
./homebrew.sh
./php.sh
./oh-my-zsh.sh
./cask.sh
