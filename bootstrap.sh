# cd to this directory to work relatively
BOOTSTRAP=$(realpath $(dirname $0))
cd $BOOTSTRAP

./macos.sh
./homebrew.sh
./git.sh
./php.sh
./oh-my-zsh.sh
./cask.sh
