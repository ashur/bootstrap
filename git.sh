# --
# Git Config
# --

source ./assets/utils.sh
header "Git Config"

# Functions
# ---------
function git_config()
{
	GIT_KEY="$1"
	GIT_VALUE="$2"

	git config --global "${GIT_KEY}" "${GIT_VALUE}"
	task_done "${GIT_KEY}"
}

brew_install_formula "git"

# Config
# ------
git_config 'user.name' 'Ashur Cabrera'
git_config 'push.recurseSubmodules' 'check'
git_config 'status.submoduleSummary' 'true'
git_config 'alias.hist' 'log --pretty=oneline'
git_config 'alias.hash' 'log --pretty=format:"%h" -n 1'

echo
