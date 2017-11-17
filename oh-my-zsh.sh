# --
# oh-my-zsh
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "oh-my-zsh"

# Clone Repos
# -----------
clone_repo "https://github.com/robbyrussell/oh-my-zsh.git" "$HOME/.oh-my-zsh" "oh-my-zsh"
clone_repo "https://github.com/ashur/.zsh-custom" "$HOME/.zsh-custom" "~/.zsh-custom"

# ~/.zshrc
# --------
ZSHRC="$HOME/.zshrc"
if [ ! -L $ZSHRC ]; then
	task_doing "~/.zshrc" "Linking"
	ln -s ./assets/oh-my-zsh/.zshrc $ZSHRC
else
	task_done "~/.zshrc" "already linked"
fi

# Set Shell
# ---------
if [ $SHELL != "/bin/zsh" ]; then
	chsh -s /bin/zsh
	zsh
fi

echo
