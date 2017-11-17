# --
# oh-my-zsh
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "oh-my-zsh"

OMZ="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh-custom"
ZSHRC="$HOME/.zshrc"

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

if [ ! -d "$OMZ" ]; then
	task_doing "oh-my-zsh" "Installing"
	git clone https://github.com/robbyrussell/oh-my-zsh.git $OMZ
else
	task_done "oh-my-zsh" "already installed"
fi

if [ ! -d "$ZSH_CUSTOM" ]; then
	task_doing "~/.zsh-custom" "Installing"
	git clone https://github.com/ashur/.zsh-custom $ZSH_CUSTOM
else
	task_done "~/.zsh-custom" "already installed"
fi

if [ ! -L "$ZSHRC" ]; then
	task_doing "~/.zshrc" "Linking"
	ln -s $SCRIPTPATH/assets/oh-my-zsh/.zshrc $ZSHRC
else
	task_done "~/.zshrc" "already linked"
fi

if [ $SHELL != "/bin/zsh" ]; then
	chsh -s /bin/zsh
	zsh
fi

echo
