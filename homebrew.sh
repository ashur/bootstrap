# --
# Homebrew
# --

echo "\nHomebrew ***********************************************************************\n"

brew list coreutils &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing coreutils..."
	brew install coreutils
else
	echo "✓ coreutils already installed"
fi

brew list grc &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing grc..."
	brew install grc
else
	echo "✓ grc already installed"
fi

echo
