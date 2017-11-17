# --
# PHP
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "PHP"

# Formulae and Kegs
# -----------------
brew_tap_keg "homebrew/php"
brew_install_formula "php71"

echo
