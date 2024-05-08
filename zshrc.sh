autoload -Uz compinit
compinit

CWD=${0:a:h}

source "$CWD/setup.sh"
source "$CWD/zsh/prompt.sh"
source "$CWD/zsh/history.sh"
source "$CWD/zsh/aliases.sh"
source "$CWD/aliases.sh"


