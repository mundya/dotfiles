# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -t 0 ]; then
    # Set the prompt
    export PS1="\[\e[1;34m\]\u@\h\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \$ "

    # Remove the history
    rm -f ~/.bash_history
fi

### ls {{{
alias ls='ls -hF --color=auto'    # Coloured 'ls'
alias ll='ls -l'
### }}}

### vi {{{
alias vi='vim'
### }}}
	
export EDITOR="vi"
# export CC="colorgcc"
export SVN_EDITOR="vi"
