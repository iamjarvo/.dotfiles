#!/bin/bash -ex

link_file() {
  ln -vs $PWD/$1 ~/$1 || (rm -rf ~/$1 && ln -vs $PWD/$1 ~/$1)
}

link_file ".vimrc"
link_file ".slate"
link_file ".gemrc"
link_file ".tmux.conf"
cp -r $PWD/.vim ~/.

git config --global user.email "j.dharrie@gmail.com"
git config --global user.name "Jearvon Dharrie"

# dock
defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide 1
defaults write com.apple.dock tilesize 16

# tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 0
