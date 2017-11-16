# --
# Utilities
# --

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
