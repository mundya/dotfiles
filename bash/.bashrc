# .bashrc
if [ -t 0 ]; then
	# Source global definitions
	if [ -f /etc/bashrc ]; then
		. /etc/bashrc
	fi

	# User specific aliases and functions
	# Set the prompt to show "username@host:base directory$"
	PS1="\u@\h:\W$ "
	
	# Aliases
	alias ls='ls -l -h --color'	# Coloured 'ls'
	# alias vi='gvim'			# Replace vi with gvim
	
	# Editor Evironment Variable
	export EDITOR="vi"
	export CC="colorgcc"
	
	# Remove the history
	rm -f ~/.bash_history

	# Modify the path
	export PATH=~/bin:~/.gem/ruby/2.0.0/bin:"${PATH}"
	
	# Welcome
	# echo Welcome ${USERNAME}@${HOSTNAME}
	SVN_EDITOR=vi
fi
