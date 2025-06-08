#!/usr/bin/env zsh

# Define paths
config_path="$HOME/.config/nvim"
backup_path="$HOME/.config/nvim-bak"
new_config_path="./nvim"

# Backup only if backup directory does not already exist
if [[ -d "$config_path" && ! -d "$backup_path" ]]; then
  echo "Backing up existing Neovim config to nvim-bak..."
  mv "$config_path" "$backup_path"
else
  if [[ -d "$backup_path" ]]; then
    echo "Backup already exists at $backup_path. Skipping backup."
  else
    echo "No existing Neovim config to backup."
  fi
fi

# Copy new config
echo "Installing new Neovim config..."
cp -r "$new_config_path" "$config_path"

