# --
# oh-my-zsh
# --
OMZ="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh-custom"
ZSHRC="$HOME/.zshrc"

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

if [ ! -d "$OMZ" ]; then
	echo "Installing oh-my-zsh..."
	git clone https://github.com/robbyrussell/oh-my-zsh.git $OMZ
fi

if [ ! -d "$ZSH_CUSTOM" ]; then
	echo "Installing oh-my-zsh customizations..."
	git clone https://github.com/ashur/.zsh-custom $ZSH_CUSTOM
fi

if [ ! -L "$ZSHRC" ]; then
	echo "Linking ~/.zshrc"
	ln -s $SCRIPTPATH/oh-my-zsh/.zshrc $ZSHRC
	ln -s $SCRIPTPATH/assets/oh-my-zsh/.zshrc $ZSHRC
fi

if [ $SHELL != "/bin/zsh" ]; then
	chsh -s /bin/zsh
	zsh
fi
