#!/usr/bin/env bash

# https://michaeladev.medium.com/boost-code-quality-adding-a-custom-git-pre-commit-hook-with-bash-script-97954c4b015a

set -Eeuo pipefail

pre_commit_hook_file="pre-commit"

hooks_directory=".git/hooks"

pre_commit_script="$(<"$(dirname -- "$0")/_/pre-commit.sh")"

echo "$pre_commit_script" >"$pre_commit_hook_file"

chmod +x "$pre_commit_hook_file"

mv "$pre_commit_hook_file" "$hooks_directory/pre-commit"

echo "Pre-commit hook installed successfully!"
