# My custom stuff

# System services
alias stats="sudo systemctl status plexmediaserver navidrome apache2 gitea jackett sonarr Lidarr"
alias restart="sudo systemctl restart $1"
alias status="sudo systemctl status"
alias checkvpn="curl --interface tun0 ipecho.net/plain && printf '\n'"

# Filesystem
alias open="sudo nano $1"
alias edit="emacs $1"
alias sedit='sudo emacs $1'
alias nano="nano -l"
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# Editing these aliases
alias aliases="emacs ~/.bash_aliases"
alias newalias="source ~/.bash_aliases"

# System information
alias connections="sudo netstat -tunlp"
alias ping='ping -c 5'
alias ports='netstat -tulanp'
alias path='echo -e ${PATH//:/\\n}'
alias free='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'

# Display logs
alias logtail="tail -n 200 /var/log/syslog"
alias radarrlog="cat /home/radarr/.config/Radarr/logs/radarr.txt"
alias sonarrlog="cat /var/lib/sonarr/logs/sonarr.txt"

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
