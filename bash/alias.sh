alias vi="vim"
alias cl="clear"
alias ll="ls -la"
alias bx="bundle exec"
alias dcb="docker-compose build"
alias dcr="docker-compose run"
alias dck="docker-compose kill"
alias tun="ssh -f -C2qTnN -D 1080 infoslack"
alias tmux="TERM=screen-256color-bce tmux"
alias lsof="lsof -D"
alias lsof-net="lsof -Pnl +M -i4"
alias labs="ssh infoslack -t tmux a"
alias vpn="/opt/openvpn/start"
alias grep="grep --colour=auto"
alias monitor_2="xrandr --output LVDS1 --auto --output VGA1 --auto --right-of LVDS1"
alias privchrome="google-chrome --user-data-dir --proxy-server=\"127.0.0.1:8118\""
alias cam='mplayer -tv driver=v4l2:device=/dev/video0 tv://'
