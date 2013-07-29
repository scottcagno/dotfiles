# display
export DISPLAY=:0

# cursor
export PS1="\[\e[0;33m\]sc\[\e[1;34m\] in \[\e[0;34m\]\[\e[1;36m\][\w]\[\e[0;33m\]\n\\$ \[\e[0m\]"

# update the values of columns and lines if window resize
shopt -s checkwinsize

# color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# external aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# tmux -- if not running interactively, do not do anything
[[ $- != *i* ]] && return
# otherwise, start tmux on every bash login
[[ -z "$TMUX" ]] && exec tmux source-file $HOME/.tmux.conf

# golang
export GOPATH=$HOME/Code/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# general aliases
alias code='cd ~/Code'
alias py='echo "Loading iPython..."; ipython'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
