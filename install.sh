#!/bin/bash

dotfiles="$HOME/dotfiles"
files="vimrc gitconfig Xresources"

if [ -d "$dotfiles" ]; then
	echo "Symlinking dotfiles from $dotfiles"
else
	echo "$dotfiles does not exist"
	exit 1
fi

for file in $files; do
	echo "Linking from '$dotfiles/$file' to '$HOME/.$file'"
	ln -s "$dotfiles/$file" "$HOME/.$file"
done

vscodeConfigDir="$HOME/.config/Code/User"
mkdir -p "$vscodeConfigDir"
ln -s "$dotfiles/vscode.json" "$vscodeConfigDir/settings.json"
