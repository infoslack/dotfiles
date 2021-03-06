# General
alias vi="vim"
alias cl="clear"
alias ll="ls -la"
alias tun="ssh -f -C2qTnN -D 1080 infoslack"
alias tmux="TERM=screen-256color-bce tmux"
alias lsof-net="lsof -Pnl +M -i4"
alias labs="ssh infoslack -t tmux a"
alias vpn="/opt/openvpn/start"
alias grep="grep --colour=auto"
alias monitor_2="xrandr --output LVDS1 --auto --output VGA1 --auto --right-of LVDS1"
alias cam='mplayer -tv driver=v4l2:device=/dev/video0 tv://'
alias wserver="python -m SimpleHTTPServer 8080"

# Shortcuts
alias h="history"
alias dl="cd ~/Downloads"
alias ..="cd .."
alias ...="cd ../.."
alias -- -="cd -"
