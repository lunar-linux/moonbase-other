#!/bin/sh
#
# /sin/init.d/lircd.sh
#

case "$1" in
    start|restart) echo "$1ing lircd deamon."
        pkill "^lircmd$"    
        pkill "^lircd$"
        /usr/sbin/lircd --device=/dev/lirc
        /usr/sbin/lircmd
        ;;
    stop) echo "$1ing down lircd deamon."
        pkill "^lircmd$"    
        pkill "^lircd$"
        ;;
       *) echo "Usage: $0 {start|restart|stop}"
	;;
esac

