# display
export DISPLAY=:0

# cursor
export PS1="\[\e[0;33m\]sac::\H\[\e[1;34m\] in \[\e[0;34m\]\[\e[1;36m\][\w]\[\e[0;33m\]\n\\$ \[\e[0m\]"

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

# TMUX
#if [[ "$TERM" != "screen-256color" ]]; then
#    tmux attach-session -t "$USER" || tmux new-session -s "$USER"
#    exit
#fi

# TMUX OLD
#if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    #test -z "$TMUX" && (tmux attach -t muxer || tmux -f $HOME/.tmux.conf)
#fi

# c library linkers
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# golang
export GOPATH=$HOME/code/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# general aliases
alias bashdev='tmux -f ~/.tmux-dev.conf attach'
alias install_java6='sudo add-apt-repository ppa:webupd8team/java; sudo apt-get update;sudo apt-get -y install oracle-java6-installer; sudo apt-get autoremove;'
alias install_java7='sudo add-apt-repository ppa:webupd8team/java; sudo apt-get update;sudo apt-get -y install oracle-java7-installer; sudo apt-get autoremove;'
alias install_java8='sudo add-apt-repository ppa:webupd8team/java; sudo apt-get update;sudo apt-get -y install oracle-java8-installer; sudo apt-get autoremove;'
alias java6='sudo apt-get -y install oracle-java6-set-default'
alias java7='sudo apt-get -y install oracle-java7-set-default'
alias java8='sudo apt-get -y install oracle-java8-set-default'
alias code='cd ~/code'
alias getjava='cd ~/code/java'
alias getpython='cd ~/code/python'
alias getgo='cd ~/code/go/src'
alias py='echo "Loading iPython..."; ipython'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.url2pathname(sys.argv[1])"'
alias notify='python -c "import sys, pynotify as n; n.init(\"n\"); ns=n.Notification(\"\",\"\"); ns.update(str(sys.argv[1]), str(sys.argv[2])); ns.show()"'
alias irc='irssi -c irc.freenode.com -p 6667 -n dono -w d10No335'
alias starwars='telnet towel.blinkenlights.nl'
alias athena='ssh root@66.216.156.221 -p 6996'
alias athena.local='ssh root@192.168.0.15'
alias chrome='chromium-browser'
alias github='chromium-browser github.com/scottcagno'
alias google='chromium-browser google.com'
alias gopkg='chromium-browser golang.org/pkg/'
alias gosrc='chromium-browser golang.org/src/pkg/'
export PASS="envnei9049"
