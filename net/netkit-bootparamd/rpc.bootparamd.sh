#!/bin/sh

case $1 in
  start|restart)  echo   "$1ing rpc.bootparamd."
                  pkill  "^rpc.bootparamd$"  &&  sleep 2
                  ps  -C  portmap  >  /dev/null  ||  portmap
                  rpc.bootparamd
                  ;;
           stop)  echo   "$1ing rpc.bootparamd."
                  pkill  "^rpc.bootparamd$"
                  ;;
              *)  echo   "Usage: $0 {start|stop|restart}"
                  ;;
esac
