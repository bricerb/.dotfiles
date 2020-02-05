#! /bin/zsh
#
# This sets up Neovim, and preferences for vim-go
# (Assumes neovim has been brew installed through bundle)

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Create config package for neovim
mkdir -p ~/.config/nvim

# Symbolic Link to template init.vim
ln -s ~/.dotfiles/templates/init.vim ~/.config/nvim/init.vim

# Symbolic Link to Sublime Text Editor

# Install python processes for neovim
pip3 install neovim

# Download vim-plug(https://github.com/tpope/vim-pathogen)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download vim-go using Pathogen
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

# Run :GoInstallBinaries
nvim +'silent :GoInstallBinaries' +qall
