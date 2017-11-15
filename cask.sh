# --
# Install apps using Cask, symlink to /Applications
# --

echo "\nHomebrew Cask ******************************************************************\n"

# brew cask list bartender &>/dev/null
# if [ $? -ne 0 ]; then
# 	echo "- Installing Bartender..."
# 	brew cask install --appdir=/Applications bartender
# else
# 	echo "✓ Bartender already installed"
# fi

brew cask list github &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing GitHub Desktop..."
	brew cask install --appdir=/Applications github
else
	echo "✓ GitHub Desktop already installed"
fi

brew cask list moom &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing Moom..."
	brew cask install --appdir=/Applications moom
else
	echo "✓ Moom already installed"
fi

echo
