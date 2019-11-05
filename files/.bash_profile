# Extend path with shell scripts
SHELL_SCRIPTS_PATH="$HOME/repos/shell-scripts/scripts"
export PATH="$SHELL_SCRIPTS_PATH:$PATH"

# Customize prompt
export PS1="\$ "

# Use bash completion
. /usr/local/etc/bash_completion

# Use nvm for Node/npm JavaScript binaries
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
