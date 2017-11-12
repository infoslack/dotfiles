# Set values for history
export HISTFILE=~/.bash_history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL="ignoredups"

# Set the values for some environment variables:
export EDITOR="vim"

# System PATH
export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/ruby/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Text editor for crontab
if [ ! "/usr/bin/crontab" = "0" ]; then
  export VISUAL="vim"
fi
