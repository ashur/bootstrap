# --
# Moom
# --

source ./assets/utils.sh
header "Moom"

# Preferences
# -----------
cp ./assets/moom/com.manytricks.Moom.plist "$HOME/Library/Preferences"
defaults read moom/com.manytricks.Moom.plist &>/dev/null
task_done "Preferences" "already copied"

echo
