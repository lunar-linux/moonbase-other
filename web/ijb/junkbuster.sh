#!/bin/sh

case  $1 in
   start|restart)  echo   "$1ing Internet Junk Buster."
                   pkill  "^junkbuster$"
                   junkbuster /etc/junkbuster/junkbstr.ini
                   ;;
            stop)  echo   "$1ing IJB"
                   pkill  "^junkbuster$"
                   ;;
               *)  echo   "Usage: $0 {start|stop|restart}"
                   ;;
esac
