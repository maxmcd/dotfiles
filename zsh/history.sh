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
