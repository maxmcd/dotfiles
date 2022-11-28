export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$GOPATH/bin:$PATH"


zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
setopt PROMPT_SUBST
NEWLINE=$'\n'
POWDER_BLUE=$(tput setaf 153)
WEIRD_BLUE=$(tput setaf 31)
export PROMPT="${WEIRD_BLUE}%n 👻 :%~ ${POWDER_BLUE}\$(git-radar --zsh --fetch) %(?..%? ) ${NEWLINE}$ %f"


autoload -Uz compinit && compinit

source $(brew --prefix)/opt/fzf/shell/completion.zsh
source $(brew --prefix)/opt/fzf/shell/key-bindings.zsh

export GOPATH="$HOME/go/"
export GITHUB=$GOPATH/src/github.com/
export MX=$GOPATH/src/github.com/maxmcd/
export VOLTUS=~/voltus

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_DEFAULT_PLATFORM=linux/amd64
export EDITOR=vim


alias f='cd $(find $(go env GOPATH)src/github.com/ $SERVICES_DIR -maxdepth 2 -type d | fzf || echo ".")'
alias c='cd $(find . $SERVICES_DIR -maxdepth 2 -type d | fzf || echo ".")'
alias m='cd $(find $VOLTUS -name Makefile -printf "%h\n" | fzf || echo ".")'

alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white)"'
alias gbr="git for-each-ref --sort='committerdate' --format='%(refname)%09%(committerdate)' refs/heads | sed -e 's-refs/heads/--' | column -t "
alias v='cd $VOLTUS'

alias pw='pwgen -n 32'

alias gpo="git push origin \$(git branch --show-current) --tags"
alias ggo="git push github \$(git branch --show-current) --tags"
alias glo="git pull origin \$(git branch --show-current)"
alias gs="git status"
alias gmm="git fetch origin master:master && git merge master"
alias gst="git stash"
alias gsta="git stash apply"
alias dc="docker-compose"

alias g="git"
alias gc="git checkout"
alias gm="git merge"
alias gp="git pull"
alias gb="git branch"

alias ll="ls -lahp"
alias l="tree --dirsfirst -ChFLa 1"
alias l2="tree --dirsfirst -ChFLa 2"
alias l3="tree --dirsfirst -ChFLa 3"
alias l4="tree --dirsfirst -ChFLa 4"
alias l5="tree --dirsfirst -ChFLa 5"
alias d="du -chd 1"


wgett () {
    aria2c -x 10 -s 10 $1
}


zshaddhistory() {
    echo "${1%%$'\n'}" | cowsay | lolcat
}

# https://superuser.com/a/1520458
setopt incappendhistory
HISTSIZE=172000
SAVEHIST=172000

# https://superuser.com/a/521432
setopt share_history

# https://unix.stackexchange.com/a/625366/251889
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
