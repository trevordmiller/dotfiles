# Extend path
HOMEBREW_PATH=/usr/local/bin:/usr/local/sbin
SHELL_SCRIPTS_PATH="$HOME/repos/shell-scripts/scripts"
export PATH="$HOMEBREW_PATH:$SHELL_SCRIPTS_PATH:$PATH"

# Customize prompt
WORKING_DIRECTORY="\W"
PROMPT_SYMBOL="\$"
NEWLINE="\n"
COLOR_USER_CURRENT_STATE='\[\033[01;36m\]'
COLOR_STATEMENT='\[\033[01;33m\]'
COLOR_RESET='\[\033[0m\]'
export PS1="$NEWLINE${COLOR_USER_CURRENT_STATE}$WORKING_DIRECTORY$NEWLINE${COLOR_STATEMENT}$PROMPT_SYMBOL${COLOR_RESET} "

# Enable VI bindings
set -o vi

# Use Vim as editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Use bash completion
. /usr/local/etc/bash_completion

# Add ignore patterns to ag
alias ag='ag --path-to-ignore ~/.ignore --hidden'

# Use nvm for Node/npm binaries
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
