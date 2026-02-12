#!/bin/bash
set -e

FISH_PATH="$(brew --prefix fish)/bin/fish"

if [ "$SHELL" = "$FISH_PATH" ]; then
  echo "Fish is already the default shell."
else
  if ! grep -q "$FISH_PATH" /etc/shells; then
    echo "Adding fish to /etc/shells (requires sudo)..."
    sudo sh -c "echo $FISH_PATH >> /etc/shells"
  fi
  echo "Setting fish as default shell..."
  chsh -s "$FISH_PATH"
fi

# Add Homebrew to fish's PATH
fish -c "fish_add_path /opt/homebrew/bin"
