#!/bin/bash -e

which -s brew && brew update
which -s brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/fonts

formulae=(
  ag
  caskroom/cask/brew-cask
  chruby
  emacs --with-coca
  git
  hub
  jq
  pick
  ruby-install
  tree
  wget
)

casks=(
  1password
  alfred
  dropbox
  font-inconsolata
  google-chrome
  google-chrome-canary
  iterm2
  skype
  slack
  slate
)

for formula in "${formulae[@]}"; do
  brew install $formula || brew upgrade $formula
done

brew linkapps

for cask in "${casks[@]}"; do
  brew cask install $cask
done
