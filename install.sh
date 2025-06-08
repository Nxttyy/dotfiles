#!/usr/bin/env bash

set -e

echo "Installing Zsh..."

# Detect OS and install Zsh accordingly
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  if command -v apt &> /dev/null; then
    sudo apt update
    sudo apt install -y zsh golang luarocks
  elif command -v dnf &> /dev/null; then
    sudo dnf install -y zsh
  elif command -v pacman &> /dev/null; then
    sudo pacman -Syu zsh --noconfirm
  else
    echo "Unsupported Linux package manager."
    exit 1
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  if command -v brew &> /dev/null; then
    brew install zsh
  else
    echo "Homebrew not found. Install Homebrew first: https://brew.sh/"
    exit 1
  fi
else
  echo "Unsupported OS: $OSTYPE"
  exit 1
fi

# Print installed version
zsh_version=$(zsh --version)
echo "Zsh installed: $zsh_version"

  chsh -s "$(command -v zsh)"
  echo "Zsh set as default shell."


# run main script
./install_main.sh
