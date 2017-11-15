# --
# macOS preferences
# --

echo "\nmacOS **************************************************************************\n"

## Disable drop shadows on screenshots
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer

# --
# Directories
# --
## ~/Developer
DIRDEV="${HOME}/Developer"
if [ ! -d $DIRDEV ]; then
	echo "- Creating ${DIRDEV}..."
	mkdir $DIRDEV
else
	echo "✓ ${DIRDEV} already exists"
fi

## ~/Sites
DIRSITES="${HOME}/Sites"
if [ ! -d $DIRSITES ]; then
	echo "- Creating ${DIRSITES}..."
	mkdir $DIRSITES
else
	echo "✓ ${DIRSITES} already exists"
fi

# --
# Command Line Tools
# --
which xcode-select &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing Command Line Tools..."
	xcode-select --install
else
	echo "✓ Command Line Tools already installed"
fi

# --
# homebrew
# --
which brew &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing Homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "✓ Homebrew already installed"
fi
echo
