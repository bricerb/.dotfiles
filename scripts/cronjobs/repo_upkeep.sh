#! /bin/bash
# 
# Usage: Upkeep Repos

export HOME_DIR="/Users/$USER"
export DOTFILES_DIR="$HOME_DIR/.dotfiles"
export NOTES_DIR="$HOME_DIR/Playground/Notes_For_Self"

# Dotfiles
cd $DOTFILES_DIR
/usr/bin/git pull && /usr/bin/git add . && /usr/bin/git commit -m 'Edit' && /usr/bin/git push

# Useful Notes
cd $NOTES_DIR
/usr/bin/git pull && /usr/bin/git add . && /usr/bin/git commit -m 'Edit' && /usr/bin/git push