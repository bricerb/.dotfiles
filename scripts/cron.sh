#! /bin/bash
# 
# Usage: Cron

HOME_DIR="/Users/$USER"
NOTES_DIR="$HOME_DIR/Playground/Notes_For_Self"
DOTFILES_DIR="$HOME_DIR/.dotfiles"

export GIT_TERMINAL_PROMPT=0

# Useful Notes
cd $NOTES_DIR 
git pull && git add . && git commit -m 'Edit' && git push

# Dotfiles
cd $DOTFILES_DIR
git pull && git add . && git commit -m 'Edit' && git push