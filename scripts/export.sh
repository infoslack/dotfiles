# Set values for history
export HISTFILE=~/.bash_history
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="ignoredups"

# Set the values for some environment variables:
export MINICOM="-c on"
export MANPATH=/usr/local/man:/usr/man
export HOSTNAME="`cat /etc/HOSTNAME`"
export LESSOPEN="|lesspipe.sh %s"
export LESS="-M"
export EDITOR="vim"

# System PATH
export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/ruby/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export GEM_HOME="/opt/local/ruby/gems"
export GEM_PATH="/opt/local/ruby/gems"
export GOROOT=/opt/go
export GOPATH=$GOROOT/_go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Text editor for crontab
if [ ! "/usr/bin/crontab" = "0" ]; then
  export VISUAL="vim"
fi
