# --
# Install apps using Cask, symlink to /Applications
# --

source ./assets/utils.sh
header "Homebrew: Cask"

function install_cask()
{
	APP_FORMULA="$1"
	APP_NAME="$2"

	brew cask list $APP_FORMULA &>/dev/null
	if [ $? -ne 0 ]; then
		task_doing "${APP_NAME}" "Installing"
		brew cask install --appdir=/Applications "${APP_FORMULA}"
	else
		task_done "${APP_NAME}" "already installed"
	fi
}

# install_cask bartender "Bartender 3"
install_cask github "Github Desktop"
install_cask moom "Moom"

echo
