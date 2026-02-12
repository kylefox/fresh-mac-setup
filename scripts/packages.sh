#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Updating Homebrew..."
brew update

echo "Installing packages..."
brew bundle --verbose --file="$SCRIPT_DIR/../Brewfile"

echo "Cleaning up..."
brew cleanup

echo "Running brew doctor..."
brew doctor
