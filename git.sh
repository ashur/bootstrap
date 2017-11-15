# --
# Git preferences
# --

echo "\nGit config *********************************************************************\n"

git config --global user.name 'Ashur Cabrera'
echo "✓ user.name"

# Aliases
git config --global alias.hist 'log --pretty=oneline'
echo "✓ alias.hist"
git config --global alias.hash 'log --pretty=format:"%h" -n 1'
echo "✓ alias.hash"

# Misc
git config --global status.submoduleSummary true
echo "✓ status.submoduleSummary"
echo
