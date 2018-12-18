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

# Highlight grep matches and exclude .git directories
alias grep='grep --color=auto --exclude-dir=\.git --exclude-dir=\.svn --exlude-dir=\.terraform'

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
alias brewski='brew update && brew upgrade && brew cleanup && brew doctor'

# Git
alias gitup='find . -mindepth 1 -maxdepth 2 -type d -print -exec git -C {} pull \;'
