# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -t 0 ]; then
    # Set the prompt
    export PS1="\[\e[1;34m\]\u@\h\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \$ "
    export PROMPT_DIRTRIM=2
fi

### Remove *.pyc files
function pycrm {
    find . -regex ".+\.pyc$" -delete
}

### NST Devices
function nstterm {
    python -m serial.tools.miniterm --dtr=1 --rts=1 -b 4000000 --rtscts -p /dev/tty$1 -e
}

### ls {{{
alias ls='ls -hF --color=auto'    # Coloured 'ls'
alias ll='ls -l'
### }}}

### vi {{{
alias vi='vim'
### }}}

### path {{{
export PATH=$PATH:~/bin/
### }}}

### Operating system specific modifications
# if [[ `uname -r` =~ "ARCH" ]];
# then
    ### Arch Linux
# fi

# Ruby
if [ -d ~/.gem/ruby/2.1.0/bin ]; then
    export PATH=$PATH:~/.gem/ruby/2.1.0/bin
fi
	
export EDITOR="vi"
# export CC="colorgcc"
export SVN_EDITOR="vi"
