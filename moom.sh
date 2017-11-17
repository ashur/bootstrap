# --
# Moom
# --

cd $(realpath $(dirname $0))	# Work relative to bootstrap directory

source ./assets/utils.sh
header "Moom"

# Preferences
# -----------
cp ./assets/moom/com.manytricks.Moom.plist "$HOME/Library/Preferences"
task_done "Preferences" "already copied"

echo
