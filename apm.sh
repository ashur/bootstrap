# --
# macOS
# --

source ./assets/utils.sh
header "Atom Packages"

# Functions
# ---------
function apm_install()
{
	PACKAGENAME=$1
	if [ ! -d "${HOME}/.atom/packages/${PACKAGENAME}" ]; then
		task_doing $PACKAGENAME "Installing"
		apm-beta install $PACKAGENAME &>/dev/null
	else
		task_done $PACKAGENAME "already installed"
	fi
}

apm_install dash
apm_install phpunit
apm_install set-syntax
apm_install sort-lines

echo
