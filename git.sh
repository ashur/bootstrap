# --
# Git preferences
# --

echo "\nGit config *********************************************************************\n"

git config --global user.name 'Ashur Cabrera'
echo "✓ user.name"

git config --global push.recurseSubmodules check
echo "✓ push.recurseSubmodules"

git config --global status.submoduleSummary true
echo "✓ status.submoduleSummary"

# Aliases
git config --global alias.hist 'log --pretty=oneline'
echo "✓ alias.hist"
git config --global alias.hash 'log --pretty=format:"%h" -n 1'
echo "✓ alias.hash"

echo
