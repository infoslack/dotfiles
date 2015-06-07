#!/bin/bash

# bash wrappers for docker run commands
# Original:
# https://github.com/jfrazelle/dotfiles/blob/master/.dockerfunc

#
# Helper Functions
#
dcleanup(){
  docker rm $(docker ps --filester status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

del_stopped(){
  local name=$1
  local state=$(docker inspect --format "{{.State.Running}}" $name 2>/dev/null)

  if [[ "$state" == "false" ]]; then
    docker rm $name
  fi
}

#
# Container Aliases
#
http(){
  docker run --rm -t \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --log-driver none \
    infoslack/httpie "$@"
}

tor-browser(){
  del_stopped tor-browser

  docker run -d \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix    \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    --name tor-browser \
    jess/tor-browser
}

chrome(){
  del_stopped chrome

  docker run -d \
    --cpuset-cpus 0 \
    --memory 1gb \
    --net host \
    -v /etc/localtime:/etc/localtime:ro \
    -v /dev/snd:/dev/snd --privileged \
    -v /dev/dri:/dev/dri \
    -v /tmp/.X11-unix:/tmp/ro.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $HOME/Downloads:/root/Downloads \
    -v $HOME/.chrome:/data \
    --name chrome \
    jess/chrome --user-data-dir=/data "$@"
}
