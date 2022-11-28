

# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

f# Fly.io
PATH="$HOME/.fly/bin:$PATH"

source ~/.git-completion.bash
source ~/.git-prompt.sh

# init brew
eval "$($HOME/.linuxbrew/bin/brew shellenv)"

# https://github.com/junegunn/fzf/issues/1812#issuecomment-573329933
source $(brew --prefix fzf)/shell/key-bindings.bash
source $(brew --prefix fzf)/shell/completion.bash

export GOPATH="$HOME/go/"
export GITHUB=$GOPATH/src/github.com/
export MX=$GOPATH/src/github.com/maxmcd/
export VOLTUS=~/voltus
export GO111MODULE=auto
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

export PATH=$PATH:$VOLTUS/bin
export PATH=$PATH:$GOPATH/bin


POWDER_BLUE=$(tput setaf 153)
WEIRD_BLUE=$(tput setaf 31)
WHITE=$(tput setaf 15)
NPROC=$(nproc)
PS1="\[${WEIRD_BLUE}\]\u $NPROC 👻 :\w\[${POWDER_BLUE}\] \$? \t\$(git-radar --bash --fetch)\[${WEIRD_BLUE}\]\n$ \[${WHITE}\]"


export EDITOR=vim

export HISTFILESIZE=72000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS="--height=10"


alias ss='live-server'
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white)"'
alias gocover='go test -coverpkg=./... -coverprofile=coverage.out ./... && go tool cover -html=coverage.out && rm coverage.out'
alias gbr="git for-each-ref --sort='committerdate' --format='%(refname)%09%(committerdate)' refs/heads | sed -e 's-refs/heads/--' | column -t "
alias pt=papertrail
alias sudo='sudo '


alias f='cd $(find $GITHUB -maxdepth 2 -type d | fzf || echo ".")'
alias m='cd $(find $VOLTUS -name Makefile -printf "%h\n" | fzf || echo ".")'
alias br="git checkout \$(gbr | tail -n 100 | awk '{ print \$1 }' | fzf || echo \"\")"

alias v='cd $VOLTUS'

alias pw='pwgen -n 32'

alias gpo="git push origin \$(__git_ps1 '%s') --tags"
alias ggo="git push github \$(__git_ps1 '%s') --tags"
alias glo="git pull origin \$(__git_ps1 '%s')"
alias gs="git status"
alias gmm="git fetch origin main:main && git merge main --no-edit"
alias gst="git stash"
alias gsta="git stash apply"
alias dc="docker-compose"
alias k="kubectl"

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Add git completion to aliases
__git_complete g __git_main
__git_complete gc _git_checkout
__git_complete gm _git_merge
__git_complete gp _git_pull
__git_complete gb _git_branch


alias g="git"
alias gc="git checkout"
alias gm="git merge"
alias gp="git pull"
alias gb="git branch"
alias gca="git commit --amend --no-edit"
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

gum () {
    git add -u
    git commit -m "$1"
    gpo
}

ggb() { git grep -n "$1" | while IFS=: read i j k; do git blame -f -L $j,$j $i; done }

export VIRTUAL_ENV_DISABLE_PROMPT=1

source $HOME/.secrets

. "$HOME/.cargo/env"
