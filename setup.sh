# Setup New Laptop
# ----------------------------------
# There are a few things that I always need to setup every time I update my laptop
# so I better automate part of this process to make the transition quick.
# based on https://gist.github.com/bradp/bea76b16d3325f5c47d4


echo "Installing xcode utils"
xcode-select install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

echo "Installing Git..."
brew install git

echo "Installing other brew stuff..."
brew install awscli
brew install tree
brew install wget
brew install cheat
brew install cli53
brew install htop
brew install tcptraceroute
brew install netcat
brew install mtr
brew install rbenv
brew install terraform
brew install ripgrep
brew install vim
brew install php@7.2
brew install zsh
brew install jq
brew install zsh-completions
brew install zsh-syntax-highlighting

echo "Cleaning up brew"
brew cleanup

echo "Install VirtualBox"
brew cask install virtualbox

echo "Installing Vagrant"
brew cask install vagrant

echo "Install Authy"
brew cask install authy

echo "Installing homebrew cask"
brew install caskroom/cask/brew-cask

echo "Installing Iterm2"
brew cask install iterm2

echo "Installing Alfred"
brew cask install alfred


echo "Installing 1password"
brew cask install 1password

echo "Installing GPG Tools"
brew cask install gpg-suite

echo "Installing Docker"
brew cask install docker

echo "Installing the-unarchiver"
brew cask install the-unarchiver

echo "Installing arcanist"
mkdir ~/arcanist
git clone https://github.com/phacility/libphutil.git ~/arcanist/libphutil

echo "AWS shell for bash/zsh"
git clone https://github.com/bash-my-universe/bash-my-aws.git ~/.bash-my-aws

# why not?
killall Finder

echo "Completed."
