#! /bin/bash
# 
# Usage: Upkeep Repos

export HOME_DIR="/Users/$USER"
export DOTFILES_DIR="$HOME_DIR/.dotfiles"
export NOTES_DIR="$HOME_DIR/Playground/Notes_For_Self"
export GIT="/usr/bin/git"

cd /Users/rbb1j52/Desktop
touch CRON_BEFORE

# Dotfiles
cd $DOTFILES_DIR
$GIT pull
$GIT add .
$GIT commit -m 'Edit'
$GIT push

# Useful Notes
# cd $NOTES_DIR
# $GIT pull && $GIT add . && $GIT commit -m 'Edit' && $GIT push >> $HOME_DIR/Desktop/git.log


cd /Users/rbb1j52/Desktop
touch CRON_AFTER