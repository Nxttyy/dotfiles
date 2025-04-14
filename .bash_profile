# Load .bashrc if available
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Set PATHS
if [ -x "/opt/homebrew/bin/brew" ]; then
    # For Apple Silicon Macs
    export PATH="/opt/homebrew/bin:$PATH"
fi

. "$HOME/.cargo/env"


# win nvim
# export PATH="$PATH:/mnt/c/Program Files/Neovim/bin"
# export PATH="$PATH:/mnt/c/Program Files/neovim-qt 0.2.19/bin/nvim-qt.exe -- %CD%"

