#!/bin/zsh

## MacOS Settings ##

#############################
# Display Messege Do Script #
#############################
echo "Relogin when finished this script."
sleep 1
sudo echo "After 3 sec, start this script."
for i in {0..2}
do
  echo -n "."
  sleep 1
done
echo ""
#############################

# OFF Startup Sound #
sudo nvram StartupMute=%01

# Generate Files settings #
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Screenshot settings #
defaults write com.apple.screencapture disable-shadow -bool true

# Finder settings #
defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder _FXSHowPosixInTitle -bool true
defaults write com.apple.finder DisableAllAnimations -bool true

# Dock settings #
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.3
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock show-recents -bool false

# Window settings #
defaults write -g NSWindowShouldDragOnGesture -bool true

# Boot settings #
sudo nvram AutoBoot=%00

# Install Command Line Tools #
xcode-select --install



# Relogin #
#sudo killall loginwindow

