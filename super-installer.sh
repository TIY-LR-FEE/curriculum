#!/bin/sh

# The Iron Yard - Little Rock - FEE Feb 2016
# Super Install Script
#
# Heavily borrowing on the shoulders of giants
# MIT or similar license probably applies
# Thanks to Jacob Smith from the GVL campus of The Iron Yard

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Update path to use GNU core utils
echo 'export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH'

# Install zsh / oh-my-zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

# Reload source for zsh to get updated path and nvm
source ~/.zshrc

# Install Node 5.5 and set as default
nvm install 5.5
nvm alias default 5.5

# Install Git, Trash and io.js
clis=(
  hub
  git
  trash
)
brew install ${clis[@]}

brew cleanup

# Install brew cask
brew install caskroom/cask/brew-cask

brew tap caskroom/versions
brew tap caskroom/fonts

# Apps
apps=(
  google-chrome
  atom
  slack
  iterm2
  screenhero
  spectacle
  sourcetree

  font-source-code-pro
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Setting Git to use Atom as default editor"
git config --global core.editor "atom -n -w"
