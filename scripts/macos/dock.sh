#!/bin/bash
set -e

# Remove all apps from the Dock
defaults write com.apple.dock persistent-apps -array

# Remove all folders/files from the Dock (except Downloads will be re-added by default)
defaults write com.apple.dock persistent-others -array

# Icon size
defaults write com.apple.dock tilesize -int 68

# Autohide
defaults write com.apple.dock autohide -bool true

# No magnification
defaults write com.apple.dock magnification -bool false

# Position
defaults write com.apple.dock orientation -string bottom

# Don't show recent apps
defaults write com.apple.dock show-recents -bool false

# Hot corners
# Bottom-left: Desktop
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom-right: disabled
defaults write com.apple.dock wvous-br-corner -int 1
defaults write com.apple.dock wvous-br-modifier -int 0

# Restart the Dock to apply changes
killall Dock
