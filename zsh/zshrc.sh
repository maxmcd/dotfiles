
export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash

autoload -Uz compinit && compinit

source <(fzf --zsh)

export GOPATH="$HOME/go/"
export GITHUB=$GOPATH/src/github.com/
export MX=$GOPATH/src/github.com/maxmcd/
export VOLTUS=~/voltus

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_DEFAULT_PLATFORM=linux/amd64
export EDITOR=vim


