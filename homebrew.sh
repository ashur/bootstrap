# --
# Homebrew
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "Homebrew"

which brew &>/dev/null
if [ $? -ne 0 ]; then
	task_doing "Installing ${COLOR_WHITE}Homebrew${COLOR_NONE}..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	task_done "Homebrew" "already installed"
fi

brew list coreutils &>/dev/null
if [ $? -ne 0 ]; then
	task_doing "coreutils" "Installing"
	brew install coreutils
else
	task_done "coreutils" "already installed"
fi

brew list grc &>/dev/null
if [ $? -ne 0 ]; then
	task_doing "grc" "Installing"
	brew install grc
else
	task_done "grc" "already installed"
fi

echo
