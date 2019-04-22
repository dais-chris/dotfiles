# Load base bashrc dotfile
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi

PS1='\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]'	# Set the PS1 prompt with colors
export CLICOLOR=1				# Add some color to our CLI

export EDITOR=/usr/bin/vim	# Set vim as default editor
export PAGER=less		# Use less for pager

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoredups	# No history duplicates
export HISTSIZE=10000		# Store 10k history entries
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"	# Ignore certain commands in history
PROMPT_COMMAND='history -a'	# Apply history commands everytime prompt is shown
shopt -s histappend		# Append instead of overwriting history

# Java Environments
if [ -x "$(command -v jenv)" ]; then
	eval "$(jenv init -)";
fi

# SSH configuration
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo "Success!"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Add aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi
