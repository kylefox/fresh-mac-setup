#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Preflight: check for Full Disk Access (needed to write Safari preferences).
# There's no API to check this directly, so we try to read a protected plist.
# If the read fails, Terminal doesn't have Full Disk Access.
if ! plutil -lint /Library/Preferences/com.apple.TimeMachine.plist >/dev/null 2>&1; then
  echo "Error: Terminal needs Full Disk Access."
  echo "Opening System Settings..."
  open "x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles"
  echo "Grant Full Disk Access to Terminal, then re-run this script."
  exit 1
fi

echo "==> Installing Xcode Command Line Tools"
"$SCRIPT_DIR/scripts/xcode.sh"

echo "==> Installing Homebrew"
"$SCRIPT_DIR/scripts/homebrew.sh"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "==> Sign into the Mac App Store, then press Enter to continue."
read -r

echo "==> Installing packages"
"$SCRIPT_DIR/scripts/packages.sh"

echo "==> Configuring Dock"
"$SCRIPT_DIR/scripts/macos/dock.sh"

echo "==> Configuring Safari"
"$SCRIPT_DIR/scripts/macos/safari.sh"

echo "==> Setting fish as default shell"
"$SCRIPT_DIR/scripts/fish.sh"

echo "Done!"
