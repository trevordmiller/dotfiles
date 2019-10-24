# Extend path
HOMEBREW_PATH=/usr/local/bin:/usr/local/sbin
SHELL_SCRIPTS_PATH="$HOME/repos/shell-scripts/scripts"
export PATH="$HOMEBREW_PATH:$SHELL_SCRIPTS_PATH:$PATH"

# Customize prompt
export PS1="\$ "

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
