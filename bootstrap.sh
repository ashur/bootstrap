# cd to the proper directory so we can work relatively
cd "`pwd`/`dirname $0`"

./osx.sh
./git.sh
./php.sh
./dotfiles.sh
./cask.sh

# App Preferences
./apps/safari.sh
./apps/tweetbot.sh
