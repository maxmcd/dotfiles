
# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if test -d /home/linuxbrew/.linuxbrew; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
if test -d /opt/homebrew/; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! command -v brew &> /dev/null; then
    echo "Brew was not initialized, make sure it's installed"
fi

source $(brew --prefix)/opt/fzf/shell/completion.zsh
source $(brew --prefix)/opt/fzf/shell/key-bindings.zsh

export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export VIRTUAL_ENV_DISABLE_PROMPT=1
source $HOME/.venv/bin/activate