# --
# Homebrew
# --

source ./assets/utils.sh
header "Homebrew"

# Homebrew
# --------
which brew &>/dev/null
if [ $? -ne 0 ]; then
	task_doing "Installing ${COLOR_WHITE}Homebrew${COLOR_NONE}..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	task_done "Homebrew" "already installed"
fi

# Formulae and Kegs
# -----------------
brew_install_formula "coreutils"
brew_install_formula "grc"

brew_tap_keg "ashur/fig"
brew_tap_keg "ashur/pug"

brew_install_formula "fig"
brew_install_formula "pug"

echo
