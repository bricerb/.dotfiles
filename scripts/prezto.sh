#! /bin/zsh
#
# usage: prezto
#
# This script installs prezto for easy Zsh config.

# Variables
files="zshrc zpreztorc zprezto"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Remove Old .z* Files
echo "${YELLOW}>>>>> Removing old .z* files${NC}"

for file in $files;
do
  rm -rf ~/.$file
done
echo "${GREEN}>>>>> Finished - Removing old .z* files${NC}"

# Clone Prezto
echo "${YELLOW}>>>>> Cloning Prezto Repository${NC}"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
echo "${GREEN}>>>>> Finished - Cloning Prezto Repositiory${NC}"

# Create a new Zsh configuration
echo "${YELLOW}>>>>> Creating Zsh Configuration${NC}"
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/templates/prezto"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
echo "${GREEN}>>>>> Finished - Creating Zsh Configuration${NC}"

# Make Zsh default
echo "${YELLOW}>>>>> Making Zsh Default Shell${NC}"
chsh -s /bin/zsh
echo "${GREEN}>>>>> Finished - Making Zsh Default Shell${NC}"


# Install Powerline Fonts
echo "${YELLOW}>>>>> Installing Powerline Fonts${NC}"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "${GREEN}>>>>> Finished - Installing Powerline Fonts${NC}"