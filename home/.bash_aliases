# My custom aliases

# Filesystem
alias edit="emacs $1"
alias sedit='sudo emacs $1'
alias nano="nano -l"
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# Editing these aliases
alias aliases="emacs ~/.bash_aliases"
alias newalias="source ~/.bash_aliases"

# System administration
alias upgrade="sudo apt update && sudo apt upgrade -y"

# Safe defaults
alias rm='rm -I --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# git shortcuts
alias ga='git add'
alias gc='git commit -m'
alias gf='git fetch'
alias gd='git diff'
alias gm='git merge'
alias clone='git clone'
alias gp='git push'

# emacs - no x window
alias emacs="emacs -nw"
