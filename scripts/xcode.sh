#!/bin/bash
set -e

if xcode-select -p &>/dev/null; then
  echo "Xcode Command Line Tools already installed."
else
  xcode-select --install
  echo "Waiting for Xcode Command Line Tools installation..."
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
fi
