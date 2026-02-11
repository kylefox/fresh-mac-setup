#!/bin/bash
set -e

echo "Checking for macOS updates..."
softwareupdate --install --all
