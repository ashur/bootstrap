# --
# Homebrew: Cask
# --

source ./assets/utils.sh
header "Homebrew: Cask"

# Functions
# ---------
function install_cask()
{
	APP_FORMULA="$1"
	APP_NAME="$2"
	APP_BUNDLE="${APP_NAME}.app"

	if [ ! -d "/Applications/${APP_BUNDLE}" ]; then
		brew cask list $APP_FORMULA &>/dev/null
		if [ $? -ne 0 ]; then
			task_doing "${APP_NAME}" "Installing"
			brew cask install --appdir=/Applications "${APP_FORMULA}"
		fi
	else
		task_done "${APP_NAME}" "already installed"
	fi
}

# Casks
# -----

brew_tap_keg "caskroom/versions"

install_cask 1password	"1Password 6"
install_cask alfred		"Alfred 3"
install_cask atom-beta	"Atom Beta"
install_cask dropbox	"Dropbox"
install_cask github		"Github Desktop"
install_cask slack		"Slack"
install_cask spotify	"Spotify"

echo
