#######
# Git #
#######

alias gpo="git push origin \$(git branch --show-current) --tags"
alias ggo="git push github \$(git branch --show-current) --tags"
alias glo="git pull origin \$(git branch --show-current)"
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white)"'
alias gs="git status"
alias gmm="git fetch origin master:master && git merge master"
alias gst="git stash"
alias gsta="git stash apply"

alias g="git"
alias gc="git checkout"
alias gm="git merge"
alias gp="git pull"
alias gb="git branch"

# Recent branches I've been working on
alias gbr="git for-each-ref --sort='committerdate' --format='%(refname)%09%(committerdate)' refs/heads | sed -e 's-refs/heads/--' | column -t "

###########
# Generic #
###########

alias v='cd $VOLTUS'

alias ss='live-server'

alias gocover='go test -coverpkg=./... -coverprofile=coverage.out ./... && go tool cover -html=coverage.out && rm coverage.out'

# TODO: ??? this is here for a reason, figure it out...
alias sudo='sudo '

alias dc="docker-compose"

alias pw='pwgen -n 32'

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
