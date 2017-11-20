# ==================================================================
# PATH
# ==================================================================

SHELL_SCRIPTS_PATH="$HOME/repos/shell-scripts/scripts"
export PATH="$PATH:$SHELL_SCRIPTS_PATH"

# GOOGLE CLOUD
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'


# ==================================================================
# PROMPT
# ==================================================================

# SYMBOLS
WORKING_DIRECTORY="\W"
PROMPT_SYMBOL="\$"

# FORMATTING
NEWLINE="\n"

# COLOR
COLOR_USER_CURRENT_STATE='\[\033[01;36m\]'
COLOR_STATEMENT='\[\033[01;33m\]'
COLOR_RESET='\[\033[0m\]'

# RENDER
export PS1="$NEWLINE${COLOR_USER_CURRENT_STATE}$WORKING_DIRECTORY$NEWLINE${COLOR_STATEMENT}$PROMPT_SYMBOL${COLOR_RESET} "

# VI BINDINGS
set -o vi


# ==================================================================
# EDITOR
# ==================================================================

export VISUAL=vim
export EDITOR="$VISUAL"


# ==================================================================
# ALIASES
# ==================================================================

alias grep='grep -I --color=auto --exclude-dir={.git,node_modules,build,.next,__snapshots__,flow-typed,priv,deps} --exclude=package-lock.json'
alias less='less -R'
