




source ~/.git-completion.bash
source ~/.git-prompt.sh




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


# TODO: make linux only
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Add git completion to aliases
__git_complete g __git_main
__git_complete gc _git_checkout
__git_complete gm _git_merge
__git_complete gp _git_pull
__git_complete gb _git_branch


export VIRTUAL_ENV_DISABLE_PROMPT=1

source $HOME/.secrets

. "$HOME/.cargo/env"
