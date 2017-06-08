# cd to the proper directory so we can work relatively
cd "`dirname $0`"

./osx.sh
./git.sh
./php.sh
./dotfiles.sh
./cask.sh

# App Preferences
./apps/atom.sh
./apps/safari.sh
./apps/tweetbot.sh
