#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Installing Xcode Command Line Tools"
"$SCRIPT_DIR/scripts/xcode.sh"

echo "==> Installing Homebrew"
"$SCRIPT_DIR/scripts/homebrew.sh"

echo "==> Installing packages"
"$SCRIPT_DIR/scripts/packages.sh"

echo "Done!"
