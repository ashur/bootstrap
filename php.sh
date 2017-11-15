# --
# PHP
# --

echo "\nPHP ****************************************************************************\n"

PHPCASK="homebrew/php"
PHPFORMULA=php71

brew tap | grep "${PHPCASK}" &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Tapping ${PHPCASK}..."
	brew tap ${PHPCASK}
else
	echo "✓ ${PHPCASK} already tapped"
fi

brew list $PHPFORMULA &>/dev/null
if [ $? -ne 0 ]; then
	echo "- Installing ${PHPFORMULA}..."
	brew install $PHPFORMULA
else
	echo "✓ ${PHPFORMULA} already installed"
fi
echo
