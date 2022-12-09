
fpath=(~/.zsh $fpath)
setopt PROMPT_SUBST
NEWLINE=$'\n'
POWDER_BLUE=$(tput setaf 153)
WEIRD_BLUE=$(tput setaf 31)
export PROMPT="${WEIRD_BLUE}%n 👻 :%~ ${POWDER_BLUE}\$(git-radar --zsh --fetch) %(?..%? ) ${NEWLINE}$ %f"
