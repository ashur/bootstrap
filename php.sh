# --
# PHP
# --

source ./assets/utils.sh
header "PHP"

PHPCASK="homebrew/php"
PHPFORMULA=php71

brew tap | grep "${PHPCASK}" &>/dev/null
if [ $? -ne 0 ]; then
	task_doing $PHPCASK "Tapping"
	brew tap $PHPCASK
else
	task_done $PHPCASK "already tapped"
fi

brew list $PHPFORMULA &>/dev/null
if [ $? -ne 0 ]; then
	task_doing $PHPFORMULA "Installing"
	brew install $PHPFORMULA
else
	task_done $PHPFORMULA "already installed"
fi
echo
