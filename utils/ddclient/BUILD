(

  cp  ddclient  /usr/sbin &&
  if [ ! -x /etc/ddclient ]; then
   mkdir /etc/ddclient
  fi
  if [ ! -e /etc/ddclient/ddclient.conf ]; then
   cp  sample-etc_ddclient.conf /etc/ddclient/ddclient.conf
  fi
  if [ -e /etc/ddclient.conf ]; then
   echo "/etc/ddclient.conf has moved to /etc/ddclient/ddclient.conf. Please move your existing ddclient.conf."
  fi

) > $C_FIFO 2>&1 

