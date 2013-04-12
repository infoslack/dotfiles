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

# System PATH
export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/ruby/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export GEM_HOME="/opt/local/ruby/gems"
export GEM_PATH="/opt/local/ruby/gems"

# Colors
export BLUE="\[\033[0;34m\]"
export NO_COLOR="\[\e[0m\]"
export GRAY="\[\033[6;32;1m\]"
export GREEN="\[\033[0;32m\]"
export LIGHT_GRAY="\[\033[0;37m\]"
export LIGHT_GREEN="\[\033[1;32m\]"
export LIGHT_RED="\[\033[1;31m\]"
export RED="\[\033[0;31m\]"
export WHITE="\[\033[1;37m\]"
export YELLOW="\[\033[0;34;1m\]"

# Text editor for crontab
if [ ! "/usr/bin/crontab" = "0" ]; then
  export VISUAL="vim"
fi

# Append any additional sh scripts found in /etc/profile.d/ [Slackware Linux]:
for profile_script in /etc/profile.d/*.sh ; do
  if [ -x $profile_script ]; then
    . $profile_script
  fi
done
unset profile_script
