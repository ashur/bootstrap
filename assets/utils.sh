# --
# Utilities
# --

# Variables
# ---------
KEG_LIST=""

# Functions
# ---------
function brew_install_formula()
{
	FORMULA_NAME="$1"

	brew list "${FORMULA_NAME}" &>/dev/null
	if [ $? -ne 0 ]; then
		task_doing "${FORMULA_NAME}" "Installing"
		brew install "${FORMULA_NAME}"
	else
		task_done "${FORMULA_NAME}" "already installed"
	fi
}

function brew_tap_keg()
{
	KEG_NAME="$1"

	if [[ -z $KEG_LIST  ]]; then
		KEG_LIST=$(brew tap)	# Generate list of kegs once
	fi

	echo "${KEG_LIST}" | grep "${KEG_NAME}" &>/dev/null
	if [ $? -ne 0 ]; then
		task_doing "${KEG_NAME}" "Tapping"
		brew tap "${KEG_NAME}"
	else
		task_done "${KEG_NAME}" "already tapped"
	fi
}

function clone_repo()
{
	REPO_URL="$1"
	TARGET_DIR="$2"
	REPO_NAME="$3"

	if [ ! -d $TARGET_DIR ]; then
		task_doing $REPO_NAME "Cloning"
		git clone "${REPO_URL}" "${TARGET_DIR}"
	else
		task_done $REPO_NAME "already installed"
	fi
}

function header()
{
	title="${1} "
	padchar='*'
	pad=$(printf '%0.1s' "${padchar}"{1..80})
	padlength=80
	printf "\n${title}"
	printf '%*.*s\n\n' 0 $((padlength - ${#title})) "$pad"
}

function task_doing()
{
	TASK_NAME=$1
	TASK_DESC=$2
	echo "${COLOR_BLUE}-${COLOR_NONE} ${TASK_DESC} ${TASK_NAME}${COLOR_NONE}..."
}

function task_done()
{
	TASK_NAME=$1
	TASK_DESC=$2
	echo "${COLOR_GREEN}✓${COLOR_NONE} ${TASK_NAME}${COLOR_NONE}"
}

# Colors
COLOR_GREEN='\033[0;32m'
COLOR_BLUE='\033[0;34m'
COLOR_NONE='\033[0m'
