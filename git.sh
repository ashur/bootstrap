# --
# Git Config
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "Git Config"

git config --global user.name 'Ashur Cabrera'
task_done "user.name"

git config --global push.recurseSubmodules check
task_done "push.recurseSubmodules"

git config --global status.submoduleSummary true
task_done "status.submoduleSummary"

# Aliases
git config --global alias.hist 'log --pretty=oneline'
task_done "alias.hist"

git config --global alias.hash 'log --pretty=format:"%h" -n 1'
task_done "alias.hash"

echo
