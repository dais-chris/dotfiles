# Less is more
alias more='less'

# Force destructive commands to be interactive
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Spice up directory listings
alias ll='ls -lFG'
alias la='ls -alFG'
alias ls='ls -FG'

# Set default grep behavior to be case-insensitive, ignore binary files, print line numbers, search recursively, highlight matches and exclude tooling directories and specific file types
alias grep='grep -iInr --color=auto --exclude-dir=\.{git,terraform,idea} --exclude-dir={target} --exclude=\*.{json,xml} --exclude=\*.{bmp,gif,jpg,jpeg,png,raw,svg,tif,tiff}'

# Find resource hogs
alias memhogs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpuhogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

# Networking
alias lsconn='lsof -i' # show all open TCP/IP connections
alias lsock='sudo /usr/sbin/lsof -i -P' # show open sockets
alias lsocktcp='sudo /usr/sbin/lsof -nP | grep TCP' # show open TCP sockets
alias lsockudp='sudo /usr/sbin/lsof -nP | grep UDP' # show open UDP sockets
alias lsport='sudo /usr/sbin/lsof -i | grep LISTEN' # show all open ports listening
alias dnsflush='dscacheutil -flushcache' # flush DNS cache

# Brew
alias brewski='brew update && brew upgrade && brew cask upgrade && brew cleanup && brew doctor && brew cask doctor'

# Git
alias gitup='find . -mindepth 1 -maxdepth 2 -type d -execdir test -d "{}/.git" ";" -print -exec git -C {} pull \;'
