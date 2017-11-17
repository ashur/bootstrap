# --
# macOS
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "macOS"

# Functions
# ---------
function make_directory()
{
	DIRNAME=$1
	if [ ! -d $DIRNAME ]; then
		task_doing $DIRNAME "Creating"
		mkdir $DIRNAME
	else
		task_done $DIRNAME "already exists"
	fi
}

# Command Line Tools
# ------------------
which xcode-select &>/dev/null
if [ $? -ne 0 ]; then
	task_doing "Command Line Tools" "Installing"
	xcode-select --install
else
	task_done "Command Line Tools" "already installed"
fi

# Preferences
# -----------

# Disable drop shadows on screenshots
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer
task_done "Screenshot Drop Shadows" "disabled"

# Directories
# -----------
make_directory "${HOME}/Bots"
make_directory "${HOME}/Developer"
make_directory "${HOME}/Sites"

echo
