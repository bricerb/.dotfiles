#! /bin/bash
export HOME="/Users/$USER" 
export target_dir="$HOME"'/Library/Application Support/Sublime Text 3/Packages/User'
export preferences=Preferences.sublime-settings

mkdir -p "$target_dir"
ln -s "$HOME"/.dotfiles/templates/"$preferences" "$target_dir/$preferences"
