# If not running interactively, exit script
[[ $- != *i* ]] && return

# Load dotfiles
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Automatically start a new tmux session if not already inside one
# if [ -z "$TMUX" ]; then
#     # Check if there's an existing session to attach
#     if tmux ls &>/dev/null; then
#         tmux attach
#     else
#         # Create a new session if none exist
#         tmux new-session
#     fi
# fi
