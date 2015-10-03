# --
# .dotfiles
# --
brew install coreutils
brew install grc
git clone --recursive git://github.com/ashur/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
if [ $SHELL != "/bin/zsh" ]; then
	chsh -s /bin/zsh
	zsh
fi
