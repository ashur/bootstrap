# --
# oh-my-zsh
# --

echo "\noh-my-zsh **********************************************************************\n"

OMZ="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh-custom"
ZSHRC="$HOME/.zshrc"

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

if [ ! -d "$OMZ" ]; then
	echo "- Installing oh-my-zsh..."
	git clone https://github.com/robbyrussell/oh-my-zsh.git $OMZ
else
	echo "✓ oh-my-zsh already installed"
fi

if [ ! -d "$ZSH_CUSTOM" ]; then
	echo "- Installing oh-my-zsh customizations..."
	git clone https://github.com/ashur/.zsh-custom $ZSH_CUSTOM
else
	echo "✓ oh-my-zsh customizations already installed"
fi

if [ ! -L "$ZSHRC" ]; then
	echo "- Linking ~/.zshrc"
	ln -s $SCRIPTPATH/assets/oh-my-zsh/.zshrc $ZSHRC
else
	echo "✓ ~/.zshrc already linked"
fi

if [ $SHELL != "/bin/zsh" ]; then
	chsh -s /bin/zsh
	zsh
fi

echo
