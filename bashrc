# Load base bashrc dotfile
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi

# Set the PS1 prompt (with colors)
PS1='\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]'

# Add some color to our CLI
export CLICOLOR=1

# Set the default editor
export EDITOR=/usr/bin/vim

# Avoid successive duplicates in command history
export HISTCONTROL=ignoredups

# Use less as pager
export PAGER=less

# Append instead of overwriting commands to the command history file (~/.bash_history)
shopt -s histappend

# Append commands to history everytime prompt is shown instead of after closing session
PROMPT_COMMAND='history -a'

# Java Environments
if [ -x "$(command -v jenv)" ]; then
	eval "$(jenv init -)";
fi

# Add aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi
