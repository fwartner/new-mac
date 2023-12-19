#!/bin/sh
echo "Setting up your Mac..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s .zshrc $HOME/.zshrc

# Removes .gitconfig from $HOME (if it exists) and symlinks the .gitconfig file from the .dotfiles
rm -rf $HOME/.gitconfig
ln -s .gitconfig $HOME/.gitconfig

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

echo "source $(brew --prefix)/opt/spaceship/spaceship.zsh" >>! ~/.zshrc

# Create folders
mkdir $HOME/Development
mkdir $HOME/Development/Projects
mkdir $HOME/Development/Code
mkdir $HOME/Development/Homelab
mkdir $HOME/Development/Smarthome
mkdir $HOME/Development/cloud37

# SSH
echo "Setting up SSH..."
./ssh.sh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# AppStore Apps
echo "Setting up Apps from the Appstore..."

mas install 946399090 # Telegram Lite
mas install 441258766 # Magnet
mas install 497799835 # Xcode
mas install 1109319285 # SSH Config Editor
mas install 310633997 # WhatsApp
mas install 425424353 # The Unarchiver
mas install 1099568401 # Home Assistant
mas install 1451685025 # WireGuard
mas install 1455214828 # MQTT Explorer