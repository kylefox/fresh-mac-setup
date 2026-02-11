#!/bin/bash
set -e

# Show full URL in address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Show Develop menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Show Debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Disable all autofill (using 1Password instead)
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Compact tab layout
defaults write com.apple.Safari EnableNarrowTabs -bool true

# Disable tab hover previews
defaults write com.apple.Safari DebugDisableTabHoverPreview -bool true
