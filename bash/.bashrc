# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -t 0 ]; then
    # Set the prompt
    export PS1="\[\e[1;34m\]\u@\h\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \$ "
fi

### Remove *.pyc files
function pycrm {
    find . -regex ".+\.pyc$" -delete
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
if [[ `uname -r` =~ "ARCH" ]];
then
    ### Arch Linux
    ### Python {{{
    # Make Python point to Python2 like most OSs
    alias python="python2"
    alias ipython="ipython2"
    ### }}}
fi

# Ruby
if [ -d ~/.gem/ruby/2.0.0/bin ]; then
    export PATH=$PATH:~/.gem/ruby/2.0.0/bin
fi
	
export EDITOR="vi"
# export CC="colorgcc"
export SVN_EDITOR="vi"
