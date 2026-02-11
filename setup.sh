#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Updating macOS"
"$SCRIPT_DIR/scripts/softwareupdate.sh"

echo "==> Installing Xcode Command Line Tools"
"$SCRIPT_DIR/scripts/xcode.sh"

echo "==> Installing Homebrew"
"$SCRIPT_DIR/scripts/homebrew.sh"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "==> Installing packages"
"$SCRIPT_DIR/scripts/packages.sh"

echo "==> Setting fish as default shell"
"$SCRIPT_DIR/scripts/fish.sh"

echo "Done!"
