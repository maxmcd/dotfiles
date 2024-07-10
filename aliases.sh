#######
# Git #
#######

alias gpo="git push origin \$(git branch --show-current) --tags"
alias ggo="git push github \$(git branch --show-current) --tags"
alias glo="git pull origin \$(git branch --show-current)"
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white)"'
alias gmm="git fetch origin main:main && git merge main"

# Recent branches I've been working on
alias gbr="git for-each-ref --sort='committerdate' --format='%(refname)%09%(committerdate)' refs/heads | sed -e 's-refs/heads/--' | column -t "

alias gca="git commit --amend --no-edit"

gum () {
    git add -u
    git commit -m "$1"
    gpo
}

alias br="git checkout \$(gbr | awk '{ print \$1 }' | tac | fzf  || echo \"\")"
alias ga="git add \$(git status --porcelain | sed s/^...// | fzf  || echo \"\")"

alias gds="git diff --staged"
alias gs="git status"
alias gst="git stash"
alias gsta="git stash apply"

alias g="git"
alias gc="git checkout"
alias gm="git merge"
alias gp="git pull"
alias gb="git branch"

###########
# Generic #
###########

alias ss='live-server'

alias gocover='go test -coverpkg=./... -coverprofile=coverage.out ./... && go tool cover -html=coverage.out && rm coverage.out'

alias sudo='sudo '

alias dc="docker-compose"

alias pw='pwgen -n 32'

wgett () {
    aria2c -x 10 -s 10 $1
}

################
# Fs discovery #
################


# don't forget about ncdu as well

alias ll="ls -lahp"
alias l="tree --dirsfirst -ChFLa 1"
alias l2="tree --dirsfirst -ChFLa 2"
alias l3="tree --dirsfirst -ChFLa 3"
alias l4="tree --dirsfirst -ChFLa 4"
alias l5="tree --dirsfirst -ChFLa 5"
alias d="du -chd 1"


alias f='cd $(find $(go env GOPATH)/src/ -maxdepth 3 -type d | fzf || echo ".")'
