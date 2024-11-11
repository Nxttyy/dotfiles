# Load .bashrc if available
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Set Go path
export PATH=$PATH:/usr/local/go/bin

# Set other paths if needed
if [ -x "/opt/homebrew/bin/brew" ]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi

# Load Cargo (for Rust, if needed)
. "$HOME/.cargo/env"


# win nvim
# export PATH="$PATH:/mnt/c/Program Files/Neovim/bin"
# export PATH="$PATH:/mnt/c/Program Files/neovim-qt 0.2.19/bin/nvim-qt.exe -- %CD%"

