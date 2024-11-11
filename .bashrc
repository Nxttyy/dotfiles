# If not running interactively, exit script
[[ $- != *i* ]] && return

# Load dotfiles
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export PATH=$HOME/.local/bin:$PATH
# Set Go path
export PATH=$PATH:/usr/local/go/bin
>>>>>>> 0f53479 (new nvim config)
