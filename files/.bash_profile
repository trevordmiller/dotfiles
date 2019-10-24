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

# Use bash completion
. /usr/local/etc/bash_completion

# Use Vim as editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Enable VI bindings
set -o vi

# Use nvm for Node/npm JavaScript binaries
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
