#!/usr/bin/env bash

echo "Running pre-commit hook..."

(shfmt -d . >/dev/null) || (
	echo "Please run shfmt to format your code."
	exit 1
)
