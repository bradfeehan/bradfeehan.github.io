#!/bin/bash
set -o errexit

GIT_USER="Travis CI"
GIT_EMAIL="travis@localhost"

# Lists files tracked by Git in the current repository for a given ref
#
# Returns fields separated by NULL bytes
#
# $1: The ref to list tracked files
function list-files {
	git ls-tree --full-tree -r "$1" | awk '{print $4}'
}

# Converts newlines in stdin to NULL bytes on stdout
#
# Passes through all other data untouched
function newline-to-null {
	tr '\n' '\0'
}

# Removes files from the working directory and Git index
#
# Expects fields separated by NULL bytes on stdin
function remove-files {
	xargs -0 -I '{}' sh -c 'rm -f {}; git update-index --remove {}'
}

# Adds files to the Git index
#
# Expects fields separated by NULL bytes on stdin
function add-files {
	xargs -0 git update-index --add
}

echo "Setting Git user details to \"$GIT_USER\" <$GIT_EMAIL>..."
git config user.email "$GIT_EMAIL"
git config user.name "$GIT_USER"

echo "Building the static site using Middleman..."
bundle exec middleman build --verbose

echo "Removing source files..."
list-files HEAD | grep -v '^\.gitignore$' | newline-to-null | remove-files

echo "Moving build artifacts to root of repository..."
mv build/* build/.ht* .

echo "Adding the resulting build to the Git index..."
git ls-files --others --exclude-standard | newline-to-null | add-files

echo "Fetching current master branch..."
git remote add -t master -f github git@github.com:bradfeehan/bradfeehan.github.io.git

echo "Committing the result to master..."
base=$(git rev-parse HEAD)
tree=$(git write-tree)
old_master=$(git rev-parse github/master)

# The new commit will be a merge between current master and this commit
master=$(echo "Middleman build for $base" | git commit-tree "$tree" -p "$base" -p "$old_master")

echo "Pushing new master to GitHub"
git push github "$master":refs/heads/master
