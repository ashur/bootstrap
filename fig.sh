# --
# PHP
# --

source ./assets/utils.sh
header "Fig"

# Functions
# ---------
function fig_add()
{
	FIG_NAME="$1"
	FIG_URL="$2"

	fig add "${FIG_NAME}" --url="${FIG_URL}" &>/dev/null
	if [ $? -ne 0 ]; then
		task_done "${FIG_NAME}" "already installed"
	else
		task_doing "${FIG_NAME}" "Installing"
	fi
}

fig_add bootstrap git@github.com:ashur/fig-bootstrap.git

echo
