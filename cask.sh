# --
# Homebrew: Cask
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "Homebrew: Cask"

# Functions
# ---------
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

# Casks
# -----
install_cask github "Github Desktop"
install_cask moom "Moom"
install_cask alfred "Alfred"
install_cask dropbox "Dropbox"
install_cask 1password "1Password"

echo
